# 🧠 Modèle LLM simple et personnalisé avec Ollama

## 1. 🎯 Objectif
Installer Ollama sur Linux, télécharger un modèle LLM, créer un modèle personnalisé via un Modelfile, puis tester son comportement en local.

### ⚠️ Attention 
Vérifier si votre configuration est en mesure des faire tourner des modèles LLM lourds.
Dans notre cas, nous avons une petite configuration que nous avons booter au max pour exploiter son plein potentiel sur des petits modèle.

## 2. 💻 Prérequis
  - Ubuntu Server 24.04 (dans le test)
  - 8 Go de RAM minimum recommandés
  - Accès internet pour télécharger le modèle
  - Terminal avec droits sudo

## 3. Installation de Ollama
Il faut d'abord faire la mise à jour du système.
````bash
sudo apt update && sudo apt upgrade
````
Une fois fait nous pouvons procéder au téléchargement et à l'installation :
````bash
curl -fsSL https://ollama.com/install.sh | sh
````
Vérifier la version que vous possédez :
````bash
ollama --version
````

## 3. 🤖 Télécharger un modèle 
Pour le test nous allons utilisé modèle léger qui est llama 3.2 qui fait 2GB.
````bash
ollama pull llama3.2:latest
````
Le modèle sera téléchargé et stocker localment.

Pour le lancer rapidement la commande à faire est :
````bash
ollama run llama3.2:latest
````

## 4. ⚙️ Configuration du modèle personnalisé 
Après avoir téléchargé Ollama et le modèle que nous souhaitons personnaliser nous allons passer à la configuration pour la personnalisation.

Pour la personnalisation du modèle nous devons créer un fichier qui se nomme Modelfile.
````bash
nano Modelfile
````

Dans ce fichier nous allons mettre ce qu'il doit faire.

Exemple :
````bash
FROM llama3.2
SYSTEM """
Tu réponds exclusivement en français.
Tu es un assistant factuel, clair et concis, orienté vers l'exactitude plut  tôt que la formulation.
Tu bases tes réponses uniquement sur des connaissances établies, des faits vérifiables et des sources reconnu.
Tu n'exprimes aucune opinion personnelle, aucun jugement subjectif et aucune spéculation.
Si une information ne peut pas être vérifi ou confirmée, tu dis explicitement : Je ne peux pas confirmer. 
Tu précises le type de source fiable sur laquelle repose l'information (norme, documentation officielle).
Tu évites toute affirmation trompeuse, exagéré  e ou incomplète.
Tu es autorisé à utiliser des emojis sobres et compréhensibles pour améliorer la lisibilité, sans modifier son contenus
Tu adoptes un ton compréhensif, neutre et accessible.
"""
````
Le "FROM" permet de dire le modèle qui sera utilisé par le Modelfile.

Le "SYSTEM" permet de dire les différentes intructions qui vont modifier le comportement du modèle.

## 5. 🏗️ Contruction su modèle personnalisé 


