# Ansible Twittix preprod

## Objectifs
- Créer et gérer des machines virtuelles ou physiques à l'aide d'Ansible.
- Automatiser le déploiement des services et des configurations nécessaires.
- Centraliser la gestion de l'infrastructure dans un seul projet.

## Structure du projet
```
ansible/
├── inventory/       # Emplacement de tous les fichiers d'inventaire
├── playbooks/       # Playbooks pour la configuration des services
├── roles/           # Rôles pour la gestion des services et des configurations
├── ansible.cfg      # Configuration de base de Ansible
├── inventory.yml    # Fichier d'inventaire des hôtes
├── README.md        # Ce fichier
└── requirements.txt # Listes des dépendances python nécessaires au projet
```

## Prérequis
- Ansible installé.
- Accès aux machines à gérer (locaux ou distants).
- Clé SSH configurée pour les machines distantes, si applicable.
- Modifier l'emplacement de sa clé SSH dans le fichier de configuration `ansible.cfg`

## Utilisation
Pour cette exemple d'utilisation, il faut se positionner à la racine du projet.
```
ansible-playbook playbooks/setup-deb/playbook.yml
```