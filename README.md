# Proyecto _cicd-librerias_

Este proyecto representa un ejemplo y template de una cadena CI/CD contruida con la idea de simplificar el stack
de productos requeridos, su instalación y, sobre todo, la preparación de pipelines y jobs para los circuitos más
habituales.

Esta primera versión se limita a las etapas correspondientes a CI (hasta el deploy a los registries de artefactos e imagenes docker), 
y al gestor de proyectos maven sobre proyectos java/SpringBoot o similares. Partiendo de este template es muy sencillo
agregar las configuraciones correspondientes a otros entornos, tales como node.js, python, JS, Angular, etc.

En versiones posteriores está previsto incluir los jobs correspondientes a CD, concretamente para Terraform,
Helm/Kubernetes y Ansible.
 
# Versiones


    Vers   Por Fecha      Notas
    ------ --- ---------- ----------------------------------------------------------------------
    1.0.0  FNG 28/07/2022 Primera versión CI para maven/java

## 1. Introducción

Los stacks CI/CD más habituales están compuestos de varios productos, especializados cada uno de ellos en un aspecto concreto
de la cadena o pipeline de la solución final. Es muy frecuente encontrar stacks que incluyen 5 o más
productos diferentes: Gitlab, Jenkins, Sonar, Nexus, Vault, Octopus, etc.

Es evidente que instalar (y sobre todo configurar) muchos productos heterogéneos no es un trabajo trivial. Algunos vendors
permiten simplificar esta tarea mediante soluciones previamente integradas (véase el caso de RedHat OpenShift, los servicios
CI/CD de Amazon Web Services, etc.) aunque, lógicamente, no se trata de simples black-boxes, puesto que cada organización
tiene sus propios requisitos de CI/CD. No es lo mismo un pequeño ISV que una gran Entidad Financiera.

Por otra parte, los coordinadores de circuitos tipo Jenkins se configuran mediante un lenguaje de
programación que, aunque sencillo, requiere que los ingenieros de DevOps tengan ciertos conocimientos de
programación y estén familiarizados con el lenguaje en cuestión. Si, además (y es lo habitual) el código debe
mantenerse como read-only para los 'developers', y debe ser modular (empleando
librerías), la curva de aprendizaje suele ser costosa.

En este proyecto se ha intentado minimizar a) el número de productos implicados y b) la complejidad de la definición de
pipelines, todo ello en en base al empleo de las capacidades CI/CD que Gitlab ofrece en sus últimas versiones.



