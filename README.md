# README

## Installation

Pour installer et exécuter ce projet localement sur votre machine, suivez les étapes ci-dessous :

## Prérequis

Avant de commencer l'installation de ce projet, assurez-vous que vous avez les versions suivantes installées sur votre système :

- Ruby version 3.2.2
- Rails version 7.0.7

### Étape 1 : Cloner le dépôt

Commencez par cloner le dépôt GitHub sur votre machine locale en utilisant la commande suivante dans votre terminal :

```bash
git clone https://github.com/seifeddinhaj/EnVoitureSimoneTest
```

### Étape 2 : Installer les dépendances

```bash
cd EnVoitureSimoneTest
bundle install
```

### Étape 3 : Configurer la base de données

```bash
rails db:setup
```

### Étape 4 : Lancer le serveur

```bash
rails s
```

## Routes

Nous disposons d'une route pour afficher tous les prix des pommes de terre d'une date donnée passée en paramètre.

```bash
http://localhost:3000/potato_prices?date=2022-08-23
```

On a une autre route pour calculer le potentiel de gain maximal d'une date donnée passée en paramètre

```bash
http://localhost:3000/potato_prices/best_gain?date=2022-08-23
```

## Données de test

J'ai généré des enregistrements minutieux pour l'intégralité du 22 août 2022, ajoutant un enregistrement à chaque minute de cette journée. En outre, conformément aux directives de l'énoncé du test, j'ai également créé des enregistrements supplémentaires pour la journée du 23 août 2022.
