# 🧙 Devoxx4Kids — Dungeon of the Wizard

[🇫🇷 Français](README.md) | 🇬🇧 English

![Tiny Wizard Main Image](./readme-images/tiny-wizard.png)

Welcome to the **Video Game Programming** workshop by [Devoxx4Kids Québec](https://www.devoxx4kids.org/quebec) !

You will explore a real video game, understand how it works, and improve it yourself.
At the end of the session, you will get to demo it to your parents!

---

## 📚 Before We Start

### 🕹️ Game Engines in the Industry

To create a video game, developers use **game engines**: tools that handle the complicated stuff (rendering graphics, managing physics, playing sounds…) so you can focus on what makes your game unique.

There are several engines, each with its strengths. Here are the most well-known:

| Engine                                            | Used for                                                 | Why developers choose it                                                                      |
| ------------------------------------------------- | -------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| [**Unity**](https://unity.com)                    | Hollow Knight, Cuphead, Among Us                         | Very popular, huge community, compatible with almost every platform. Great for indie studios. |
| [**Unreal Engine**](https://www.unrealengine.com) | Fortnite, Valorant, Hogwarts Legacy                      | Ultra-realistic graphics. Used by large AAA studios (big budgets).                            |
| [**Godot**](https://godotengine.org)              | Slay the Spire 2, Cassette Beasts, Sonic Colors Ultimate | Free, Open Source, lightweight, easy to learn. Perfect for beginners and indie games.         |
| [**GameMaker**](https://gamemaker.io)             | Undertale, Hotline Miami, Stardew Valley                 | Easy to get started, very popular for 2D games.                                               |
| [**RPG Maker**](https://www.rpgmakerweb.com)      | Omori, Yume Nikki                                        | Specialized in RPGs (role-playing games). Little to no programming required.                  |

> 💡 **Which one to choose?** It depends on the project! For beginners, **Godot** and **GameMaker** are excellent. For large professional 3D games, developers lean toward **Unreal**. In this workshop, we use **Godot** — it's free, Open Source, and quick to pick up.

---

### 🌍 What is Open Source?

An **Open Source** software is a program whose **source code is public**: anyone can read it, use it, modify it, and share it.

Think of it like a recipe written in a book that's open to everyone, instead of being kept secret. You can copy the recipe, improve it, and even give it to others!

This game is Open Source. The game engine we use, **Godot**, is too. Even this README file you're reading right now is public! 🎉

> **Famous Open Source examples:** Linux (the operating system running millions of servers), Firefox (the browser), Blender (3D software), and… Godot!

### 🎮 Let's Discover Godot!

[**Godot Engine**](https://godotengine.org) is a free and Open Source **game engine**. A game engine is a tool that gives you everything you need to build a game: displaying images, playing sounds, detecting collisions, reading keyboard input, and more.

It is used by thousands of developers around the world, from hobbyists to professionals.

- 📖 [Official Godot Documentation](https://docs.godotengine.org/en/stable)

### How Does Godot Work?

Godot is built around two key concepts: **Scenes** and **Scripts**.

**Scenes** are the building blocks of the game. Every character, every menu button, every level is a scene. A scene contains **nodes** — small building blocks you assemble together: one node for the image, one for the sound, one for the collision, etc.

**Scripts** are the code files you attach to nodes to give them behavior. This is where you write GDScript (or C#) to tell a character how to move, when to shoot, how to die…

The Godot interface is divided into 4 main areas:

```
┌────────────────────────────────────────────────┐
│  Toolbar (Play ▶, Save, etc.)                  │
├───────────┬────────────────────┬───────────────┤
│           │                    │               │
│ Scene     │   Viewport         │   Inspector   │
│  (node    │   (what you see    │   (node       │
│    tree)  │    in the game)    │   properties) │
│           │                    │               │
├───────────┤                    ├───────────────┤
│FileSystem |                    │               │
│ (your     │                    │               │
│  files)   │                    │               │
├───────────┴────────────────────┴───────────────┤
│  Output / Console (error messages, print…)     │
└────────────────────────────────────────────────┘
```

- 📖 [First look at the Godot editor](https://docs.godotengine.org/en/stable/getting_started/introduction/first_look_at_the_editor.html)

### The Most Common Programming Languages

A **programming language** is a way to write instructions that a computer can understand. There are dozens of them — each one was created to address a particular need.

| Language       | Used for                                 | What makes it stand out                                            |
| -------------- | ---------------------------------------- | ------------------------------------------------------------------ |
| **Python**     | Data science, AI, scripting, education   | Very readable, ideal for learning. Widely used in schools.         |
| **JavaScript** | Websites, web apps                       | Runs in the browser. Essential for anything web-related.           |
| **C#**         | Unity games, Windows apps, web (ASP.NET) | Powerful and structured. Close to C++ but more accessible.         |
| **C++**        | AAA games, systems, game engines         | Very fast. Hard to learn, but used in engines like Unreal.         |
| **Java**       | Android apps, enterprise software        | Popular in large companies and Android mobile apps.                |
| **GDScript**   | Godot games                              | Built specifically for Godot. Inspired by Python. Easy to pick up. |
| **Rust**       | Systems, high-performance tools          | Modern, very safe, growing in popularity.                          |
| **Swift**      | iPhone / iPad / Mac apps                 | Apple's language for the entire iOS/macOS ecosystem.               |

> 💡 **No need to learn them all!** Developers pick their language based on what they want to build. In this workshop, you'll use **GDScript** — and much of what you learn also applies to Python!

### 📝 What is GDScript?

**GDScript** is Godot's main programming language. It is very similar to **Python**: easy to read and write, perfect for beginners!

Here's a GDScript example:

```gdscript
# This is a comment (it is not executed)
var speed = 200          # We create a "speed" variable

## Runs once when the scene starts
func _ready():
	print("The game starts!")  # Prints a message at startup

## Runs every frame (60x/sec)
func _process(delta):
	position.x += speed * delta  # Moves the object to the right
```

- 📖 [Introduction to GDScript](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)

---

## 💾 Saving Your Project

You can save your project at any time using the save scripts included in the game folder.

### On Windows — double-click `save.bat`

The file is located here:

```
C:\workspace\atelier-jeu-video\save.bat
```

> There is also `save.sh` to use on Linux

Double-click it. If you are on Linux, double-click `save.sh` and choose **"Run"** (or "Run in Terminal") if a window prompts you. A black window opens with the Dungeon Save System 🧙. It will ask you two things:

1. **A save name** (max 20 characters) — for example your first name, or `"before-laser"`, `"final-version"`…
2. **GIT or ZIP** — choose your method:

| Method | When to use it |
| ------ | -------------- |
| **ZIP** | In all cases — creates a `<name>.zip` file in the game folder. This is the recommended method for everyone. |
| **GIT** | During the workshop only, if you or someone you know is familiar with Git. It records a version in the project's Git history. |

> 💡 **Not sure what Git is?** Choose **ZIP** — it's simple, fast, and always works!

---

## Workshop Steps

Follow these steps below in order. Ask a workshop leader if you're stuck!

1. [x] **Install Godot** — if not already done — following the instructions in the [Home Installation](#home-installation) section below
2. [ ] **[Discover the game](#game-overview)** - 🎮 in Godot, discover the game and play for a few minutes to understand it
3. [ ] **[Open the project](#lets-play)** - 🎮 in Godot, discover the game and play for a few minutes to understand it
4. [ ] **[Explore the project](#file-structure)** - 📂 discover the files, folders, scenes, and scripts
5. [ ] **[Learn the code basics](#code-basics)** - 📖 to be ready to understand, modify, and program the game
6. [ ] **[Complete your challenges](#your-challenges)** ⚔️ Complete all the challenge steps below
   - [ ] **[Challenge Group 1](#group---explorer)** - 🔍 Explorer
   - [ ] **[Challenge Group 2](#group---resource-tinkerer)** - ⚙️ Resource Tinkerer
   - [ ] **[Challenge Group 3](#group---code-reader)** - 📖 Code Reader - Understanding scripts
   - [ ] **[Challenge Group 4](#group---coder)** - 💻 Coder - Write code!
   - [ ] **[Challenge Group 5](#group---score)** - 🔢 Perfectionist - Add a score
   - [ ] **[Challenge Group 6](#group---one-more-wave)** - 🌊 Create your own wave of enemies
   - [ ] **[Challenge Group 7](#group---pixel-art-artist)** - 🎨 Pixel Art Artist - Customize your character
   - [ ] **[Challenge Group 8](#group---architect)** - 🏗️ Architect - Add Obstacles
   - [ ] **[Challenge Group 9](#group---creative-coder)** - 🎮 Creative Coder - Customize with code
   - [ ] **[Challenge Group 11](#group---add-a-new-laser-beam-weapon)** - ⚡ Add a New Laser Beam Weapon
   - [ ] **[Challenge Group 12](#group---teleportation)** - 🌀 Teleportation
   - [ ] **[Challenge Group 13](#group---lightning-storm)** - ⛈️ Lightning Storm

7. [ ] **[Upload Your Project](#upload-your-project)** ⬆️ - before leaving to our [Google Drive folder](https://drive.google.com/drive/folders/1Nno74QtZJMh8ZiMtmIGogpXdfisY1pnj?usp=sharing) to find it at home
8. [ ] **[Demo your game!](#demo-your-game)** - 🏁 to your parents at the end of the session!

---

## Game Overview

[Back to steps ⬆️](#workshop-steps)

### The Game

A top-down dungeon adventure game. You play a **wizard** who must survive waves of enemies by shooting fireballs. Collect **potions** to upgrade your stats between waves!

### Enemies

| Enemy     | Behavior                             |
| --------- | ------------------------------------ |
| 🦇 Bat    | Charges straight at you              |
| 👻 Ghost  | Charges straight at you              |
| 🕷️ Spider | Swings side to side while moving     |
| 🏹 Archer | Keeps its distance and shoots arrows |
| ⚔️ Knight | Charges straight at you, very tanky  |

### Potions

| Potion                 | Effect                                   |
| ---------------------- | ---------------------------------------- |
| ❤️ Health Potion       | Restores hit points and increases max HP |
| 💨 Speed Potion        | Increases movement speed                 |
| ⚔️ Damage Potion       | Increases fireball damage                |
| 🌀 Attack Speed Potion | Reduces time between shots               |

### Technical Details

- **Engine**: [Godot Engine 4](https://godotengine.org/)
- **Language**: GDScript
- **Genre**: Top-down dungeon, wave survival

---

## Let's Play

[Back to steps ⬆️](#workshop-steps)

A good video game is a fun video game. How do you know if a game is fun? No choice — you have to play it 🎮!

### Open the Project in Godot

If the project is not already open on the computers:

1. Launch **Godot Engine**
2. In the **Project Manager**, click **Import**
3. Navigate to the project folder and select the `project.godot` file
4. Click **Import & Edit**
5. Press **F5** (or the ▶ button at the top right) to launch the game

### How to Play

#### Keyboard + Mouse _(recommended)_

| Action | Key             |
| ------ | --------------- |
| Move   | `W` `A` `S` `D` |
| Attack | Left click 🖱️   |
| Pause  | `Escape`        |

> ⚠️ **Warning:** Right now, mouse aiming doesn't work — the wizard always shoots to the right! **That's one of your challenges to fix.** 🎯

#### Gamepad

| Action | Button             |
| ------ | ------------------ |
| Move   | Left stick         |
| Aim    | Right stick        |
| Attack | Right Trigger (RT) |
| Pause  | Start              |

---

## How do we make it even more fun?

The game isn't perfect — things are missing. That's what you're going to learn to fix. Start by understanding how the game is organized.

## File Structure

[Back to steps ⬆️](#workshop-steps)

```
atelier-jeu-video/
├── assets/          	🎨 Images, sounds, music
├── resources/       	⚙️ Configuration files (stats, waves...)
│   ├── enemy_stats/    📊 Each enemy's stats (HP, speed, damage)
│   ├── player_stats/   📊 Player stats
│   └── wave_data/      🌊 Enemy wave configuration
└── src/             	💻 Game code and scenes
	├── scenes/         🎬 Godot scenes (characters, UI, world...)
	│   ├── entities/   🧙 Player and enemies
	│   ├── game/       🧠 Core game logic (waves, spawning...)
	│   ├── items/      🍶 Collectible potions
	│   └── ui/         🪟 Interface (menus, HUD, death screen)
	└── scripts/        📜 Reusable GDScript files
		├── autoloads/  📜 Scripts accessible from anywhere in the game
		└── resources/  📜 Custom resource type definitions
```

### File Types to Know and Where to Find Them in the FileSystem

```
atelier-jeu-video/
├── assets/          	🎨 .png, .jpg, .ttf, .wav, .mp3 files
├── resources/       	⚙️ .tres files
└── src/             	💻 Game code and scenes
	├── scenes/         🎬 .tscn, .gd files
	└── scripts/        📜 .gd files
```

### Key Files to Know

| File                                                     | What it does                      |
| -------------------------------------------------------- | --------------------------------- |
| `resources/player_stats/player_stats.tres`               | Player stats (HP, speed, damage…) |
| `resources/enemy_stats/bat_stats.tres`                   | A bat's stats                     |
| `resources/wave_data/wave1_data.tres`                    | Wave 1 configuration              |
| `src/scenes/entities/player/movement/player_movement.gd` | Player movement                   |
| `src/scenes/entities/player/weapon/weapon.gd`            | Weapon and aiming                 |
| `src/scenes/entities/player/fireball/fireball.gd`        | The fireball                      |
| `src/scripts/autoloads/game_data.gd`                     | Global game data                  |
| `src/scripts/autoloads/signals.gd`                       | Game signals (events)             |

---

## Code Basics

[Back to steps ⬆️](#workshop-steps)

Before starting the challenges, here are the three essential building blocks of code you'll encounter. No need to memorize everything — come back here if you get stuck!

---

### 📦 Variables — storing information

A **variable** is a named box where you store a value. You can read it or change it at any time.

```gdscript
var speed: int = 200        # a box called "speed" holding the number 200
var name: String = "Merlin" # a box called "name" holding some text
```

In the game, `player_stats.speed` is a variable that holds the wizard's speed.
Change its value and the wizard moves faster or slower.

The **type** (`int`, `String`...) tells you what the box can hold: a whole number, some text, etc.
You'll also see `float` for decimal numbers (e.g. `0.5`).

---

### ❓ if / else — making a decision

**if** lets the code choose what to do based on a condition.
If the condition is true, the `if` block runs. Otherwise, the `else` block runs.

```gdscript
if points > 10: # if points exceed 10
	print("You win!") # display the victory message
else: # otherwise
	print("Not yet...") # display the failure message
```

In the game, we use `if / else` to aim with the joystick OR the mouse depending on what the player is using:

```gdscript
if right_stick_direction != Vector2.ZERO:
	current_direction = right_stick_direction  # joystick detected → use it
else:
	current_direction = ...                    # otherwise → aim with the mouse
```

---

### 🔧 Functions — grouping code together

A **function** is a named block of code you can call whenever you need it.
It avoids writing the same code over and over.

```gdscript
## Prints a greeting message to the console
func say_hello() -> void:
	print("Hello!") # prints the text to the console

say_hello()  # calls the function → prints "Hello!"
```

In Godot, some functions are called automatically by the engine:

- `_ready()` — runs **once** when the scene starts
- `_process(delta)` — runs **every frame** (60 times per second)

You'll see these a lot in the game's code!

---

## Your Challenges

[Back to steps ⬆️](#workshop-steps)

Challenges are grouped by difficulty. **Start with Group 1** and go at your own pace!

---

### Group - Explorer

![Group Image](./readme-images/challenges-group-explorator.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you only modify **configuration files** (.tres) directly in the Godot editor. No coding needed!
>
> To open a `.tres` file: double-click it in the **FileSystem** panel (bottom left). Its properties appear in the **Inspector** (right side).

#### **Challenge 1 - Launch the game and survive!**

Press **F5**. Play for a few minutes. Try to survive the enemy waves. How many waves can you reach?

#### **Challenge 2 - Make the wizard super fast**

Open `resources/player_stats/player_stats.tres` in the Inspector.
Change **`Speed`** to `500`. Launch the game. Try `50`. Which value is the most fun?

- The initial value was: `50`.

#### **Challenge 3 - Become invincible**

In the same file, change **`Hp Max`** to `9999`. Launch the game. You can no longer die!

- The initial value was: `30`.

#### **Challenge 4 - One-shot the bats**

Open `resources/enemy_stats/bat_stats.tres`.
Change **`Hp Max`** to `1`. Bats now die in a single shot!

- The initial value was: `5`.

#### **Challenge 5 - Flood wave 1**

Open `resources/wave_data/wave1_data.tres`.
In the **`Sub Waves`** list, click on the first element. Change **`Amount`** to `20`.
Launch the game — you're surrounded!

- The initial value was: `1`.

#### **Challenge 6 — Shoot like a machine gun**

In `resources/player_stats/player_stats.tres`, change **`Attack Cooldown`** to `0.05`.
(This value is the time in seconds between each shot. The smaller it is, the faster you shoot!)

- The initial value was: `0.2`.

#### **Challenge 7 — Double your damage**

Still in `player_stats.tres`, find **`Damage Information`** and click to open it. Change the **`Damage`** value. Try `50`!

- The initial value was: `3`.

---

### Group - Resource Tinkerer

![Group Image](./readme-images/challenges-group-resource-tinkerer.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you continue modifying `.tres` files, but explore the configurations in more depth.

#### **Challenge 8 — Change the spawn formation**

In `resources/wave_data/wave1_data.tres`, open a `SubWaveData` and change **`Pattern`**:

- `RANDOM`: enemies appear anywhere
- `CIRCLE`: they appear in a circle around you
- `CLUSTER`: they appear as a group

- The initial values were:
  - Subwave 0: `Random`
  - Subwave 1: `Random`
  - Subwave 2: `Cluster`
  - Subwave 3: `Cluster`
  - Subwave 4: `Random`
  - Subwave 5: `Circle`

#### **Challenge 9 — Replace the enemies**

In the same wave, change **`Enemy Type`** to `KNIGHT` or `SPIDER`. Launch the game — surprise!

- The initial values were:
  - Subwave 0: `Bat`
  - Subwave 1: `Bat`
  - Subwave 2: `Bat`
  - Subwave 3: `Ghost`
  - Subwave 4: `Bat`
  - Subwave 5: `Ghost`

#### **Challenge 10 — Find your perfect balance**

Restore player stats to reasonable values, but keep the wave changes you prefer. Build a wave 1 that feels fun to play!

---

### Group - Code Reader

![Group Image](./readme-images/challenges-group-code-reader.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you open real GDScript code files (`.gd`). The goal is to **read and understand**, then make small modifications.
>
> To open a script: double-click it in the **FileSystem**. It opens in the code editor.

#### **Challenge 11 — Read the player movement**

Open `src/scenes/entities/player/movement/player_movement.gd`.
You'll see the line: `player.velocity = input_vector * player_stats.speed`
This is where speed is applied! Modify the line to use `player_stats.speed * 2`. What happens?

#### **Challenge 12 — Speed up the fireball**

This challenge can only be fully tested with a gamepad. A bug 🪳 has crept into the game — mouse aiming doesn't work yet. Try this challenge with both a gamepad and the mouse, before going to fix the bug in the next group!

Open `src/scenes/entities/player/fireball/fireball.gd`.
Find the `speed` variable. You can also change it from the editor: in the `fireball.tscn` scene, click the root node and look for **`Speed`** in the Inspector. Set it to `1000`!

<details>
<summary>Solution</summary>

![Challenge 12 solution](./readme-images/find-speed-variable.png)

</details>

#### **Challenge 13 — Understand why aiming is broken**

Open `src/scenes/entities/player/weapon/weapon.gd`.
Read the `_process` function. See `get_right_stick_direction(0.1)`?
That's the direction of the right gamepad stick. If no one is using a gamepad, `current_direction` never changes… and the wizard always shoots right. This is the bug you'll fix in the next challenge!

---

### Group - Coder

![Group Image](./readme-images/challenges-group-coder.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you **write code** to add new features. This is the hardest part — but also the most satisfying! 💪
>
> Don't forget to save your files after each change (**Ctrl+S**).

#### **Challenge 14 — Fix mouse aiming**

In `src/scenes/entities/player/weapon/weapon.gd`, find this block in `_process`:

```gdscript
var right_stick_direction := get_right_stick_direction(0.1) # read the right stick
if right_stick_direction != Vector2.ZERO: # joystick in use?
	current_direction = right_stick_direction # aim with the joystick
```

Your turn! Add an `else` block right after the `if`. Inside that `else`, you need to update `current_direction` with the direction pointing toward the mouse.

Here are the tools you have:

- `get_global_mouse_position()` — returns the position of the mouse in the game world
- `global_position` — the position of the weapon in the game world
- `.normalized()` — turns a vector into a direction with a length of 1

**Hint:** here, you need to :

- Add `else` to the `if` statement - remember the "Code Basics" we saw at the beginning of the workshop !
- Write this line under the `else` but in programmation using your tools: `current direction = (global mouse position - global position).normalized`

<details>
<summary>Solution</summary>

Add an `else` branch to aim toward the mouse when no joystick is used:

```gdscript
var right_stick_direction := get_right_stick_direction(0.1) # read the right stick
if right_stick_direction != Vector2.ZERO: # joystick active?
	current_direction = right_stick_direction # aim with the joystick
else:
	current_direction = (get_global_mouse_position() - global_position).normalized() # aim toward the mouse
```

</details>

Launch the game — you can now aim with your mouse! 🎯

**What does this new line do?**
`get_global_mouse_position()` gives you the position of your mouse cursor in the game world.
We subtract `global_position` (the weapon's position) to get a vector pointing **from the weapon toward the mouse**.
Then `.normalized()` shrinks that vector to a length of 1, so the fireball always travels at the same speed regardless of how far the mouse is.

**Why add it in the `else` branch?**
The `if` already handles aiming with a gamepad's right stick.
The `else` only runs when **no joystick is being used** — so that's where we plug in the mouse.
This way the game works with both types of controls, without one interfering with the other.

---

### Group - Score

![Group Image](./readme-images/challenges-group-score.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll **add a score system** to the game — you'll learn about signals, good coding practices, and display a live kill counter on screen.

#### **Challenge 15 — Add a score variable**

Let's create a score visible on screen to track how many enemies we've killed!

Open `src/scripts/autoloads/game_data.gd`.
At the end of the file, add this line:

```gdscript
var score: int = 0
```

But wait, all programmers know that a variable named `score` doesn't describe enough what it's for.
Let's apply an important best practice in programming to make the code easier to read, for you or someone else.
Add a comment in English indicating that this variable is used to count the number of enemies killed.

<details>
<summary>Solution</summary>

```gdscript
## Total number of ennemies killed
var score: int = 0
```

## </details>

`GameData.score` will now be accessible from any script in the game.

#### **Challenge 16 — Discover signals**

Open `src/scripts/autoloads/signals.gd`.
You'll see `signal enemy_died(enemy: Enemy)`. This is a **signal**: when an enemy dies, this signal is sent to everyone listening.
Who is already listening? Search for `enemy_died.connect` in the project (**Project > Find in Files**).

#### **Challenge 17 — Increase the score on each kill**

In `src/scripts/autoloads/game_data.gd`, add a function to listen to the `enemy_died` signal:

```gdscript
## Connects the enemy death signal on start
func _ready() -> void:
	Signals.enemy_died.connect(_on_enemy_died) # listen for enemy deaths

## Called every time an enemy dies
func _on_enemy_died(_enemy: Enemy) -> void:
	score += 1 # increment the score
	print("Score: ", score) # log to the console
```

Launch the game and watch the console at the bottom of Godot — the score goes up with every kill!

If you don't remember where the console is in Godot, [go back to see this diagram](#how-does-godot-work)

#### **Challenge 18 — Display the score on screen**

Open the scene `src/scenes/ui/hud/hud.tscn`.

In the scene tree (left panel), right-click the root node named `Hud` and add a **Label** node. Name it `ScoreLabel`.
Then, right-click the `Hud` node again. It doesn't have a script attached yet to update this label, let's do it:

1. Right-click on `Hud`
2. Attach a Script
3. A window opens — don't change anything and click `Create`
4. Replace the file content with this code

```gdscript
@onready var score_label: Label = $ScoreLabel # reference to the score Label

[...]

## Updates the score display every frame
func _process(_delta: float) -> void:
	score_label.text = "Score: " + str(GameData.score) # display current score
```

Finally, click **"2D"** in the toolbar at the very top of the editor to switch to the visual scene view.
In the scene tree on the left, select **ScoreLabel** with a left-click — you'll see it highlighted in red in the 2D scene.

Place it wherever you want in the blue zone and launch the game to check that it works!

<details>
<summary>Solution</summary>

![Challenge 18 solution](./readme-images/score-2d.png)

</details>

#### **Challenge 19 — Track your survival time**

Open `src/scripts/autoloads/game_data.gd`.
Add a variable and a function to measure elapsed time:

```gdscript
var survival_time: float = 0.0 # survival time in seconds

## Increments survival time every frame
func _process(delta: float) -> void:
	survival_time += delta # add elapsed time
```

`GameData.survival_time` now holds the number of seconds since the game started!

#### **Challenge 20 — Display the survival time on screen**

Open `src/scenes/ui/hud/hud.tscn`. Add a **Label** node and name it `TimeLabel`.
In the HUD script, add or complete the `_process` function to show the time:

```gdscript
@onready var time_label: Label = $TimeLabel # reference to the time Label

[...]

## Updates the timer display every frame
func _process(_delta: float) -> void:
	time_label.text = str(int(GameData.survival_time)) + "s" # show time as integer
```

Go to the `2D` viewport and place the time wherever you want on the screen.

---

### Group - One More Wave

![Group Image](./readme-images/challenges-group-one-more-wave.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll **design your own enemy wave** from scratch and add it to the game. No code required — pure game design!

#### **Challenge 21 — Create wave 6**

In the FileSystem, right-click `resources/wave_data/wave5_data.tres` and choose **Duplicate**. Rename the file to `wave6_data.tres`.
Open it and design the hardest wave you can imagine! More enemies, knights, archers…

<details>
<summary>Solution</summary>

![Challenge 19 solution](./readme-images/add-wave-step1.png)

</details>

#### **Challenge 22 — Add your wave 6 to the game**

Open the scene `src/scenes/game/wave_manager/game.tscn`. Click the **WaveManager** node in the tree. In the Inspector, find the **`Waves Data`** array and click **+** to add an entry. Select your `wave6_data.tres` file.
Launch the game and survive to your wave!

**Tip**: to save time while testing, after adding your wave to the WaveManager, use the 3 bars to the left of the number in the `Waves Data` column to drag your wave up and place it first.

<details>
<summary>Solution</summary>

![Challenge 20 solution](./readme-images/add-wave-step2.gif)

</details>

#### **Challenge 23 — Don't forget the UpgradeSpawner for between-wave bonuses!**

In the same scene `src/scenes/game/wave_manager/game.tscn`, click the **UpgradeSpawner** node in the scene tree.

In the Inspector, find the **`Waves Data`** array and add an entry for your 6th wave — otherwise the between-wave bonuses won't show up after wave 5!

<details>
<summary>Solution</summary>

![Challenge 21 solution](./readme-images/challenges-group-one-more-wave-upgrade-spawner.png)

</details>

---

### Group - Pixel Art Artist

![Group Image](./readme-images/challenges-group-pixel-artist.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll **change the wizard's visual appearance** by replacing the sprite image with an open source character found online. No code required — this is a design challenge!
>
> Open source sprites are royalty-free images shared freely by the community. That's how Open Source works in the art world!

#### **Challenge 24 — Look at the current wizard sprite**

In the FileSystem, navigate to `assets/sprites/entities/`.
Double-click `mage.png` to preview it in the right panel. This is the image that represents your wizard in the game!

##### Pixel Art

Go to [OpenGameArt.org](https://opengameart.org/), a website offering free open source art resources for video games.
In the search bar, look for **"top down character"** or **"pixel art character"**.
These are characters that can be freely used in video games like this one.

Since these images often require some adaptation, we have already prepared a few characters for you, ready to use in the `assets/sprites/entities/` folder.
Choose one of the following: `girl.png`, `boy.png`, `sumo.png`, `mage.png`, or even take the appearance of an enemy with `archer.png`!

##### Change your appearance

In the FileSystem, open `src/scenes/entities/player/sprite/player_sprite.tscn` by double-clicking it.

- Click the **PlayerSprite** node in the scene tree.
- In the Inspector on the right, find the **Texture** property.
- **Drag your new PNG** from the FileSystem onto that property. The wizard's appearance changes!
- Launch the game with **F5** to see your new character in action.

---

### Group - Architect

![Group Image](./readme-images/challenges-group-architect.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll **add walls** to the arena to create physical obstacles. The wizard and enemies won't be able to pass through them — this completely changes how the game plays!
>
> In Godot, an object that blocks others is called a **StaticBody2D**. You give it a **CollisionShape2D** to define its shape, and a visual element so you can see it.

#### **Challenge 25 — Open the main game scene**

In the FileSystem, navigate to `src/scenes/game/wave_manager/` and double-click **`game.tscn`**. Click **2D** in the top toolbar.
You can see the arena in the Viewport. This is where you'll place your walls!

##### Create your first wall

In the scene tree on the left, **right-click the `LevelMap` node** and choose **Add Child Node**.
Search for **`StaticBody2D`** and click **Create**.
Rename it `Wall1` (double-click on the node in the scene tree to rename it).

##### Give it a collision shape

- Right-click **`Wall1`** and add a child node **`CollisionShape2D`**
- Click that node in the tree
- In the Inspector, click **Shape** and choose **New RectangleShape2D**
- Click on `RectangleShape2D` again to adjust the `Size`. Set **`x = 32`, `y = 32`**

<details>
<summary>Solution</summary>

![Solution](./readme-images/solution-architect-collisionshape2d.png)

</details>

> 💡 If you have trouble selecting your wall, here are two tips:
>
> - In your scene list, select `Wall1` then hold **Alt** on your keyboard. You'll see **two arrows: one green and one red** appear on your object in the viewport. Use those arrows with the mouse to move your wall.
> - It might also be because another element is in the way — for example, the `Spawn Area` takes up a lot of space. In that case, find it in the scene list and click the small white eye on the same line to hide it temporarily, so you can edit your wall more easily. Don't forget to show it again before launching the game!

##### Make the wall visible

Right-click **`Wall1`** and add a child node **`ColorRect`**.

Then, in the Inspector:

- Change **Color** to a stone-like color (e.g. dark grey `#606060`).
- Under `Layout > Transform`:
  - Set **Size** to **`x = 32`, `y = 32`** and
  - Set **Position** to **`x = -16`, `y = -16`** to center it on the wall.

<details>
<summary>Solution</summary>

![Solution](./readme-images/solution-architect-colorrect.png)

</details>

##### Duplicate and position 4 walls

**Right-click `Wall1`** in the scene tree and choose **Duplicate** — repeat 3 times to get `Wall2`, `Wall3`, and `Wall4`.

For each wall, select it and place it wherever you want!

Launch the game — the wizard and enemies can no longer walk through your walls!

---

### Group - Creative Coder

![Group Image](./readme-images/challenges-group-creative-coder.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you **write code** to customize the game your way. These challenges aren't necessarily harder — they're about **expressing your creativity through code**!

#### **Challenge 26 — Change the fireball color**

Open `src/scenes/entities/player/fireball/fireball.gd`.
In the `_ready()` function, after the two existing lines, add:

```gdscript
sprite.modulate = Color(0.5, 0, 1)  # purple fireballs!
```

Launch the game. Try other colors: `Color.GREEN`, `Color.BLUE`, `Color(1, 0.5, 0)` for orange, `Color.RED`…

#### **Challenge 27 — Change the explosion color**

In the same `fireball.gd` file, still inside `_ready()`, also add:

```gdscript
spark_particles.modulate = Color(0, 1, 0)  # green explosion sparks!
```

Launch the game and shoot fireballs — the sparks on impact change color!

---

<!--
### Group - Add a New Laser Weapon

![Group Image](./readme-images/challenges-group-new-laser-weapon.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll add a **second weapon** to the wizard: a laser bolt fired with right-click! You'll write a new script from scratch, set up a scene, and wire everything into the existing weapon system. This is the most ambitious challenge!

#### **Challenge 28 — Explore the fireball code**

Before creating anything new, let's understand how the fireball works.

Open `src/scenes/entities/player/fireball/fireball.gd`. Read through it.

- What class does it extend? (`Area2D`)
- What `@export` variables does it have?
- What does the `die()` function do?

Now open `src/scenes/entities/player/weapon/weapon.gd`. Read the `spawn_fireball()` function.

- What does `NodeUtil.instance_2d_scene_at_location` do?
- What two properties does it set on the fireball before firing it?

You now have all the tools you need to build the laser! 🔍

#### **Challenge 29 — Create the laser script**

In the FileSystem, right-click on `src/scenes/entities/player/` and choose **New Folder**. Name it `laser`.

Inside that folder, right-click → **New Script**. Name it `laser.gd`.

Your laser needs to:

1. Move in a direction at high speed (`speed = 400` — compared to `160` for the fireball)
2. **Rotate to face its direction** so the beam points the right way (`rotation = direction.angle()`)
3. Disappear instantly when it hits something — with a guard so `die()` only runs once

**Hint:** Look at `fireball.gd` for inspiration. Key differences:

- Only `@export var speed: int = 400` — no node references needed
- In `_physics_process`, set `rotation = direction.angle()` **before** moving, so the beam always faces forward
- `die()` uses `set_deferred("monitoring", false)` on `self` (the Area2D) — no child node needed
- Add `var is_dying: bool = false` to block double calls

<details>
<summary>Solution</summary>

```gdscript
class_name Laser
extends Area2D

@export var speed: int = 400 # laser speed in pixels/sec

var direction: Vector2 = Vector2.RIGHT # travel direction
var damage_information: DamageInformation # damage dealt on hit
var is_dying: bool = false # guard against double calls


## Connects collision signals on startup
func _ready() -> void:
	body_entered.connect(die) # collision with a physics body
	area_entered.connect(die) # collision with an area


## Moves and rotates the laser every frame
func _physics_process(delta: float) -> void:
	rotation = direction.angle() # rotate beam to face direction
	global_position += direction * speed * delta # move forward


## Destroys the laser on first collision
func die(_element: Node2D) -> void:
	if is_dying: # already dying?
		return # ignore the double call
	is_dying = true # mark as dying
	set_deferred("monitoring", false) # disable collisions
	queue_free() # remove the node
```

</details>

Save with **Ctrl+S**.

#### **Challenge 30 — Create the laser scene**

The laser will be drawn with a **Line2D** node — a cyan line that rotates to face the direction of fire. No sprite, no particles: a real beam.

In the FileSystem, right-click on `src/scenes/entities/player/fireball/fireball.tscn` and choose **Duplicate**. Move the new file into the `laser/` folder and rename it `laser.tscn`.

Open `laser.tscn` by double-clicking it.

**1 — Swap the script:**

- In the scene tree, rename the root node from `Fireball` to `Laser`.
- Click the script icon (📜) in the Inspector → detach `fireball.gd` → drag `laser.gd` onto the **Script** property.
- Set `Speed` to `400` in the Inspector.

**2 — Clean up the fireball nodes:**

Select and delete these nodes from the scene tree (select → `Delete` key):

- `TrailParticles`
- `SparkParticles`
- `ShadowSprite`
- `FireballSfx`
- `Sprite`

**3 — Add the laser beam:**

Right-click the **Laser** root node → **Add Child Node** → search for **`Line2D`** → **Create**.

Select the **Line2D** node and in the Inspector:

- **Default Color** → set it to cyan: click the color box and enter `(R: 0, G: 255, B: 255)`
- **Width** → `4`
- **Points** → click **+** twice to add two points:
  - Point 0: `x = 0, y = 0`
  - Point 1: `x = 30, y = 0`

Save with **Ctrl+S**.

> 💡 The Line2D draws from point 0 to point 1. Since the laser rotates in `_physics_process`, it will always point in the direction it travels!

#### **Challenge 31 — Connect the laser to the weapon**

Open `src/scenes/entities/player/weapon/weapon.gd`.

Below `@export var fireball_scene: PackedScene`, add a new export for the laser:

```gdscript
@export var laser_scene: PackedScene
```

At the end of the `_process` function (after the `attack_primary` block), add:

```gdscript
	if Input.is_action_just_pressed("attack_secondary"): # right-click pressed?
		fire_laser() # fire a laser bolt
```

Then add these two new functions after `spawn_fireball()`:

```gdscript
## Fires a laser if the scene is assigned
func fire_laser() -> void:
	if laser_scene: # is the laser scene set?
		spawn_laser() # create the laser

## Instantiates and configures the laser
func spawn_laser() -> void:
	var laser := NodeUtil.instance_2d_scene_at_location(laser_scene, self, global_position) as Laser # spawn the laser
	laser.direction = current_direction # set its direction
	laser.damage_information = player_stats.damage_information # set its damage
```

Save with **Ctrl+S**.

**Bind right-click:**
Go to **Project > Project Settings > Input Map**, find `attack_secondary` and click **+** to add an event. Press the **right mouse button** — it should appear in the list.

**Assign the scene in the editor:**
Open `src/scenes/entities/player/weapon/weapon.tscn`, select the **Weapon** node, and in the Inspector drag `laser.tscn` onto the **Laser Scene** property.

Launch the game — **left-click** fires fireballs, **right-click** fires lasers! 🔵
-->

---

### Group - Add a New Laser Beam Weapon

![Group Image](./readme-images/challenges-group-continuous-laser-beam.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll create a **continuous laser beam** — it stays on until an enemy dies! Instead of dealing damage per hit, it deals **damage over time**. You'll use a new Godot tool called `RayCast2D` to detect what's in the laser's path each frame.

#### **Challenge 28 — Understand RayCast2D**

A `RayCast2D` shoots an invisible ray from a point in a direction. Every frame, it answers: "Did I hit something? If so, what is it and where exactly?"

Unlike the `Area2D` used in the fireball (which detects overlaps between shapes), a `RayCast2D` always gives you the **first** object in its path — perfect for a laser beam that stops at the nearest enemy or wall.

Open `src/scenes/entities/player/weapon/weapon.gd` and read the `spawn_fireball()` function.

- The fireball is a projectile: it's created, then travels on its own each frame.
- The continuous laser is different: **it doesn't move**. It stays attached to the weapon, rotates with it, and reads the raycast hit point every frame to draw the beam.

Think about it:

- Why is `RayCast2D` better than a very long Area2D for a beam?
- What's the difference between "10 damage per hit" and "10 damage per second"?

#### **Challenge 29 — Create the continuous laser scene**

Create a new folder `src/scenes/entities/player/continuous_laser/`.

Inside, right-click → **New Scene**. Choose **Node2D** as root and name it `ContinuousLaser`. Save it as `continuous_laser.tscn`.

Add three child nodes to `ContinuousLaser`:

**1 — RayCast2D:**
Right-click `ContinuousLaser` → Add Child Node → `RayCast2D`.
In the Inspector:

- `Target Position`: `x = 400, y = 0`
- `Collision Mask`: click the mask grid and enable **layer 1** (world) and **layer 6** (enemy_physics)

**2 — Line2D:**
Right-click `ContinuousLaser` → Add Child Node → `Line2D`.
In the Inspector:

- **Default Color** → cyan `(R: 0, G: 255, B: 255)`
- **Width** → `4`
- **Points** → click **+** twice:
  - Point 0: `x = 0, y = 0`
  - Point 1: `x = 400, y = 0`

**3 — Timer** (rename it `DamageTimer`):
Right-click `ContinuousLaser` → Add Child Node → `Timer`. Rename it `DamageTimer`.
In the Inspector:

- `Wait Time`: `0.05`
- `One Shot`: ❌
- `Autostart`: ❌

Save with **Ctrl+S**.

> 💡 Since `ContinuousLaser` will be a **child of the Weapon**, it automatically rotates with it — the beam will always point in the direction the wizard is aiming!

#### **Challenge 30 — Write the continuous laser script**

In the folder `src/scenes/entities/player/continuous_laser/`, create a new script `continuous_laser.gd` and attach it to the `ContinuousLaser` node.

The script needs to:

1. `activate(dmg_info)` — make the beam visible and start the damage timer
2. `deactivate()` — hide the beam and stop the timer
3. In `_process` — update the Line2D endpoint to follow the raycast hit point every frame
4. On `DamageTimer` timeout — find the enemy the raycast is hitting and call `hurt.emit()`
5. When `Signals.enemy_died` fires — automatically call `deactivate()`

**Hints:**

- `raycast.get_collision_point()` returns the hit position in **global** space — use `to_local(...)` to convert it to the node's local space for the Line2D
- To find the enemy's hurtbox: `body.find_child("EnemyHurtBox") as EnemyHurtBox`, then call `hurtbox.hurt.emit(damage_information)`
- Start with `visible = false` in `_ready()` — the laser is off by default

<details>
<summary>Solution</summary>

```gdscript
class_name ContinuousLaser
extends Node2D

@onready var raycast: RayCast2D = $RayCast2D # detection ray
@onready var line: Line2D = $Line2D # visual laser beam
@onready var damage_timer: Timer = $DamageTimer # periodic damage timer

var damage_information: DamageInformation # damage to deal
var is_active: bool = false # is the laser active?
var needs_rearm: bool = false # must release before firing again?


## Initializes connections and hides the laser
func _ready() -> void:
	damage_timer.timeout.connect(_on_damage_timer_timeout) # connect the timer
	Signals.enemy_died.connect(_on_enemy_died) # listen for enemy deaths
	visible = false # laser is off by default


## Activates the laser and starts dealing damage
func activate(dmg_info: DamageInformation) -> void:
	damage_information = dmg_info # store the damage info
	is_active = true # mark as active
	needs_rearm = false # clear the rearm lock
	visible = true # show the laser
	damage_timer.start() # start the damage timer


## Deactivates the laser and stops damage
func deactivate() -> void:
	is_active = false # mark as inactive
	visible = false # hide the laser
	damage_timer.stop() # stop the damage timer


## Updates the beam endpoint every frame
func _process(_delta: float) -> void:
	if not is_active: # laser inactive?
		return # nothing to do
	if raycast.is_colliding(): # ray hitting something?
		line.set_point_position(1, to_local(raycast.get_collision_point())) # point to hit
	else:
		line.set_point_position(1, Vector2(400, 0)) # full beam length


## Deals damage to the enemy being hit
func _on_damage_timer_timeout() -> void:
	if not raycast.is_colliding(): # nothing hit?
		return # no damage
	var body = raycast.get_collider() # get the hit object
	var hurtbox := body.find_child("EnemyHurtBox") as EnemyHurtBox # find the hurtbox
	if hurtbox: # hurtbox found?
		hurtbox.hurt.emit(damage_information) # deal the damage


## Deactivates the laser when an enemy dies
func _on_enemy_died(_enemy: Enemy) -> void:
	deactivate() # turn off the laser
	needs_rearm = true # block auto-reactivation
```

</details>

Save with **Ctrl+S**.

#### **Challenge 31 — Connect the continuous laser to the weapon**

**Add the scene to the weapon:**
Open `src/scenes/entities/player/weapon/weapon.tscn`. In the scene tree, right-click the **Weapon** root node → **Instantiate Child Scene** → select `continuous_laser.tscn`.

The `ContinuousLaser` node is now a child of the Weapon. Since the Weapon rotates toward the mouse, the laser follows automatically!

**Modify `weapon.gd`:**
Open `src/scenes/entities/player/weapon/weapon.gd`.

Add this line with the other `@onready` variables at the top:

```gdscript
@onready var continuous_laser: ContinuousLaser = $ContinuousLaser
```

In `_process`, replace the `attack_secondary` block with:

```gdscript
	if Input.is_action_pressed("attack_secondary"): # right-click held?
		if not continuous_laser.is_active and not continuous_laser.needs_rearm: # can activate?
			continuous_laser.activate(player_stats.damage_information) # turn on the laser
	else:
		continuous_laser.needs_rearm = false # clear the rearm lock
		if continuous_laser.is_active: # laser still on?
			continuous_laser.deactivate() # turn off the laser
```

> 💡 The laser stays on as long as the button is held. If an enemy dies, `needs_rearm` blocks automatic reactivation — the player must release and press again.

Launch the game — **hold right-click** to fire the continuous laser. Release to turn it off, or let it kill an enemy and it will shut off automatically! ⚡

#### **Challenge 32 — Add a glow effect to the beam**

A real laser beam has a glow around it! We'll add a second, wider, semi-transparent `Line2D` behind the main beam to simulate this effect.

**In `continuous_laser.tscn`:**

Right-click `ContinuousLaser` → **Add Child Node** → `Line2D`. Rename it `GlowLine`.

Select `GlowLine` and in the Inspector:

- **Default Color** → semi-transparent cyan: `(R: 0, G: 255, B: 255, A: 60)`
- **Width** → `8`
- **Points** → click **+** twice:
  - Point 0: `x = 0, y = 0`
  - Point 1: `x = 400, y = 0`

In the scene tree, **drag `GlowLine` above `Line2D`** so it renders behind the main beam.

Save with **Ctrl+S**.

**In `continuous_laser.gd`:**

Add a reference to `GlowLine` with the other `@onready` variables:

```gdscript
@onready var glow: Line2D = $GlowLine
```

In `_process`, update the `glow` endpoint alongside `line`:

```gdscript
## Updates beam and glow endpoint every frame
func _process(_delta: float) -> void:
	if not is_active: # laser inactive?
		return # nothing to do
	if raycast.is_colliding(): # collision detected?
		var hit := to_local(raycast.get_collision_point()) # hit point in local space
		line.set_point_position(1, hit) # update the beam endpoint
		glow.set_point_position(1, hit) # update the glow endpoint
	else:
		line.set_point_position(1, Vector2(400, 0)) # full beam length
		glow.set_point_position(1, Vector2(400, 0)) # full glow length
```

Launch the game — the beam now has a luminous halo around it! ✨

#### **Challenge 33 — Add a laser sound**

**In `continuous_laser.tscn`:**

Right-click `ContinuousLaser` → Add Child Node → `AudioStreamPlayer`. Rename it `LaserSfx`.

In the Inspector:

- **Stream** → drag `assets/sounds/sfx/continuous_laser.wav` from the FileSystem
- **Autoplay**: ❌
- Enable looping: double-click `continuous_laser.wav` in the FileSystem → enable **Loop**
- If this doesn't work, it's because the imported file is read-only — check the solution below to see how to enable it

<details>

<summary>Solution</summary>

![image](./readme-images/continuous-beam-audio-loop-mode.png)

</details>

**In `continuous_laser.gd`:**

Add the reference:

```gdscript
@onready var laser_sfx: AudioStreamPlayer = $LaserSfx
```

In `activate()`, add at the end:

```gdscript
	laser_sfx.play()
```

In `deactivate()`, add at the end:

```gdscript
	laser_sfx.stop()
```

Launch the game — the laser now makes sound while active and goes silent when it cuts off! 🔊

---

### Group - Teleportation

![Group Image](./readme-images/challenges-group-teleport.png)

[Back to steps ⬆️](#workshop-steps)

> In this group, you'll add a special ability to the wizard: by pressing **E**, he instantly teleports to wherever your mouse is pointing! You'll modify the player script directly and add a cooldown to keep the ability balanced.

#### **Challenge 34 — Add the keyboard action**

Before writing any code, you need to tell Godot that the **E** key corresponds to the action `"teleport"`.

Go to **Project → Project Settings → Input Map**.

At the top of the list, in the **Add New Action** field, type `teleport` and click **Add**.

The `teleport` action appears in the list. Click the **+** to its right, then press the **E** key on your keyboard → **OK**.

Close the Project Settings window.

> 💡 This is how the whole game works: `"attack_primary"`, `"attack_secondary"`, `"move_up"` are all actions defined here and read in code using `Input.is_action_pressed(...)`.

#### **Challenge 35 — Write the teleport code**

Open `src/scenes/entities/player/player.gd`.

Add this function at the end of the file:

```gdscript
## Teleports the wizard to the mouse on E
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("teleport"): # E key pressed?
		global_position = get_global_mouse_position() # jump to the cursor
```

Launch the game — press **E** and the wizard instantly jumps to the mouse cursor! 🌀

Think about it:

- What is the difference between `global_position` and `position`?
- What would happen if you replaced `is_action_pressed` with `is_action_just_pressed`?

#### **Challenge 36 — Add a cooldown**

Right now you can teleport endlessly without any limit. Let's add a **1 second** cooldown.

**In `src/scenes/entities/player/player.tscn`:**

Open the player scene. In the scene tree, right-click the **Player** root node → **Add Child Node** → `Timer`. Rename it `TeleportCooldown`.

In the Inspector:

- `Wait Time`: `5.0`
- `One Shot`: ✅
- `Autostart`: ❌

Save with **Ctrl+S**.

**In `player.gd`:**

Add a reference to the timer with the other `@onready` variables:

```gdscript
@onready var teleport_cooldown: Timer = $TeleportCooldown
```

Modify the `_input` function to check the cooldown before teleporting:

```gdscript
## Teleports only if the cooldown is over
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("teleport"): # E key pressed?
		if teleport_cooldown.is_stopped(): # cooldown finished?
			global_position = get_global_mouse_position() # jump to the mouse
			teleport_cooldown.start() # start the cooldown
```

Launch the game — you can teleport once, then you must wait 1 second before using it again!

> 💡 Change the `Wait Time` value on the timer in the Inspector to adjust the cooldown duration. `0.5` for a quick blink, `3.0` to make it more strategic!

#### **Challenge 37 — Show the cooldown on screen**

We'll display the remaining time directly above the wizard — so the player always knows when they can teleport again.

**In `src/scenes/entities/player/player.tscn`:**

Right-click the **Player** root node → **Add Child Node** → `Label`. Rename it `TeleportLabel`.

In the Inspector:

- `Position`: `x = -20, y = -50` (above the wizard)
- `Text`: leave empty
- `Visible`: ❌ (unchecked)

**In `player.gd`:**

Add the reference:

```gdscript
@onready var teleport_label: Label = $TeleportLabel
```

Add a `_process` function to update the label every frame:

```gdscript
## Shows or hides the cooldown countdown
func _process(_delta: float) -> void:
	if teleport_cooldown.is_stopped(): # cooldown finished?
		teleport_label.visible = false # hide the label
	else:
		teleport_label.visible = true # show the label
		teleport_label.text = "%.1f" % teleport_cooldown.time_left # remaining time
```

Launch the game — when you teleport, a countdown appears above the wizard and disappears when the ability is ready again!

#### **Challenge 38 — Add a teleport animation**

We'll make the wizard fade out, teleport, then fade back in. For this we use a **Tween** — a Godot tool that animates a value from A to B over a given duration.

In `player.gd`, replace the `_input` function with this:

```gdscript
## Triggers the teleport animation with cooldown
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("teleport"): # E key pressed?
		if teleport_cooldown.is_stopped(): # cooldown finished?
			teleport_cooldown.start() # start the cooldown
			_do_teleport() # launch the animation


## Fades out, teleports, then fades back in
func _do_teleport() -> void:
	var tween = create_tween() # create an animator
	tween.tween_property(self, "modulate:a", 0.0, 0.5) # fade to invisible
	await tween.finished # wait for fade to complete

	global_position = get_global_mouse_position() # teleport to mouse
	get_viewport().get_camera_2d().reset_smoothing() # reset camera smoothing

	tween = create_tween() # new animator
	tween.tween_property(self, "modulate:a", 1.0, 0.5) # fade back in
```

> 💡 `modulate:a` controls the node's transparency (0 = invisible, 1 = opaque). `await tween.finished` pauses the function until the fade-out is done, then the teleport happens, then the wizard fades back in.

Launch the game — the wizard gently fades out, disappears, and reappears at the cursor position! ✨

#### **Challenge 40 — Add magic particles**

We'll trigger a particle burst at the departure point **and** at the arrival point. The key trick: disabling **local coordinates** on the particles so that emitted particles stay in world space even when the player moves.

**In `src/scenes/entities/player/player.tscn`:**

Right-click **Player** → Add Child Node → `GPUParticles2D`. Rename it `TeleportParticles`.

In the Inspector, configure:

- `Amount`: `20`
- `Lifetime`: `0.5`
- `One Shot`: ✅
- `Explosiveness`: `0.8` (all particles fire at once)
- `Emitting`: ❌
- `Local Coords`: ❌ ← **important!** particles stay where they were emitted

Click **Process Material** → **New ParticleProcessMaterial**. Click it to open, then configure:

- `Spread`: `180` (all directions)
- `Initial Velocity` → `Min`: `50`, `Max`: `150`
- `Gravity`: `x = 0, y = 0`
- `Scale Min`: `0.5`, `Scale Max`: `1.5`

For the texture, click **Texture** → drag `assets/sprites/weapons/spark.png` from the FileSystem.

For the color: click **Color Curves** → **New GradientTexture1D** → click it → edit the gradient with a purple/magenta color `(R: 180, G: 50, B: 255)` that fades to transparent.

Save with **Ctrl+S**.

**In `player.gd`:**

Add the reference:

```gdscript
@onready var teleport_particles: GPUParticles2D = $TeleportParticles
```

In `_do_teleport()`, add `teleport_particles.restart()` at departure and arrival:

```gdscript
## Animates the teleport with particle bursts
func _do_teleport() -> void:
	teleport_particles.restart() # burst particles at departure
	var tween = create_tween() # create an animator
	tween.tween_property(self, "modulate:a", 0.0, 0.5) # fade to invisible
	await tween.finished # wait for fade to complete

	global_position = get_global_mouse_position() # teleport to mouse
	get_viewport().get_camera_2d().reset_smoothing() # reset camera smoothing

	teleport_particles.restart() # burst particles at arrival
	tween = create_tween() # new animator
	tween.tween_property(self, "modulate:a", 1.0, 0.5) # fade back in
```

Launch the game — a burst of purple particles explodes at the departure point, then another appears where the wizard reappears! 🪄

---

### Group - Lightning Storm

[Back to steps ⬆️](#workshop-steps)

![Group Image](./readme-images/challenges-group-lightning-storm.png)

> In this group, you'll transform wave 6 into a real electric storm! The arena will darken, lightning will illuminate the sky, and deadly strike zones will appear on the ground. If the wizard steps on one at the wrong moment… he loses health!

#### **Challenge 41 — Create the storm manager**

Open the scene `src/scenes/game/wave_manager/game.tscn`. In the scene tree, **right-click the root node** and choose **Add Child Node**.

Search for **`CanvasLayer`** and click **Create**. Rename it `Storm`.

In the **Inspector**, set the **`Layer`** property to `100` (so it renders on top of everything).

Now add three child nodes to `Storm`:

**The darkening overlay:**

- Right-click `Storm` → Add Child Node → **`ColorRect`**, rename it `DarkOverlay`
- In the Inspector, click **`Layout`** → **`Full Rect`** (to cover the whole screen)
- Set the color: `(R: 0, G: 0, B: 0, A: 180)` — semi-transparent black
- Uncheck **`Visible`** ❌

**The lightning flash:**

- Right-click `Storm` → Add Child Node → **`ColorRect`**, rename it `FlashOverlay`
- In the Inspector, click **`Layout`** → **`Full Rect`**
- Set the color: `(R: 140, G: 195, B: 255, A: 11)` — nearly opaque white
- Uncheck **`Visible`** ❌

**The flash timer:**

- Right-click `Storm` → Add Child Node → **`Timer`**, rename it `FlashTimer`
- `One Shot`: ✅, `Autostart`: ❌

**Right-click `Storm`** → **Attach Script**. Name it `storm.gd` and place it in `src/scenes/game/wave_manager/`. Click **Create**.

Save with **Ctrl+S**.

#### **Challenge 42 — Darken the arena during wave 6**

Open `storm.gd` and replace its content with this code:

> Find the wave number in the code and replace it with 1 so you can test more easily!

```gdscript
## Manages the visual effects of the electric storm in wave 6
extends CanvasLayer

@onready var dark_overlay: ColorRect = $DarkOverlay # the dark veil
@onready var flash_overlay: ColorRect = $FlashOverlay # the white flash
@onready var flash_timer: Timer = $FlashTimer # timer between flashes


func _ready() -> void:
	Signals.wave_started.connect(_on_wave_started) # listen for wave start signal
	flash_timer.timeout.connect(_on_flash_timer_timeout) # listen for timer end


## Triggers the storm when wave 6 starts
func _on_wave_started(wave_number: int) -> void:
	if wave_number == 6: # only in wave 6?
		dark_overlay.visible = true # darken the arena
		_schedule_next_lightning() # trigger the first flash


## Schedules the next flash after a random delay of 3 to 10 seconds
func _schedule_next_lightning() -> void:
	flash_timer.wait_time = randf_range(3.0, 10.0) # random duration
	flash_timer.start() # start the timer


## When the timer ends: flash the screen
func _on_flash_timer_timeout() -> void:
	flash_overlay.visible = true # white flash!
	await get_tree().create_timer(0.12).timeout # wait 0.12 seconds
	flash_overlay.visible = false # turn off the flash
	_schedule_next_lightning() # prepare the next one
```

Launch the game and survive to wave 6 — the arena goes dark and lightning illuminates the screen! ⚡

> 💡 **`randf_range(3.0, 10.0)`** generates a random decimal number between 3 and 10. **`await`** pauses the code until the timer ends, just like in teleportation.

<details>
<summary>Solution</summary>

The `Storm` scene tree should look like this:

```
Storm (CanvasLayer, layer = 100)
├── DarkOverlay (ColorRect, semi-transparent black, visible = false)
├── FlashOverlay (ColorRect, white, visible = false)
└── FlashTimer (Timer, one_shot = true)
```

</details>

---

#### **Challenge 43 — Create the lightning strike zone scene**

You'll create a new scene for ground strike zones — those **blinking yellow circles** that warn the player before lightning strikes! They use the same animation as the circles that appear before enemies.

In the **FileSystem**, right-click the folder `src/scenes/game/wave_manager/` → **New Scene**.

In the empty scene tree, click **Other Node** → search for **`Node2D`** → **Create**. Rename it `LightningStrike`.

Add the following child nodes to `LightningStrike`:

**The warning circle:**

- Add Child Node → **`Sprite2D`**, rename it `Warning`
- In the Inspector, click the **`Texture`** field → **Quick Load** → choose **`target.png`**
- Set **`Modulate`**: `(R: 238, G: 216, B: 0, A: 255)` — electric yellow

**The lightning impact animation:**

- Add Child Node → **`AnimatedSprite2D`**, rename it `Strike`
- In the Inspector, click **`Sprite Frames`** → **New SpriteFrames**
- Double-click the **SpriteFrames** resource that just appeared — the SpriteFrames panel opens at the bottom of the screen
- Click **Add frames from sprite sheet** (the grid icon with a +)
- Select **`assets/sprites/misc/thunder.png`**
- In the window that opens, set the grid: **`Horizontal` = 4**, **`Vertical` = 1**
- Select all 4 frames (Ctrl+A), then click **Add X frames**
- Back in the Inspector, set **`FPS`** to `30` (30 frames per second)
- Uncheck **`Visible`** ❌
- Make sure the `Animation Looping` icon is disabled! ![Animation Looping](./readme-images/challenges-lightning-animation-looping.png)

**The timer before impact (3 seconds of warning):**

- Add Child Node → **`Timer`**, rename it `StrikeTimer`
- `Wait Time`: `3.0`, `One Shot`: ✅, `Autostart`: ✅

**Right-click `LightningStrike`** → **Attach Script** → name it `lightning_strike.gd`, in `src/scenes/game/wave_manager/`. Click **Create**.

Save the scene with **Ctrl+S** as `lightning_strike.tscn` in `src/scenes/game/wave_manager/`.

Now open `lightning_strike.gd` and write this code:

```gdscript
## A lightning strike on a zone: blinking yellow circle, then animated lightning impact
extends Node2D

@onready var warning: Sprite2D = $Warning # the yellow warning circle
@onready var strike: AnimatedSprite2D = $Strike # the lightning animation
@onready var strike_timer: Timer = $StrikeTimer # the 3-second timer


func _ready() -> void:
	strike_timer.timeout.connect(_on_strike_timer_timeout) # listen for timer end
	_pulse_warning() # start the blinking animation


## Pulses the circle in a loop (same animation as enemy spawning!)
func _pulse_warning() -> void:
	var tween = create_tween().set_loops() # infinite loop
	tween.tween_property(warning, "scale", Vector2(1.2, 1.0), 0.35) # grows
	tween.parallel().tween_property(warning, "modulate", Color(1, 0.451, 0.224, 1), 0.35) # turns orange
	tween.tween_property(warning, "scale", Vector2(0.85, 0.75), 0.35) # shrinks
	tween.parallel().tween_property(warning, "modulate", Color(1, 0.933, 0.271, 1), 0.35) # back to yellow


## When 3 seconds have passed: trigger the impact!
func _on_strike_timer_timeout() -> void:
	warning.visible = false # hide the warning
	strike.visible = true # show the lightning
	strike.play("default") # play the animation
	_deal_damage() # check if the player is there
	await strike.animation_finished # wait for the animation to finish
	queue_free() # remove this zone


## Checks if the player is on the zone and deals damage
func _deal_damage() -> void:
	var player = GameData.player
	if player == null: # no player?
		return
	var distance = global_position.distance_to(player.global_position)
	if distance < 24: # player is in the zone?
		var dmg = DamageInformation.new() # create a damage object
		dmg.damage = 1 # 1 point of damage
		player.player_health.hurt_box.hurt.emit(dmg) # deal the damage!
```

> 💡 **`strike.play("default")`** plays the animation. **`await strike.animation_finished`** waits for all 4 frames to play before removing the zone. Sprite by [Gutima15](https://opengameart.org/content/thunder-sprite) (CC-BY 4.0).

<details>
<summary>Solution</summary>

The `LightningStrike` scene tree should look like this:

```
LightningStrike (Node2D)
├── Warning (Sprite2D, texture = target.png, modulate = yellow, visible = true)
├── Strike (AnimatedSprite2D, SpriteFrames = thunder.png 4 frames, visible = false)
└── StrikeTimer (Timer, wait_time = 3.0, one_shot = true, autostart = true)
```

</details>

---

#### **Challenge 44 — Spawn strike zones during wave 6**

Now we'll spawn between 30 and 70 strike zones randomly in the arena, regularly throughout wave 6.

Go back to `storm.gd`. Add a new **Timer** to the `Storm` scene:

In `game.tscn`, select the `Storm` node → Add Child Node → **`Timer`**, rename it `LightningSpawnTimer`.

In the Inspector: `Wait Time`: `4.0`, `One Shot`: ❌, `Autostart`: ❌

Save with **Ctrl+S**.

Now update `storm.gd` to add the spawn logic:

```gdscript
## Manages the visual effects of the electric storm in wave 6
extends CanvasLayer

@export var lightning_strike_scene: PackedScene # the strike zone scene

@onready var dark_overlay: ColorRect = $DarkOverlay # the dark veil
@onready var flash_overlay: ColorRect = $FlashOverlay # the white flash
@onready var flash_timer: Timer = $FlashTimer # timer between flashes
@onready var lightning_spawn_timer: Timer = $LightningSpawnTimer # the spawn timer


func _ready() -> void:
	Signals.wave_started.connect(_on_wave_started) # listen for wave start signal
	flash_timer.timeout.connect(_on_flash_timer_timeout) # listen for timer end
	lightning_spawn_timer.timeout.connect(_on_lightning_spawn_timer_timeout)


## Triggers the storm when wave 6 starts
func _on_wave_started(wave_number: int) -> void:
	if wave_number == 6: # only in wave 6?
		dark_overlay.visible = true # darken the arena
		_schedule_next_lightning() # trigger the first flash
		lightning_spawn_timer.start() # start spawning zones


## Schedules the next flash after a random delay of 3 to 10 seconds
func _schedule_next_lightning() -> void:
	flash_timer.wait_time = randf_range(3.0, 10.0) # random duration
	flash_timer.start() # start the timer


## When the timer ends: flash the screen
func _on_flash_timer_timeout() -> void:
	flash_overlay.visible = true # white flash!
	await get_tree().create_timer(0.12).timeout # wait 0.12 seconds
	flash_overlay.visible = false # turn off the flash
	_schedule_next_lightning() # prepare the next one


## Spawns between 30 and 70 strike zones in the arena
func _on_lightning_spawn_timer_timeout() -> void:
	var count = randi_range(30, 70) # how many strikes this round?
	for i in count: # repeat "count" times
		_spawn_strike()


## Places a strike zone at a random position in the play area
func _spawn_strike() -> void:
	if lightning_strike_scene == null: # is the scene assigned?
		return
	var zone = GameData.spawn_area # the area where enemies spawn
	var pos = Vector2(
		randf_range(zone.position.x, zone.end.x), # random x in the zone
		randf_range(zone.position.y, zone.end.y)  # random y in the zone
	)
	var strike = lightning_strike_scene.instantiate() # create a strike zone
	strike.global_position = pos # place it in the world
	GameData.game_root.add_child(strike) # add it to the main scene
```

In the Inspector of the `Storm` node (in `game.tscn`), you should now see the **`Lightning Strike Scene`** property.

Drag the `lightning_strike.tscn` file from the FileSystem onto this property.

Launch the game and survive to wave 6 — blinking yellow circles appear randomly in the arena, then lightning strikes! ⚡

> 💡 **`randi_range(30, 70)`** generates a random integer between 30 and 70. **`instantiate()`** creates a copy of a scene in the game — just like enemies that appear from their scenes!

<details>
<summary>Solution</summary>

In the Inspector of the `Storm` node, the `Lightning Strike Scene` property must point to `res://src/scenes/game/wave_manager/lightning_strike.tscn`.

</details>

---

### Upload Your Project

[Back to steps ⬆️](#workshop-steps)

1. Open the Windows folder at the following location: `C:\workspace\atelier-jeu-video`
2. Double-click the file `save.bat`, enter a backup name, and when prompted, choose ZIP.
3. After compression, you will find your project compressed as a ZIP file inside your video game project folder.
4. Click [this link to open the Google Drive folder directly](https://drive.google.com/drive/folders/1Nno74QtZJMh8ZiMtmIGogpXdfisY1pnj) in a web browser.
5. If you have not already done so, sign in with the account `lab.devoxx4kidsqc@gmail.com` — ask us for the password.
6. Drag your `******.zip` file into the browser to upload it to our Google Drive.
7. Ask the instructors for a printed QR code that contains the link to our page: [https://linktr.ee/devoxx4kids_montreal](https://linktr.ee/devoxx4kids_montreal)
8. Once you are home, go to this address in a web browser, then scroll down to the button with the Godot icon that links to the Google Drive folder containing your game.
9. You do not need to sign in to the account again, since the folder is public for downloading. You can even share the QR code with your friends if you want.

![Games-Google-Drive-Button](./readme-images/jeux-google-drive.png)

---

### Demo Your Game

[Back to steps ⬆️](#workshop-steps)

Done with your challenges? **Congratulations!** 🎉

It’s time to present your work to your parents. Explain to them:

- What are the main game engines used in the industry?
  - Answer: Unity, Unreal Engine, Godot
- What is an open-source game?
  - Answer: It is a game whose source code is public: anyone can read it, use it, modify it, and share it.
- What are Godot and GDScript?
  - Answer: Godot is a free and open-source game engine.
  - Answer: GDScript is Godot’s main programming language. It is inspired by Python.
- What did you modify in the game?
  - Answer:
  - Group 1: The wizard’s speed, becoming invincible, reducing enemy health, millions of enemies
  - Group 2: Shooting like a machine gun, doubling damage, changing the spawn formation, changing the waves
  - Group 3: Doubling the player’s speed, speeding up the fireball, fixing mouse aiming, adding a score variable, discovering signals
  - Group 4: Fixing mouse aiming, increasing the score with each kill, displaying the score on screen, creating a new wave
  - Group 5: Finding an open source sprite, importing it into Godot, replacing the wizard’s appearance
  - Group 6: Adding walls to the arena with collisions and a visible shape
  - Group 7: Changing the color of fireballs and explosions, tracking survival time, displaying it on screen
  - Group 8: Creating a continuous laser beam with RayCast2D, damage over time, automatic deactivation on enemy death
  - Group 9: Adding teleportation to the mouse cursor with E key, cooldown
  - Group 10: Transforming wave 6 into an electric storm: dark screen, lightning flashes, deadly strike zones
- Which challenge was the hardest? Why?
- Did you personalize the game? How?

---

## Home Installation

[Back to steps ⬆️](#workshop-steps)

Want to keep modifying the game at home? Follow these steps!

### Step 1 — Install Godot Engine

1. Go to [https://godotengine.org/download](https://godotengine.org/download)
2. Download **Godot Engine 4** (Standard, not .NET)
3. It's a `.zip` file — extract it and run the `Godot_v4.x.x...exe` executable
4. No installation needed: Godot runs directly!

### Step 2 — Download the Project

**Option A — After the workshop**

1. Click on the link to open the Google Drive where you uploaded your project
2. Download your project that you compressed in `.zip` format
3. Choose a folder on your computer to extract your project into, for example `C:\workspace\`
4. Place your `.zip` file in that folder
5. `Right-click` on the file and select `Extract All`
6. A window opens — confirm the extraction by clicking `Extract`

Your project is now ready to be opened once you launch Godot. Move on to [Step 3](#step-3---open-the-project)

**Option B - Direct download of the starter project**

1. Go to the project page: `https://github.com/montrealjug/atelier-jeu-video`
2. Click the green **`< > Code`** button, then **Download ZIP**
3. Extract the ZIP file to your desktop

**Option C — With Git (for the curious)**
If you have [Git](https://git-scm.com/downloads) installed, open a terminal and type:

```bash
git clone https://github.com/montrealjug/atelier-jeu-video
```

> 💡 **What is Git?** It's a tool that saves the full history of every change made to a project. It's what all professional developers use!

### Step 3 - Open the Project

1. Launch **Godot Engine**
2. In the **Project Manager**, click **Import**
3. Navigate to the project folder and select `project.godot`
4. Click **Import & Edit**
5. Press **F5** to play!

### Step 4 - Keep Going!

Pick up where you left off during the workshop. You can also invent your own improvements!

---

## 📚 Going Further

[Back to steps ⬆️](#workshop-steps)

### Godot & GDScript

- 📖 [Official Godot Documentation](https://docs.godotengine.org/en/stable/)
- 📖 [GDScript Basics](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)
- 🎓 [Your first Godot game (official tutorial)](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html)
- 🎥 [GDQuest — Godot tutorials (YouTube)](https://www.youtube.com/@Gdquest)

### Open Source & Programming

- 🌍 [Devoxx4Kids](https://www.devoxx4kids.org/) — The organization behind these workshops
- 💻 [GitHub](https://github.com) — Where developers share their Open Source code
- 🐍 [Learn Python](https://www.learnpython.org/) — Learn Python, a language similar to GDScript

## 🪳 Errors and Diagnostics

If you run into an error you can't fix, that's completely normal in programming!
Developers work on different machines with different configurations, and language and software versions change all the time. Programmers are hard workers 🧑‍💻
Here are issues we ran into ourselves — along with the solutions we found.

### 🚨 Panic mode — the project isn't working anymore!

Did you change a lot of things and the project stopped working? Don't panic — you can simply re-download it and start fresh!

- If you already know how to use GIT, run `git restore` at the root of your project
- Otherwise, you can always download it here:
  - Download the ZIP file here: [atelier-jeu-video](https://github.com/montrealjug/atelier-jeu-video/archive/refs/heads/main.zip)
  - It's an archive — extract the files inside. You can double-click it and copy-paste the files into any folder you like on your computer
  - Make sure Godot is closed
  - Replace the files of your old project with the new ones
  - Relaunch Godot and re-import the project if needed

### Godot Version / Imports

#### Error related to Godot Version

![Error to add](./readme-images/error-godot-import.png)

#### Solution

1. Download the latest version of Godot here: [Download](https://godotengine.org/download)
2. Extract the zip archive to a location of your choice, for example `C:\Program Files\Godot`
3. Your Godot folder should now contain two files, like below:

![New Version](./readme-images/error-godot-import-new-version.png)

4. Create a shortcut to `Godot_v4.6.1-stable_win64.exe` by right-clicking it. You can place the shortcut on your desktop, taskbar, or wherever you prefer.
5. Launch Godot from your new shortcut.
6. If it doesn't automatically detect the game project, import it by clicking `Import`. If it's already listed, you can launch it directly by clicking on it.

![Solution](./readme-images/error-godot-import-solution.png)

### Still stuck?

Contact us here ([Contacts](#contacts)), we'll be happy to help!

---

_Made with ❤️ for Devoxx4Kids Québec — Inspiring the next generation of game developers!_

## Contacts

Workshop designer: [Romain Dalichamp](https://linkfr.ee/romain.dalichamp)
Game creator & Developer: [Florian Rea](https://www.linkedin.com/in/florian-rea-57a7bb107)
Workshop facilitator: [Anthony Dahanne](https://www.linkedin.com/in/anthonydahanne)

## Workshop Commands

Some commands to properly reset a project

- Each child should start working on the local `workshop` branch
- Children do not push to the `workshop` branch, it's just to avoid working on the `main` branch
- `main` = `workshop`
- Each branch has code compatible with the other branches.
- In the workshop branch, you can easily run `git merge branch1 branch2 branch3` to get the solutions for the desired group
- The `solutions` branch contains all solutions already merged, with tags

<details>
<summary>Solution</summary>

```
git reset --hard origin/workshop
git merge challenges-group-fix-mouse-aiming challenges-group-score
```

</details>
