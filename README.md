# Flutter Supabase Authentication

Ce projet est une application Flutter qui utilise Supabase pour gérer l'authentification des utilisateurs. L'application propose des fonctionnalités d'inscription, de connexion et de profil utilisateur.

## Prérequis

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Un compte Supabase: [Créer un compte](https://supabase.io/)

## Configuration

1. **Clonez ce dépôt sur votre machine locale :**

   ```bash
   git clone https://github.com/votre-utilisateur/votre-repo.git
   cd votre-repo
   ```

2. **Installez les dépendances Flutter :**

   ```bash
   flutter pub get
   ```

3. **Configurer Supabase :**

    - Créez un projet sur [Supabase](https://supabase.io/).
    - Obtenez votre `url` et `anonKey` de votre projet Supabase.

4. **Configurer le fichier `.env` :**

    - Dupliquez le fichier `sample.env` et renommez-le en `.env`.
    - Ouvrez le fichier `.env` et remplacez les valeurs par vos propres informations Supabase :

      ```plaintext
      SUPABASE_URL=your-supabase-url
      SUPABASE_ANON_KEY=your-supabase-anon-key
      ```

   **Note :** Ne partagez pas votre fichier `.env` et assurez-vous qu'il est listé dans votre `.gitignore`.

## Lancer l'application

Pour lancer l'application sur un simulateur ou un appareil physique, utilisez la commande suivante :

```bash
flutter run
```

## Structure du projet

- `lib/main.dart`: Point d'entrée principal de l'application.
- `lib/Services/Supabase-Auth.dart`: Service pour gérer l'authentification avec Supabase.
- `lib/Ui/Widgets/AuthRegister.dart`: Widget pour l'inscription des utilisateurs.
- `lib/Ui/Widgets/AuthSignIn.dart`: Widget pour la connexion des utilisateurs.
- `lib/Ui/Widgets/AuthProfile.dart`: Widget pour afficher le profil utilisateur.

## Fonctionnalités

- **Inscription**: Permet aux utilisateurs de créer un compte.
- **Connexion**: Permet aux utilisateurs de se connecter à leur compte.
- **Profil**: Affiche les informations du profil utilisateur.

## Contribution

Les contributions sont les bienvenues ! Veuillez soumettre un pull request pour toute amélioration ou correction de bug.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
