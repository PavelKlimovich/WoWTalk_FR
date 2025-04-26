# WoWTalk FR - Addon WoW Classic

**WoWTalk FR** est un addon World of Warcraft Classic qui traduit automatiquement les messages du chat en français, tout en gérant les fautes de frappe grâce à une recherche de mots similaires.  
Il est léger, rapide et totalement personnalisable.

---

## ✨ Fonctionnalités principales

- Traduction automatique du chat (Guild, Party, Say, Yell, Whisper)
- Gestion des fautes d'orthographe (correction approximative)
- Fenêtre dédiée pour voir l'original + la traduction
- Couleur différente pour mots traduits (vert) et mots non traduits (blanc)
- Bouton flottant pour ouvrir rapidement l'interface
- Architecture organisée (Dictionaries séparés)

---

## 🛠️ Installation

1. Téléchargez l'archive de l'addon (ou clonez ce dépôt GitHub).
2. Copiez le dossier **WoWTalk_FR** dans : Interface/AddOns/
3. Redémarrez votre jeu **(ou faites un `/reload`)**.
4. Activez **WoWTalk FR** dans le menu AddOns en jeu.

---

## 🚀 Utilisation

- Cliquez sur le bouton **CT Viewer** en haut à gauche de votre écran pour ouvrir la fenêtre de traduction.
- Ou utilisez la commande : **/ctviewer**
- Dans la fenêtre vous verrez le message original du chat et juste en dessous, sa traduction en français.

Les mots traduits apparaissent en **vert**, les mots inconnus restent en **blanc**.

---

## 🧩 Ajouter de nouveaux mots

Les dictionnaires sont organisés dans : WoWTalk_FR/Dictionaries/
- Chaque fichier (`dictionary_combat.lua`, `dictionary_commerce.lua`, etc.) contient un groupe de mots.
- Pour ajouter un mot :
  
  Ouvrez le fichier approprié et ajoutez une ligne comme ceci :
  
  ```lua
  ["mot_anglais"] = "traduction_francaise",
  ```

### Exemple :
  ```lua
 ["buff"] = "amélioration",
 ["wipe"] = "échec total",
  ```

Sauvegardez, faites un **/reload** en jeu, c'est prêt !
