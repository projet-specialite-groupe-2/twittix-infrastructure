Role Name
=========

`install-docker` - Ce rôle permet d'installer et de configurer Docker sur une ou plusieurs machines cibles.

Requirements
------------

- Les machines cibles doivent être basées sur un système d'exploitation compatible avec Docker (par exemple, Ubuntu, Debian, CentOS).
- L'utilisateur Ansible doit avoir les privilèges sudo sur les machines cibles.
- Une connexion SSH fonctionnelle doit être configurée.

Role Variables
--------------

Toutes les variables sont dans ```vars``` du rôle et n'ont pas besoin d'être modifiée.

Dependencies
------------

Pas de dépandances nécessaires

Example Playbook
----------------

``` yaml
- hosts: dockers
  become: true
  roles:
    - ../../roles/deb-setup
    - ../../roles/install-docker

- hosts: docker-master
  become: true
  tasks:
    - import_tasks: ../../roles/install-docker/tasks/init-swarm.yml

- hosts: docker-workers
  become: true
  vars:
    master_ip: "{{ hostvars['twittix-1'].ansible_host }}"
  tasks:
    - import_tasks: ../../roles/install-docker/tasks/join-cluster.yml
```

License
-------

BSD

Author Information
------------------

Ce rôle a été créé par Aurélien Dupuis
