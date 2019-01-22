Crea un escenario de forma automática utilizando la herramienta que prefieras: Vagrant, Terraform, Heat, etc. Este escenario incluirá dos máquinas, que llamaremos nodo1 y nodo2.

Configura apropiadamente nodo1 y nodo2 con ansible para instalar la aplicación drupal que funcione bajo drupal.example.com

- nodo1: PostgreSQL y Bind9
- nodo2: Apache con mod-php

El cliente simplemente levantará el escenario y configurará como DNS primario el de nodo1, para acceder a un drupal totalmente configurado en drupal.example.com.

###IMPORTANTE: No se considerará terminada la tarea si lo que aparece es el sistema de configuración del sitio en drupal, el sitio web tiene que estar totalmente configurado y listo para usar.

El resultado se tiene que proporcionar como un repositorio en github
