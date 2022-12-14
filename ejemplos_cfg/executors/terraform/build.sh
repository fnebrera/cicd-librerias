#!/bin/bash
# Construir imagen alpine + terraform para giltab CI/CD
# Como argumento se debe pasar la version de Terraform que queremos
docker build --build-arg VERSION=1.3.5 -t ck-terraform-executor:1.0.0 .

