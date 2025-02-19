# twittix-infrastructure
## Serveur de pré-production

### objectifs :

- S'assurer de la bonne communication entre les micro-services dans un environnement maîtrisé.
-  S'assurer du bon fonctionnement de la CI/CD
- Environnement stable pour la CI 
- effectuer des tests pour la partie CD
- Économiser des coûts GCP en économisant des requêtes
- Liberté de débogage 
- Tests des performances


### Fonctionnement de l'infrastructure 

#### Schéma de l'infrastructure :

<img src="https://github.com/user-attachments/assets/5ce790f3-6aa3-4e9f-95ff-66a9939451de" alt="twittix-preprod schéma" width="50%">


#### Fonctionnement concret :

- Github actions déploie automatiquement sur twittix 1, le master du node swarm.
- Les développeurs peuvent tester leurs fonctionnalités grâce à un tunnel SSH.

**exemple :**
Si on veut accéder au front, supposément exposé sur le port 8080 :

```bash
ssh -L 8080:localhost:8080 user@51.254.57.62 
```

puis, en tapant dans un navigateur :

```
http://localhost:8080/
```

- Si les modifications sont validées, on peut alors mettre en prod, en déployant ou mettant à jour l'infrastructure GCP avec Terraform.
