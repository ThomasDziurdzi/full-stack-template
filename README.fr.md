*[Read in English](README.md)*

# Projet Full-Stack : React + Vite / Express

Bienvenue dans ce projet full-stack utilisant **React** avec **Vite** pour le frontend et **Express** pour le backend. Ce README fournit toutes les informations nécessaires pour installer, configurer et exécuter le projet.

## 📋 Table des matières

1.  [Prérequis](#prérequis)
2.  [Installation](#installation)
3.  [Initialisation du projet](#initialisation-du-projet)
4.  [Exécution du projet](#exécution-du-projet)
5.  [Structure du projet](#structure-du-projet)
6.  [Technologies utilisées](#technologies-utilisées)
7.  [Contribution](#contribution)
8.  [Licence](#licence)

## Prérequis

Avant de commencer, assurez-vous d'avoir installé les éléments suivants :

-   [Node.js](https://nodejs.org/) (v18 ou supérieure)
-   [npm](https://www.npmjs.com/)

## Installation

Clonez le dépôt et installez les dépendances pour le frontend et le backend :

```bash
# Clonez le dépôt
git clone https://github.com/votre-nom-utilisateur/votre-projet.git
cd votre-projet
```

## Initialisation du projet

Après avoir cloné le dépôt, vous devez exécuter le script d'initialisation pour configurer le projet selon vos besoins.

Vous avez la possibilité de choisir :

-   **Client uniquement** : Utiliser uniquement le frontend (React + Vite).
-   **Serveur uniquement** : Utiliser uniquement le backend (Express).
-   **Les deux** : Utiliser à la fois le frontend et le backend.

### Exécution du script d'initialisation

#### Option 1 : Utiliser le script Bash (utilisateurs macOS/Linux)

```bash
./init.sh
```

Si vous rencontrez une erreur "Permission refusée", vous devrez peut-être rendre le script exécutable. Exécutez la commande suivante pour accorder les permissions d'exécution :

```bash
chmod +x init.sh
```

#### Option 2 : Utiliser le script Batch (utilisateurs Windows)

```batch
init.bat
```

Suivez les instructions à l'écran pour sélectionner l'option qui convient à votre projet.

## 🏃 Exécution du projet

**Note** : La commande `npm install` a déjà été exécutée pendant le script d'initialisation. Si vous **n'avez pas** exécuté le script d'initialisation ou si vous avez rencontré des problèmes, vous pouvez suivre les instructions ci-dessous pour installer manuellement les dépendances et exécuter le projet.

#### Installer les dépendances (si ce n'est pas déjà fait)

```bash
# Installer les dépendances racine (Biome)
npm install

# Installer les dépendances pour le frontend
cd client
npm install

# Installer les dépendances pour le backend
cd ../server
npm install
```

#### Exécuter le projet

Ouvrez deux terminaux :

1.  **Terminal 1** : Exécuter le backend
    
```bash
cd server
npm run start
```
    
2.  **Terminal 2** : Exécuter le frontend
    
```bash
cd client
npm run dev 
```

-   Le frontend devrait être accessible à l'adresse `http://localhost:3000`.
-   Le backend devrait être accessible à l'adresse `http://localhost:3310` ou `http://localhost:5000`.

## Structure du projet

Selon votre choix d'initialisation, la structure du projet variera.

### Client uniquement ou Serveur uniquement

Les fichiers du projet sont situés à la racine :

#### Pour **Client uniquement**

```bash
votre-projet/
├── src/
│   ├── App.jsx         # Composant React principal
│   ├── components/     # Composants de l'application
│   ├── pages/          # Pages de l'application
│   ├── styles/         # Styles de l'application
├── package.json        # Dépendances frontend
├── .env                # Variables d'environnement
├── README.md           # Documentation du projet
└── .gitignore          # Fichiers ignorés par Git
```

#### Pour **Serveur uniquement**

```bash
votre-projet/
├── src/
│   ├── app.js          # Point d'entrée du backend
│   ├── routes/         # Définitions des routes API
│   ├── controllers/    # Contrôleurs de logique métier
│   └── models/         # Modèles de données
├── package.json        # Dépendances backend
├── .env                # Variables d'environnement
├── README.md           # Documentation du projet
└── .gitignore          # Fichiers ignorés par Git
```

### Client et Serveur

```bash
votre-projet/
├── client/                # Application React
│   ├── src/
│   │   ├── App.jsx        # Composant React principal
│   │   ├── components/    # Composants de l'application
│   │   ├── pages/         # Pages de l'application
│   │   ├── styles/        # Styles de l'application
│   ├── package.json       # Dépendances frontend
│   └── .env               # Variables d'environnement frontend
│
├── server/                # API backend utilisant Express
│   ├── src/
│   │   ├── app.js         # Point d'entrée du backend
│   │   ├── routes/        # Définitions des routes API
│   │   ├── controllers/   # Contrôleurs de logique métier
│   │   └── models/        # Modèles de données
│   ├── package.json       # Dépendances backend
│   └── .env               # Variables d'environnement backend
│
├── init.sh                # Script d'initialisation pour macOS/Linux
├── init.bat               # Script d'initialisation pour Windows
├── README.md              # Documentation du projet
└── .gitignore             # Fichiers ignorés par Git
```

## Technologies utilisées

-   **Frontend** : React, Vite
-   **Backend** : Express, Node.js
-   **Base de données** : SQLite (utilisant `sqlite3`)
-   **Autres** :
    -   **dotenv** : Pour gérer les variables d'environnement.
    -   **cors** : Pour gérer le partage des ressources entre origines multiples.
    -   **Nodemon** : Pour le rechargement à chaud pendant le développement.
    -   **Biome** : Pour le formatage et le linting du code.

## Contribution

N'hésitez pas à utiliser ce modèle en forkant le dépôt et en l'adaptant à vos besoins.

## Licence

Ce projet est sous licence MIT. Consultez le fichier LICENSE pour plus d'informations.

-----
-----

**Notes supplémentaires** :
    
-   Assurez-vous d'avoir la version correcte de Node.js installée.
    
-   Si vous rencontrez des problèmes pendant le processus d'initialisation ou d'installation, veuillez vérifier que vous disposez des autorisations nécessaires et que votre environnement est correctement configuré.
    
-   Les scripts d'initialisation (`init.sh`, `init.bat`) sont conçus pour vous aider à configurer le projet selon vos besoins.