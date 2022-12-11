#!/bin/bash
#
# Extender particion LVM principal para ocupar todo el disco. Solo valido
# para instalaciones con LVM y con una unica particion.
#
# 1) Obtener tamaño del disco fisico
#
read nada nada TAMFIS unit nada <<< $(fdisk -l /dev/sda)
[[ ${unit:0:1} == [gG] ]] && TAMFIS=$(echo "print(${TAMFIS}*1024)" | python3)
echo "El tamaño del disco sda es ${TAMFIS} MB"
#
# 2) Obtener el nombre del volume group de LVM y tamaño de la particion
#
lvs --noheadings > trash.txt || { echo "ERROR: El sistema no es LVM"; exit 1; } 
while read part grup nada tam resto 
do
    if [[ $part == "root" ]]; then
        PARTICION="/dev/${grup}/root"
        # Quitamos la g del tamaño
        TAMLOG=${tam:0:-1}
        # Reemplazamos comas (si las hay) por puntos
        TAMLOG=${TAMLOG/,/.}
        # Unidades: ultimo caracter. Si es G, multiplicamos por 1024
        unit=${tam: -1}
        [[ $unit == [gG] ]] && TAMLOG=$(echo "print(${TAMLOG}*1024)" | python3)
	    echo "Encontrada particion principal ${part} tamaño ${TAMLOG} MB"
    elif [[ $part == "swap"* ]]; then
        TAMSWAP=${tam:0:-1}
        TAMSWAP=${TAMSWAP/,/.}
        unit=${tam: -1}
        [[ $unit == [gG] ]] && TAMSWAP=$(echo "print($TAMSWAP*1024)" | python3)
	    echo "Encontrada particion swap ${part} tamaño ${TAMSWAP} MB"
    else
        echo "ERROR: Encontrada particion adicional: ${part}. Script solo valido para particion unica. Abortamos!"
	    exit 1
    fi
done < trash.txt
rm trash.txt
# Si no la hemos encontrado, adios
[[ -z $PARTICION ]] && { echo "ERROR: No se ha encontrado la particion principal"; exit 2; }
# Verificar espacio libre
free=$(echo "print($TAMFIS - $TAMLOG - $TAMSWAP)" | python3)
# Quitar decimales
free=${free%.*}
echo "Espacio libre: $free MB"
seguir=$(echo "print($free > 102)" | python3)
[[ $seguir = "True" ]] || { echo "No se puede extender la particion"; exit 0; }
# Preguntar si quiere seguir?
read -p  "¿Extender particion ${PARTICION}? (S/N): " seguir && [[ $seguir == [sN] ]] || exit 0
#
# 3) Modificar tabla de particiones para ocupar todo el espacio
#
echo "Modificando tabla de particiones.."
fdisk /dev/sda << EoF
d
2
n
e
2


n


t
5
8e
w
EoF
#
# 3) Aumentar pv y lv
#
echo "Extendiendo volumenes LVM.."
pvresize /dev/sda5
lvextend -l +100%FREE ${PARTICION}
#
# 4) Extender el filesystem
#
echo "Extendiendo filesystem.."
resize2fs ${PARTICION}
echo "Terminado. Use df -h para verificar que todo esta ok"

