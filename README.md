# ![Logo](img/vassblue.png)&nbsp;&nbsp;&nbsp; **cicd-librerias** Project

This project represents a fully operational example of a CI/CD chain built with the idea of simplifying the DevOps stack, the installation of required products and, above all, the preparation of pipelines and jobs for the most important circuits.
It is not intended to make product comparisons and, even less, to establish a strict guideline of how to do things, as each company and/or IT department has its own rules and regulations. For this reason, the libraries are
very flexible, and can be adapted with very little work to different regulations and procedures. 

This version 1 is specifically for maven/java projects deployed as Docker stacks. Provisioning is
quite generic and is based on Terraform. For deploy, we have chosen to use bash and ssh, thinking in not too complex environments.

In later versions, it is planned to replicate part of the libraries to include projects based on phyton, node.js, .Net.core, etc. It is also planned to incorporate the possibility of using a sophisticated deployment product, such as Ansible or Octopus. Finally, work will be done on the provisioning and deployment of projects based on microservices (kubernetes, swarm, etc.).

See [user-guide.adoc](user-guide.adoc) for a complete documentation.
