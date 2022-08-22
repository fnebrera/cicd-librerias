# ![Logo](img/vassblue.png) Proyecto **cicd-librerias**

Este proyecto representa un ejemplo y template de una cadena CI/CD construida con la idea de simplificar el stack
de productos requeridos, su instalación y, sobre todo, la preparación de pipelines y jobs para los circuitos más
habituales. No se ha pretendido hacer comparativas de productos y, menos aún, establecer una guía estricta de
cómo hacer las cosas. El proyecto es, simplemente, un demostrador del "ahorro" de costes y tiempo de aprendizaje
para establecer cadenas CI/CD no demasiado complejas. 

En esta primera versión la etapa de despliegue se realiza de manera muy simple (mediante SSH), 
y se limita a proyectos maven sobre java/SpringBoot o similares. Partiendo de este template es muy sencillo
agregar las configuraciones correspondientes a otros entornos, tales como node.js, python, Angular, etc.

En versiones posteriores está previsto incluir jobs más complejos para las etapas CD, concretamente para Terraform,
Helm/Kubernetes y Ansible.

Ver [user-guide.adoc](user-guide.adoc) para una documentación más completa.
