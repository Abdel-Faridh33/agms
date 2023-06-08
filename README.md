# CVE : 2023-23163, Dockerisation de la Vulnérabilité

Ce projet vise à dockeriser une vulnérabilité spécifique en utilisant Docker. L'objectif est de créer un environnement isolé dans lequel la vulnérabilité peut être exploitée la vulnerabilité de cette application.

## Application vulnérable

Art Gallery Management System Project v1.0 - SQL Injection 


## Installation

Pour exécuter ce projet, vous devez avoir sur votre machine :

- [Docker](https://www.docker.com/)
- [Python](https://www.python.org/)
- [SQLMAP](https://sqlmap.org/)


Une fois les prérequis installé, vous pouvez cloner ce dépôt Git sur votre machine :

```bash
  git clone https://github.com/Abdel-Faridh33/agms.git

  cd agms

```

Une fois dans le répertoire, exécuter la commande si dessous pour mettre en place l'environement vulnérable:

```bash
  docker build -t agms_image .
  

```

Accéder ensuite à l'application à l'adresse http://localhost
Acceder au panneau d'administration, informations d'identification pour :
http://localhost/admin/login.php
  Nom d'utilisateur : admin
  Mot de passe : Test@123




## Vérification de la vulnérabilité

Au niveau du dashboard admin :  
  Naviguez maintenant vers "Manage ART TYPE" en cliquant sur l'option "ART TYPE" sur la barre latérale gauche.
  Cliquez maintenant sur n'importe quel bouton "Edit" du type d'art et vous serez redirigé vers la page d'édition du type d'art. 

L'exécution du script ci dessous sur une instance WordPress avec le plugin Paid Membership Pro vous indique si la cible est vulnérable. Le script générera la commande sqlmap appropriée pour exploiter la vulnérabilité

```bash
  python CVE-2023-23488.py http://localhost

```


