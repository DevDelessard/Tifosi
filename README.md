# Projet Tifosi - Base de données MySQL

Ce projet contient les scripts SQL pour gérer la base de données du restaurant Tifosi.
# Projet Tifosi - Base de données MySQL

Ce projet contient les scripts SQL pour gérer la base de données du restaurant Tifosi.

## Contenu
- `scripts/create_tables.sql` : Script pour créer les tables et leurs relations.
- `scripts/insert_data.sql` : Script pour insérer les données tests.
- `scripts/backup_tifosi.sql` : Sauvegarde complète de la base.

## Instructions
### 1. Créer la base de données
1. Connectez-vous à MySQL :
   mysql -u tifosi -p --socket=/opt/lampp/var/mysql/mysql.sock
2. Créez la base de données :
   CREATE DATABASE tifosi;

### 2. Importer les scripts
- Créez les tables :
  mysql -u tifosi -p --socket=/opt/lampp/var/mysql/mysql.sock tifosi < scripts/create_tables.sql
- Insérez les données :
  mysql -u tifosi -p --socket=/opt/lampp/var/mysql/mysql.sock tifosi < scripts/insert_data.sql

### 3. Sauvegarder et restaurer la base
- Sauvegarder :
  mysqldump -u tifosi -p --socket=/opt/lampp/var/mysql/mysql.sock tifosi > scripts/backup_tifosi.sql
- Restaurer :
  mysql -u tifosi -p --socket=/opt/lampp/var/mysql/mysql.sock tifosi < scripts/backup_tifosi.sql


