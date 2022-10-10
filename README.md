# ![Logo](img/vassblue.png)&nbsp;&nbsp;&nbsp; Proyecto **cicd-librerias**

Este proyecto representa un ejemplo completamente operacional de una cadena CI/CD construida con la idea de simplificar el stack
DevOps, la instalación de productos requeridos y, sobre todo, la preparación de pipelines y jobs para los circuitos más
habituales. No se ha pretendido hacer comparativas de productos y, menos aún, establecer una guía estricta de
cómo hacer las cosas, puesto que cada Compañía y/o Departamento de TI tiene su propia normativa. Por esta razón, las librerías son
muy flexibles, y puedean adaptarse con muy poco trabajo a diferentes normativas y procedimientos. 

Esta versión 1.0.1 es específica para proyectos maven/java desplegados como stacks Docker. El provisioning es
bastante genérico y se basa en Terraform. Para deploy, se ha optado por emplear bash y ssh, pensando en entornos no demasiado complejos.

En versiones posteriores está previsto replicar una parte de las librerías para incluir proyectos basados en phyton, node.js, .Net.core, etc. También está previsto incorporar la posibilidad de emplear algún producto sofisticado de deploy, tipo Ansible u Octopus. Por último, se trabajará en el provisionado y despliegue de proyectos basados en microservicios (kubernetes, swarm, etc.).

Ver [user-guide.adoc](user-guide.adoc) para una documentación más completa.
