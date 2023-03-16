# Partitions Chorale Aloes

À l'intérieur de ce dépôt, vous trouverez des partitions pour la chorale Aloes de Télecom ParisTech (ENST pour les anciens).

Les partitions sont écrites en lilypond.

La structure du dépôt est la suivante :

- Chaque morceau est dans un répertoire dédié
  - À l'intérieur de chaque répertoire, il y a les PDFs et fichier Midi associés au morceau.
  - Il y a en général un *conducteur* (*tutti*) plus une version par voix.
- le répertoire *lilypond* est un répertoire spécial : il contient les sources des différents morceaux 
  (inutile de vous en inquiéter si seuls les morceaux vous intéressent).
- le fichier *update.py* est le script pour créer et ranger les fichiers des morceaux à partir des sources
  (inutile de vous en inquiéter si seuls les morceaux vous intéressent).

Pour récupérer les fichiers, plusieurs possibilités :
- Directement sur le site
- Télécharger le fichier zip https://github.com/balouf/chorale/archive/refs/heads/main.zip
- Si vous savez utiliser git, "git clone https://github.com/balouf/chorale.git"
