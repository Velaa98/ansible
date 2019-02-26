### LAPP con ansible (Linux, Apache, PostgreSQL, PHP)

Crea un escenario de forma automática utilizando la herramienta que prefieras: Vagrant, Terraform, Heat, etc. Este escenario incluirá dos máquinas, que llamaremos nodo1 y nodo2.

Configura apropiadamente nodo1 y nodo2 con ansible para instalar la aplicación drupal que funcione bajo drupal.example.com

- nodo1: PostgreSQL y Bind9
- nodo2: Apache con mod-php

El cliente simplemente levantará el escenario y configurará como DNS primario el de nodo1, para acceder a un drupal totalmente configurado en drupal.example.com.

#### IMPORTANTE: No se considerará terminada la tarea si lo que aparece es el sistema de configuración del sitio en drupal, el sitio web tiene que estar totalmente configurado y listo para usar.

El resultado se tiene que proporcionar como un repositorio en github.

## Despliegue

Una vez dentro de drupal,para accder al panel de administración usamos el usuario y contraseña por defecto **drupal:drupal**.

### Clonación del repositorio:

```
git clone https://github.com/Velaa98/ansible.git
```

### Creación de un entorno virtual con ansible

He probado con un entorno de python3 y me ha dado problemas a la hora de ejecutar ansible, por ello uso python2.

```
apt install virtualenv python-pip
virtualenv --python=python2.7 ansible
source ansible/bin/activate
pip install ansible
```

### Despliegue de las máquinas

Una vez dentro del repositorio clonado, levantamos las máquinas con la funcionalidad de vagrant que nos permite aprovisinarlas a la vez que las creamos.

```
vagrant up --provision
```

*Nota: En esta ocacisión partimos de la aplicación drupal previamente instalada en otro entorno para coger la configuración inicial, si tenemos una copia ya hecha solo habría que reemplazarla por la proporcionada y estaría funcionando. Para una instalación limpia con ansible usar [drush](https://docs.drush.org/en/master/).*

### Configuración del anfitrión

El nodo 1 nos proporciana el dns que usaremos para acceder a la página mediante drupal.example.com, para ello:

```
echo "nameserver 10.0.0.10" >> /etc/resolv.conf
```
