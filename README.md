# 🧙 Devoxx4Kids — Dungeon du Sorcier

![Tiny Wizard Main Image](./readme-images/tiny-wizard.png)

Bienvenue à l'atelier **Programmation de Jeux Vidéo** de [Devoxx4Kids Québec](https://www.devoxx4kids.org/quebec/) !

Tu vas explorer un vrai jeu vidéo, comprendre comment il fonctionne, et l'améliorer toi-même. 
À la fin de la session, tu pourras le présenter à tes parents !

---

## 📚 Avant de commencer

### 🕹️ Les moteurs de jeu dans l'industrie

Pour créer un jeu vidéo, les développeurs utilisent des **moteurs de jeu** : des outils qui s'occupent des choses compliquées (afficher les graphismes, gérer la physique, lire les sons…) pour que toi tu puisses te concentrer sur ce qui rend ton jeu unique.

Il en existe plusieurs, chacun avec ses forces. Voici les plus connus :

| Moteur | Utilisé pour | Pourquoi on le choisit |
|--------|-------------|------------------------|
| [**Unity**](https://unity.com/) | Hollow Knight, Cuphead, Among Us | Très populaire, énorme communauté, compatible avec presque toutes les plateformes. Idéal pour les studios indépendants. |
| [**Unreal Engine**](https://www.unrealengine.com/) | Fortnite, Valorant, Hogwarts Legacy | Graphismes ultra-réalistes. Utilisé par les grands studios AAA (gros budgets). |
| [**Godot**](https://godotengine.org/) | Cassette Beasts, Sonic Colors Ultimate | Gratuit, Open Source, léger, facile à apprendre. Parfait pour débuter et pour les jeux indépendants. |
| [**GameMaker**](https://gamemaker.io/) | Undertale, Hotline Miami, Stardew Valley | Simple à prendre en main, très apprécié pour les jeux 2D. |
| [**RPG Maker**](https://www.rpgmakerweb.com/) | Omori, Yume Nikki | Spécialisé dans les RPG (jeux de rôle). Peu ou pas de programmation requise. |

> 💡 **Lequel choisir ?** Ça dépend du projet ! Pour débuter, **Godot** et **GameMaker** sont excellents. Pour viser les gros jeux 3D professionnels, on se tourne plutôt vers **Unreal**. Dans cet atelier, on utilise **Godot** — il est gratuit, Open Source, et sa prise en main est rapide.

---

### 🌍 Ok, mais c'est quoi l'Open Source ?

Un logiciel **Open Source** (ou « code ouvert ») est un programme dont le **code source est public** : n'importe qui peut le lire, l'utiliser, le modifier et le partager.

C'est un peu comme si une recette de cuisine était écrite dans un livre ouvert à tous, au lieu d'être gardée secrète. Tu peux copier la recette, l'améliorer, et même la redistribuer !

Ce jeu est Open Source. Le moteur de jeu utilisé, **Godot**, l'est aussi. Même ce fichier README que tu lis est public ! 🎉

> **Exemples célèbres d'Open Source :** Linux (le système d'exploitation de millions de serveurs), Firefox (le navigateur), Blender (logiciel 3D), et… Godot !

### 🎮 Découvrons Godot !

[**Godot Engine**](https://godotengine.org/) est un **moteur de jeu vidéo** gratuit et Open Source. Un moteur de jeu, c'est un outil qui te fournit tout ce dont tu as besoin pour créer un jeu : afficher des images, jouer des sons, détecter les collisions, gérer les entrées du clavier, etc.

Il est utilisé par des milliers de développeurs dans le monde, des amateurs comme des professionnels.

* 📖 [Documentation officielle de Godot (en anglais)](https://docs.godotengine.org/en/stable/)
* 📖 [Documentation officielle de Godot (en français)](https://docs.godotengine.org/fr/stable/)

### Comment fonctionne Godot ?

Godot est organisé autour de deux concepts clés : les **Scènes** et les **Scripts**.

**Les Scènes** sont les blocs de construction du jeu. Chaque personnage, chaque bouton de menu, chaque niveau est une scène. Une scène contient des **nœuds** (*nodes*) — des petites briques qu'on assemble : un nœud pour l'image, un pour le son, un pour la collision, etc.

**Les Scripts** sont les fichiers de code qu'on attache aux nœuds pour leur donner un comportement. C'est là qu'on écrit en GDScript (ou C#) pour dire à un personnage comment bouger, quand tirer, comment mourir…

L'interface de Godot se divise en 4 grandes zones :

```
┌────────────────────────────────────────────────┐
│  Barre d'outils (Play ▶, Save, etc.)           │
├───────────┬────────────────────┬───────────────┤
│           │                    │               │
│ FileSystem│   Viewport         │   Inspector   │
│ (tes      │   (ce que tu vois  │   (propriétés │
│  fichiers)│    dans le jeu)    │    du nœud)   │
│           │                    │               │
├───────────┤                    ├───────────────┤
│ Scene     │                    │               │
│ (arbre    │                    │               │
│  de nœuds)│                    │               │
├───────────┴────────────────────┴───────────────┤
│  Output / Console (messages d'erreur, print…)  │
└────────────────────────────────────────────────┘
```

* 📖 [Découvrir l'interface de Godot (en anglais)](https://docs.godotengine.org/en/stable/getting_started/introduction/first_look_at_the_editor.html)
* 📖 [Découvrir l'interface de Godot (en français)](https://docs.godotengine.org/fr/4.x/getting_started/introduction/first_look_at_the_editor.html)

### Les langages de programmation les plus connus

Un **langage de programmation** est une façon d'écrire des instructions que l'ordinateur peut comprendre. Il en existe des dizaines — chacun a été créé pour répondre à un besoin particulier.

| Langage | Utilisé pour | Ce qui le caractérise |
|---------|-------------|----------------------|
| **Python** | Science des données, IA, scripts, éducation | Très lisible, idéal pour apprendre. Beaucoup utilisé dans les écoles. |
| **JavaScript** | Sites web, applications web | Tourne dans le navigateur. Incontournable pour tout ce qui est web. |
| **C#** | Jeux Unity, applications Windows, web (ASP.NET) | Puissant et structuré. Proche du C++ mais plus accessible. |
| **C++** | Jeux AAA, systèmes, moteurs de jeu | Très rapide. Difficile à apprendre, mais utilisé dans les moteurs comme Unreal. |
| **Java** | Applications Android, logiciels d'entreprise | Populaire dans les grandes entreprises et les applis mobiles Android. |
| **GDScript** | Jeux Godot | Créé spécialement pour Godot. Inspiré de Python. Facile à prendre en main. |
| **Rust** | Systèmes, outils performants | Moderne, très sûr, de plus en plus populaire. |
| **Swift** | Applications iPhone / iPad / Mac | Langage d'Apple pour tout l'écosystème iOS/macOS. |

> 💡 **Pas besoin de tous les apprendre !** Les développeurs choisissent leur langage selon ce qu'ils veulent créer. Dans cet atelier, tu vas utiliser **GDScript** — et beaucoup de ce que tu vas apprendre s'applique aussi à Python !

### 📝 GDScript ?

**GDScript** est le langage de programmation principal de Godot. Il ressemble beaucoup à **Python** : il est facile à lire et à écrire, parfait pour les débutants !

Voici un exemple de GDScript :

```gdscript
# Ceci est un commentaire (il n'est pas exécuté)
var vitesse = 200          # On crée une variable "vitesse"

func _ready():
	print("Le jeu démarre !")  # Affiche un message au démarrage

func _process(delta):
	position.x += vitesse * delta  # Déplace l'objet vers la droite
```

* 📖 [Introduction à GDScript (en anglais)](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)
* 📖 [Introduction à GDScript (en français)](https://docs.godotengine.org/fr/stable/tutorials/scripting/gdscript/gdscript_basics.html)

---

## 🏁 Étapes de l'atelier

Suis ces étapes dans l'ordre. Demande à un animateur si tu es bloqué !

1. [X] **Installe Godot** - si ce n'est pas déjà fait - en suivant les instructions plus bas dans la section [Installation à la maison](#-installation-à-la-maison)
2. [ ] **Ouvre le projet** dans Godot ([Ouvrir le projet dans Godot](#-ouvrir-le-projet-dans-godot))
3. [ ] **Lance le jeu** et joue quelques minutes pour le comprendre ([Coment Jouer](#-comment-jouer))
4. [ ] **Explore le projet** : regarde les dossiers, les scènes, les scripts, poses des questions
5. [ ] **Identifie ce qui manque** dans le jeu (indice : essaie de viser avec la souris !)
6. [ ] **Complète tes défis** — suis les [20 défis](#-tes-20-défis) ci-dessous
7. [ ] **Présente ton jeu** à tes parents à la fin de la session !

### Ouvrir le projet dans Godot
Si le projet n'est pas déjà ouvert sur les ordinateurs:

1. Lance **Godot Engine**
2. Dans le **Project Manager**, clique sur **Import**
3. Navigue jusqu'au dossier du projet et sélectionne le fichier `project.godot`
4. Clique sur **Import & Edit**
5. Appuie sur **F5** (ou le bouton ▶ en haut à droite) pour lancer le jeu

---

## 🕹️ Comment jouer

### Clavier + Souris *(recommandé)*

| Action | Touche |
|--------|--------|
| Se déplacer | `W` `A` `S` `D` |
| Attaquer | Clic gauche 🖱️ |
| Pause | `Échap` |

> ⚠️ **Attention :** Pour l'instant, la visée avec la souris ne fonctionne pas encore — le sorcier tire toujours vers la droite ! **C'est l'un de tes défis de le corriger.** 🎯

### Manette (gamepad)

| Action | Bouton |
|--------|--------|
| Se déplacer | Joystick gauche |
| Viser | Joystick droit |
| Attaquer | Gâchette droite (RT) |
| Pause | Start |

---

## 🗺️ Comment le projet est organisé

```
atelier-jeu-video/
├── assets/          🎨 Images, sons, musiques
├── resources/       ⚙️  Fichiers de configuration (stats, vagues...)
│   ├── enemy_stats/     Stats de chaque ennemi (vie, vitesse, dégâts)
│   ├── player_stats/    Stats du joueur
│   └── wave_data/       Configuration des vagues d'ennemis
└── src/             💻 Le code et les scènes du jeu
	├── scenes/          Scènes Godot (personnages, UI, monde...)
	│   ├── entities/    Joueur et ennemis
	│   ├── game/        Logique principale du jeu (vagues, spawn...)
	│   ├── items/       Les potions ramassables
	│   └── ui/          Interface (menus, HUD, écran de mort)
	└── scripts/         Scripts GDScript réutilisables
		├── autoloads/   Scripts accessibles partout dans le jeu
		└── resources/   Définitions des types de ressources
```

### Les fichiers clés à connaître

| Fichier | Ce qu'il fait |
|---------|---------------|
| `resources/player_stats/player_stats.tres` | Les stats du joueur (vie, vitesse, dégâts...) |
| `resources/enemy_stats/bat_stats.tres` | Les stats d'une chauve-souris |
| `resources/wave_data/wave1_data.tres` | La configuration de la vague 1 |
| `src/scenes/entities/player/movement/player_movement.gd` | Le déplacement du joueur |
| `src/scenes/entities/player/weapon/weapon.gd` | L'arme et la visée |
| `src/scenes/entities/player/fireball/fireball.gd` | La boule de feu |
| `src/scripts/autoloads/game_data.gd` | Données globales du jeu |
| `src/scripts/autoloads/signals.gd` | Les signaux (événements) du jeu |

---

## 📖 Les bases du code

Avant de commencer les défis, voici les trois briques essentielles du code que tu vas rencontrer. Pas besoin de tout mémoriser — reviens ici si tu bloques !

---

### 📦 Les variables — stocker une information

Une **variable**, c'est une boîte avec un nom, dans laquelle tu ranges une valeur. Tu peux lire cette valeur ou la changer à tout moment.

```gdscript
var speed: int = 200        # une boîte "speed" qui contient le nombre 200
var name: String = "Merlin" # une boîte "name" qui contient du texte
```

Dans le jeu, `player_stats.speed` est une variable qui contient la vitesse du sorcier.
Si tu changes sa valeur, le sorcier va plus vite ou plus lentement.

**Le type** (`int`, `String`...) indique ce que la boîte peut contenir : un nombre entier, du texte, etc.
Tu verras aussi `float` pour les nombres à virgule (ex: `0.5`).

---

### ❓ Le if / else — prendre une décision

Le **if** permet au code de choisir quoi faire selon une condition.
S'il la condition est vraie, le bloc du `if` s'exécute. Sinon, c'est le bloc du `else`.

```gdscript
if points > 10:
	print("Tu as gagné !")
else:
	print("Pas encore...")
```

Dans le jeu, on utilise `if / else` pour viser avec le joystick OU avec la souris selon ce que le joueur utilise :

```gdscript
if right_stick_direction != Vector2.ZERO:
	current_direction = right_stick_direction  # joystick détecté → on l'utilise
else:
    current_direction = ...                    # sinon → on vise avec la souris
```

---

### 🔧 Les fonctions — regrouper du code

Une **fonction**, c'est un bloc de code qui a un nom et qu'on peut appeler quand on en a besoin.
Ça évite de répéter le même code partout.

```gdscript
func dire_bonjour() -> void:
    print("Bonjour !")

dire_bonjour()  # appelle la fonction → affiche "Bonjour !"
```

Dans Godot, certaines fonctions sont appelées automatiquement par le moteur :
- `_ready()` — s'exécute **une fois** au démarrage de la scène
- `_process(delta)` — s'exécute **à chaque image** (60 fois par seconde)

Tu les verras souvent dans le code du jeu !

---

## ⚔️ Tes 20 défis

Les défis sont regroupés par niveau de difficulté. **Commence par le groupe 1** et avance à ton rythme !

---

### 🔍 Groupe 1 — Explorateur *(Pas de code requis)*

> Dans le groupe 1, tu modifies uniquement des **fichiers de configuration** (.tres) directement dans l'éditeur Godot. Pas besoin d'écrire du code !
>
> Pour ouvrir un fichier `.tres` : double-clique dessus dans le panneau **FileSystem** (en bas à gauche). Ses propriétés s'affichent dans l'**Inspector** (à droite).

**Défi 1 — Lance le jeu et survie !**
Appuie sur **F5**. Joue quelques minutes. Essaie de survivre aux vagues d'ennemis. Combien de vagues peux-tu atteindre ?

**Défi 2 — Rends le sorcier ultra-rapide**
Ouvre `resources/player_stats/player_stats.tres` dans l'Inspector.
Change la valeur de **`Speed`** à `500`. Lance le jeu. Essaie `50`. Quelle valeur est la plus fun ?

**Défi 3 — Deviens invincible**
Dans le même fichier, change **`Hp Max`** à `9999`. Lance le jeu. Tu ne peux plus mourir !

**Défi 4 — Écrase les chauves-souris en un coup**
Ouvre `resources/enemy_stats/bat_stats.tres`.
Change **`Hp Max`** à `1`. Les chauves-souris meurent maintenant en un seul tir !

**Défi 5 — Fais exploser la vague 1**
Ouvre `resources/wave_data/wave1_data.tres`.
Dans la liste **`Sub Waves`**, clique sur le premier élément. Change **`Amount`** à `20`.
Lance le jeu — tu es envahi !

---

### ⚙️ Groupe 2 — Bidouilleur *(Fichiers de ressources)*

> Dans le groupe 2, tu continues à modifier des fichiers `.tres`, mais tu explores plus en profondeur les configurations disponibles.

**Défi 6 — Tire comme une mitrailleuse**
Dans `resources/player_stats/player_stats.tres`, change **`Attack Cooldown`** à `0.05`.
(La valeur actuelle est le temps en secondes entre chaque tir. Plus c'est petit, plus tu tires vite !)

**Défi 7 — Double tes dégâts**
Toujours dans `player_stats.tres`, cherche **`Damage Information`** et clique dessus pour l'ouvrir. Change la valeur de **`Damage`**. Essaie `50` !

**Défi 8 — Change la formation d'apparition**
Dans `resources/wave_data/wave1_data.tres`, ouvre un `SubWaveData` et change **`Pattern`** :
- `RANDOM` : les ennemis apparaissent n'importe où
- `CIRCLE` : ils apparaissent en cercle autour de toi
- `CLUSTER` : ils apparaissent en groupe

**Défi 9 — Remplace les ennemis**
Dans la même vague, change **`Enemy Type`** pour `KNIGHT` ou `SPIDER`. Lance le jeu — surprise !

**Défi 10 — Crée ton équilibre parfait**
Restore les stats du joueur à des valeurs raisonnables, mais garde les modifications de vague que tu préfères. Crée une vague 1 qui te semble fun à jouer !

---

### 📖 Groupe 3 — Lecteur de Code *(Comprendre les scripts)*

> Dans le groupe 3, tu ouvres de vrais fichiers de code GDScript (`.gd`). L'objectif est de **lire et comprendre**, puis de faire de petites modifications.
>
> Pour ouvrir un script : double-clique dessus dans le **FileSystem**. Il s'ouvre dans l'éditeur de code.

**Défi 11 — Lis le déplacement du joueur**
Ouvre `src/scenes/entities/player/movement/player_movement.gd`.
Tu vois la ligne : `player.velocity = input_vector * player_stats.speed`
C'est ici que la vitesse est appliquée ! Modifie la ligne pour mettre `player_stats.speed * 2`. Qu'est-ce qui se passe ?

**Défi 12 — Accélère la boule de feu**
Ouvre `src/scenes/entities/player/fireball/fireball.gd`.
Trouve la variable `speed`. Elle est aussi configurable depuis l'éditeur : dans la scène `fireball.tscn`, clique sur le nœud racine et cherche **`Speed`** dans l'Inspector. Change-la à `1000` !

<details>
<summary>Solution</summary>

![Solution du défi 12](./readme-images/find-speed-variable.png)

</details>

**Défi 13 — Comprends pourquoi la visée ne fonctionne pas**
Ouvre `src/scenes/entities/player/weapon/weapon.gd`.
Lis la fonction `_process`. Tu vois `get_right_stick_direction(0.1)` ?
C'est la direction du joystick droit (manette). Si personne n'utilise de manette, `current_direction` ne change jamais... et le sorcier tire toujours vers la droite. C'est le bug que tu vas corriger au défi 16 !

**Défi 14 — Ajoute une variable de score**
Ouvre `src/scripts/autoloads/game_data.gd`.
À la fin du fichier, ajoute cette ligne :
```gdscript
var score: int = 0
```
`GameData.score` sera maintenant accessible depuis n'importe quel script du jeu.

**Défi 15 — Découvre les signaux**
Ouvre `src/scripts/autoloads/signals.gd`.
Tu vois `signal enemy_died(enemy: Enemy)` ? C'est un **signal** : quand un ennemi meurt, ce signal est envoyé à tous ceux qui l'écoutent.
Qui l'écoute déjà ? Cherche `enemy_died.connect` dans le projet (menu **Project > Find in Files**).

---

### 💻 Groupe 4 — Codeur *(Écrire du nouveau code)*

> Dans le groupe 4, tu **écris du code** pour ajouter de nouvelles fonctionnalités. C'est la partie la plus difficile — mais aussi la plus satisfaisante ! 💪
>
> N'oublie pas de sauvegarder tes fichiers après chaque modification (**Ctrl+S**).

**Défi 16 — Répare la visée à la souris** ⭐ *(le défi principal !)*
Dans `src/scenes/entities/player/weapon/weapon.gd`, trouve dans `_process` ce bloc :
```gdscript
var right_stick_direction := get_right_stick_direction(0.1)
if right_stick_direction != Vector2.ZERO:
	current_direction = right_stick_direction
```
À toi de jouer ! Ajoute un bloc `else` juste après le `if`. Dans ce `else`, tu dois mettre à jour `current_direction` avec la direction qui pointe vers la souris.

Voici les outils dont tu disposes :
- `get_global_mouse_position()` — retourne la position de la souris dans le monde du jeu
- `global_position` — la position de l'arme dans le monde du jeu
- `.normalized()` — transforme un vecteur en une direction de longueur 1

**Indice :** pour obtenir une direction qui pointe d'un point A vers un point B, on calcule `B - A`. Ici, A c'est l'arme, et B c'est la souris. Et n'oublie pas de normaliser le résultat !

<details>
<summary>Solution</summary>

Ajoute un `else` pour viser vers la souris si aucun joystick n'est utilisé :
```gdscript
var right_stick_direction := get_right_stick_direction(0.1)
if right_stick_direction != Vector2.ZERO:
	current_direction = right_stick_direction
else:
	current_direction = (get_global_mouse_position() - global_position).normalized()
```
Lance le jeu — tu peux maintenant viser avec ta souris ! 🎯

**Que fait cette nouvelle ligne ?**
`get_global_mouse_position()` donne la position de ta souris dans le monde du jeu.
On soustrait `global_position` (la position de l'arme) pour obtenir un vecteur qui pointe **de l'arme vers la souris**.
Enfin, `.normalized()` ramène ce vecteur à une longueur de 1, pour que la vitesse de la boule de feu soit toujours la même quelle que soit la distance de la souris.

**Pourquoi on l'ajoute dans le `else` ?**
Le `if` gère déjà la visée avec le joystick droit d'une manette.
Le `else` s'exécute uniquement quand **aucun joystick n'est utilisé** — c'est donc là qu'on branche la souris.
Ainsi le jeu fonctionne avec les deux types de contrôle, sans que l'un interfère avec l'autre.

</details>

**Défi 17 — Augmente le score à chaque kill**
Dans `src/scripts/autoloads/game_data.gd`, ajoute une fonction pour écouter le signal `enemy_died` :
```gdscript
func _ready() -> void:
	Signals.enemy_died.connect(_on_enemy_died)

func _on_enemy_died(_enemy: Enemy) -> void:
	score += 1
	print("Score : ", score)
```
Lance le jeu et regarde la console en bas de Godot — le score monte à chaque ennemi tué !

**Défi 18 — Affiche le score à l'écran**
Ouvre la scène `src/scenes/ui/hud/hud.tscn`. Dans l'arbre de scène (à gauche), fais un clic droit sur le nœud racine et ajoute un nœud **Label**. Nomme-le `ScoreLabel`.
Ensuite, ajoute un script au HUD (ou modifie celui existant) pour mettre à jour ce label :
```gdscript
@onready var score_label: Label = $ScoreLabel

func _process(_delta: float) -> void:
	score_label.text = "Score : " + str(GameData.score)
```

**Défi 19 — Crée une vague 6**
Dans le FileSystem, fais un clic droit sur `resources/wave_data/wave5_data.tres` et choisis **Duplicate**. Renomme le fichier en `wave6_data.tres`.
Ouvre-la et crée la vague la plus difficile que tu puisses imaginer ! Plus d'ennemis, des knights, des archers...

**Défi 20 — Ajoute ta vague 6 au jeu**
Ouvre la scène `src/scenes/game/wave_manager/game.tscn`. Clique sur le nœud **WaveManager** dans l'arbre. Dans l'Inspector, trouve le tableau **`Waves Data`** et clique sur le **+** pour ajouter une entrée. Sélectionne ton fichier `wave6_data.tres`.
Lance le jeu et survie jusqu'à ta vague !

---

### 🏆 Présente ton jeu !

Tu as terminé tes défis ? **Bravo !** 🎉

Il est temps de présenter ton travail à tes parents. Explique-leur :
* Quels sont les grands moteurs de jeu dans l'industrie ? 
	* Réponse: Unity, Unreal Engine, Godot
* C'est quoi un jeu Open Source ?
	* Réponse: c'est un jeu dont le code source est public : n'importe qui peut le lire, l'utiliser, le modifier et le partager.
* C'est quoi Godot et GDScript ?
	* Réponse: C'est un moteur de jeu vidéo gratuit et Open Source. 
	* Réponse: GDScript est le langage de programmation principal de Godot. Inspiré de Python.
* Qu'est-ce que tu as modifié dans le jeu ?
	* Réponse: 
		* Groupe 1: La vitesse du sorcier, devenir invincible, réduire la vie des ennemis, des millions d'ennmis
		* Groupe 2: Tirer comme une mitrailleurs, doubler les dégats, changer la formation d'apparition, changer les vagues
		* Groupe 3: Doubler la vitesse du joueur, Accélérer la boule de feu, Réparer la visée avec la souris, Ajouter une variable de score, découvrirg les signaux
		* Groupe 4: Réparer la visée de la souris, Augmenter le score à cahque kill, Afficher le score à l'écran, Créer une nouvelle vague
* Quel défi était le plus difficile ? Pourquoi ?
* Tu as personnalisé le jeu ? Comment ? 

---

## 🏠 Installation à la maison

Tu veux continuer à modifier le jeu chez toi ? Suis ces étapes !

### Étape 1 — Installe Godot Engine

1. Va sur [https://godotengine.org/download](https://godotengine.org/download)
2. Télécharge la version **Godot Engine 4** (Standard, pas .NET)
3. C'est un fichier `.zip` — extrait-le et lance l'exécutable `Godot_v4.x.x...exe`
4. Pas besoin d'installation : Godot fonctionne directement !

### Étape 2 — Télécharge le projet

**Option A — Téléchargement direct (le plus simple)**
1. Va sur la page du projet : `[URL_DU_PROJET_GITHUB]`
2. Clique sur le bouton vert **`< > Code`** puis sur **Download ZIP**
3. Extrais le fichier ZIP sur ton bureau

**Option B — Avec Git (pour les curieux)**
Si tu as [Git](https://git-scm.com/downloads) installé, ouvre un terminal et tape :
```bash
git clone [URL_DU_PROJET_GITHUB]
```

> 💡 **C'est quoi Git ?** C'est un outil qui permet de sauvegarder l'historique de toutes les modifications d'un projet. C'est ce que tous les développeurs professionnels utilisent !

### Étape 3 — Ouvre le projet

1. Lance **Godot Engine**
2. Dans le **Project Manager**, clique sur **Import**
3. Navigue jusqu'au dossier du projet et sélectionne `project.godot`
4. Clique sur **Import & Edit**
5. Appuie sur **F5** pour jouer !

### Étape 4 — Continue tes défis !

Reprends là où tu t'étais arrêté pendant l'atelier. Tu peux aussi inventer tes propres améliorations !

---

## 📚 Pour aller plus loin

### Godot & GDScript
- 📖 [Documentation officielle de Godot en anglais](https://docs.godotengine.org/en/stable/)
- 📖 [Documentation officielle de Godot en français](https://docs.godotengine.org/fr/stable/)
- 📖 [Bases de GDScript en anglais](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)
- 📖 [Bases de GDScript en français](https://docs.godotengine.org/fr/stable/tutorials/scripting/gdscript/gdscript_basics.html)
- 🎓 [Ton premier jeu avec Godot (tutoriel officiel en anglais)](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html)
- 🎓 [Ton premier jeu avec Godot (tutoriel officiel en français)](https://docs.godotengine.org/fr/stable/getting_started/first_2d_game/index.html)
- 🎥 [GDQuest — Tutoriels Godot (YouTube)](https://www.youtube.com/@Gdquest)

### Open Source & Programmation
- 🌍 [Devoxx4Kids](https://www.devoxx4kids.org/) — L'organisation qui organise ces ateliers
- 💻 [GitHub](https://github.com) — Le site où les développeurs partagent leur code Open Source
- 🐍 [Learn Python](https://www.learnpython.org/) — Pour apprendre Python, un langage similaire à GDScript

---

## 🎮 Aperçu du jeu

### Le jeu en résumé
C'est un jeu d'aventure en vue du dessus dans un donjon. Tu joues un **sorcier** qui doit survivre à des **vagues d'ennemis** en tirant des boules de feu. Ramasse des **potions** pour améliorer tes statistiques entre les vagues !

### Les ennemis
| Ennemi | Comportement |
|--------|-------------|
| 🦇 Chauve-souris | Fonce droit vers toi |
| 👻 Fantôme | Se balance en se déplaçant |
| 🕷️ Araignée | Fonce droit vers toi |
| 🏹 Archer | Garde ses distances et tire des flèches |
| ⚔️ Chevalier | Fonce droit vers toi, très résistant |

### Les potions
| Potion | Effet |
|--------|-------|
| ❤️ Potion de vie | Restaure des points de vie |
| 💨 Potion de vitesse | Augmente ta vitesse de déplacement |
| ⚔️ Potion de dégâts | Augmente les dégâts de tes boules de feu |
| 🌀 Potion de cadence | Réduit le temps entre chaque tir |

### Détails techniques
- **Moteur** : [Godot Engine 4](https://godotengine.org/)
- **Langage** : GDScript
- **Type** : Top-down dungeon, survie par vagues

---

*Fait avec ❤️ pour Devoxx4Kids Québec — Inspirons la prochaine génération de développeurs de jeux !*
