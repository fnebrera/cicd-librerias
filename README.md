# Proyecto _cicd-librerias_

Este proyecto representa un ejemplo y template de una cadena CI/CD contruida con la idea de simplificar el stack
de productos requeridos, su instalación y, sobre todo, la preparación de pipelines y jobs para los circuitos más
habituales.

Esta primera versión se limita a las etapas correspondientes a CI (hasta el deploy a los registries de artefactos e imagenes docker), 
y al gestor de proyectos maven sobre proyectos java/SpringBoot o similares. Partiendo de este template es muy sencillo
agregar las configuraciones correspondientes a otros entornos, tales como node.js, python, JS, Angular, etc.

En versiones posteriores está previsto incluir los jobs correspondientes a CD, concretamente para Terraform,
Helm/Kubernetes y Ansible.

Ver *user-guide.adoc* para una documentación más completa.
