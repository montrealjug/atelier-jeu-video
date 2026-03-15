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
│ FileSystem│   Viewport         │   Inspector   │
│ (your     │   (what you see    │   (node       │
│  files)   │    in the game)    │   properties) │
│           │                    │               │
├───────────┤                    ├───────────────┤
│ Scene     │                    │               │
│ (node     │                    │               │
│  tree)    │                    │               │
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

func _ready():
	print("The game starts!")  # Prints a message at startup

func _process(delta):
	position.x += speed * delta  # Moves the object to the right
```

- 📖 [Introduction to GDScript](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)

---

## Workshop Steps

Follow these steps below in order. Ask a workshop leader if you're stuck!

1. [x] **Install Godot** — if not already done — following the instructions in the [Home Installation](#home-installation) section below
2. [ ] **[Discover the game](#game-overview)** - 🎮 in Godot, discover the game and play for a few minutes to understand it
3. [ ] **[Open the project](#lets-play)** - 🎮 in Godot, discover the game and play for a few minutes to understand it
4. [ ] **[Explore the project](#file-structure)** - 📂 discover the files, folders, scenes, and scripts
5. [ ] **[Learn the code basics](#code-basics)** - 📖 to be ready to understand, modify, and program the game
6. [ ] **[Complete your challenges](#your-challenges)** ⚔️ Complete all the challenge steps below
   - [ ] **[Challenge Group 1](#group-1---explorer)** - 🔍 No code required
   - [ ] **[Challenge Group 2](#group-2---resource-tinkerer)** - ⚙️ Resource Tinkerer
   - [ ] **[Challenge Group 3](#group-3---code-reader)** - 📖 Code Reader - Understanding scripts
   - [ ] **[Challenge Group 4](#group-4---coder)** - 💻 Coder - Write code!
   - [ ] **[Challenge Group 5](#group-5---pixel-art-artist)** - 🎨 Pixel Art Artist - Customize your character
   - [ ] **[Challenge Group 6](#group-6---architect)** - 🏗️ Architect - Add Obstacles
   - [ ] **[Challenge Group 7](#group-7---creative-coder)** - 🎮 Creative Coder - Customize with code
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
if points > 10:
	print("You win!")
else:
	print("Not yet...")
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
func say_hello() -> void:
	print("Hello!")

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

### Group 1 - Explorer

[Back to steps ⬆️](#workshop-steps)

> In Group 1, you only modify **configuration files** (.tres) directly in the Godot editor. No coding needed!
>
> To open a `.tres` file: double-click it in the **FileSystem** panel (bottom left). Its properties appear in the **Inspector** (right side).

#### **Challenge 1 - Launch the game and survive!**

Press **F5**. Play for a few minutes. Try to survive the enemy waves. How many waves can you reach?

#### **Challenge 2 - Make the wizard super fast**

Open `resources/player_stats/player_stats.tres` in the Inspector.
Change **`Speed`** to `500`. Launch the game. Try `50`. Which value is the most fun?

#### **Challenge 3 - Become invincible**

In the same file, change **`Hp Max`** to `9999`. Launch the game. You can no longer die!

#### **Challenge 4 - One-shot the bats**

Open `resources/enemy_stats/bat_stats.tres`.
Change **`Hp Max`** to `1`. Bats now die in a single shot!

#### **Challenge 5 - Flood wave 1**

Open `resources/wave_data/wave1_data.tres`.
In the **`Sub Waves`** list, click on the first element. Change **`Amount`** to `20`.
Launch the game — you're surrounded!

---

### Group 2 - Resource Tinkerer

[Back to steps ⬆️](#workshop-steps)

> In Group 2, you keep modifying `.tres` files, but you explore more configuration options.

#### **Challenge 6 — Shoot like a machine gun**

In `resources/player_stats/player_stats.tres`, change **`Attack Cooldown`** to `0.05`.
(This value is the time in seconds between each shot. The smaller it is, the faster you shoot!)

#### **Challenge 7 — Double your damage**

Still in `player_stats.tres`, find **`Damage Information`** and click to open it. Change the **`Damage`** value. Try `50`!

#### **Challenge 8 — Change the spawn formation**

In `resources/wave_data/wave1_data.tres`, open a `SubWaveData` and change **`Pattern`**:

- `RANDOM`: enemies appear anywhere
- `CIRCLE`: they appear in a circle around you
- `CLUSTER`: they appear as a group

#### **Challenge 9 — Replace the enemies**

In the same wave, change **`Enemy Type`** to `KNIGHT` or `SPIDER`. Launch the game — surprise!

#### **Challenge 10 — Find your perfect balance**

Restore player stats to reasonable values, but keep the wave changes you prefer. Build a wave 1 that feels fun to play!

---

### Group 3 - Code Reader

[Back to steps ⬆️](#workshop-steps)

> In Group 3, you open real GDScript code files (`.gd`). The goal is to **read and understand**, then make small modifications.
>
> To open a script: double-click it in the **FileSystem**. It opens in the code editor.

#### **Challenge 11 — Read the player movement**

Open `src/scenes/entities/player/movement/player_movement.gd`.
You'll see the line: `player.velocity = input_vector * player_stats.speed`
This is where speed is applied! Modify the line to use `player_stats.speed * 2`. What happens?

#### **Challenge 12 — Speed up the fireball**

Open `src/scenes/entities/player/fireball/fireball.gd`.
Find the `speed` variable. You can also change it from the editor: in the `fireball.tscn` scene, click the root node and look for **`Speed`** in the Inspector. Set it to `1000`!

<details>
<summary>Solution</summary>

![Challenge 12 solution](./readme-images/find-speed-variable.png)

</details>

#### **Challenge 13 — Understand why aiming is broken**

Open `src/scenes/entities/player/weapon/weapon.gd`.
Read the `_process` function. See `get_right_stick_direction(0.1)`?
That's the direction of the right gamepad stick. If no one is using a gamepad, `current_direction` never changes… and the wizard always shoots right. This is the bug you'll fix in Challenge 16!

#### **Challenge 14 — Add a score variable**

Open `src/scripts/autoloads/game_data.gd`.
At the end of the file, add this line:

```gdscript
var score: int = 0
```

`GameData.score` will now be accessible from any script in the game.

#### **Challenge 15 — Discover signals**

Open `src/scripts/autoloads/signals.gd`.
You'll see `signal enemy_died(enemy: Enemy)`. This is a **signal**: when an enemy dies, this signal is sent to everyone listening.
Who is already listening? Search for `enemy_died.connect` in the project (**Project > Find in Files**).

---

### Group 4 - Coder

[Back to steps ⬆️](#workshop-steps)

> In Group 4, you **write code** to add new features. This is the hardest part — but also the most satisfying! 💪
>
> Don't forget to save your files after each change (**Ctrl+S**).

#### **Challenge 16 — Fix mouse aiming** ⭐ _(the main challenge!)_

In `src/scenes/entities/player/weapon/weapon.gd`, find this block in `_process`:

```gdscript
var right_stick_direction := get_right_stick_direction(0.1)
if right_stick_direction != Vector2.ZERO:
	current_direction = right_stick_direction
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
var right_stick_direction := get_right_stick_direction(0.1)
if right_stick_direction != Vector2.ZERO:
	current_direction = right_stick_direction
else:
	current_direction = (get_global_mouse_position() - global_position).normalized()
```

Launch the game — you can now aim with your mouse! 🎯

**What does this new line do?**
`get_global_mouse_position()` gives you the position of your mouse cursor in the game world.
We subtract `global_position` (the weapon's position) to get a vector pointing **from the weapon toward the mouse**.
Then `.normalized()` shrinks that vector to a length of 1, so the fireball always travels at the same speed regardless of how far the mouse is.

**Why add it in the `else` branch?**
The `if` already handles aiming with a gamepad's right stick.
The `else` only runs when **no joystick is being used** — so that's where we plug in the mouse.
This way the game works with both types of controls, without one interfering with the other.

</details>

#### **Challenge 17 — Increase the score on each kill**

In `src/scripts/autoloads/game_data.gd`, add a function to listen to the `enemy_died` signal:

```gdscript
func _ready() -> void:
	Signals.enemy_died.connect(_on_enemy_died)

func _on_enemy_died(_enemy: Enemy) -> void:
	score += 1
	print("Score: ", score)
```

Launch the game and watch the console at the bottom of Godot — the score goes up with every kill!

#### **Challenge 18 — Display the score on screen**

Open the scene `src/scenes/ui/hud/hud.tscn`.

In the scene tree (left panel), right-click the root node and add a **Label** node. Name it `ScoreLabel`.
Then, right-click the **ScoreLabel** node you just created and add a script to update this label:

```gdscript
@onready var score_label: Label = $ScoreLabel

func _process(_delta: float) -> void:
	score_label.text = "Score: " + str(GameData.score)
```

Finally, click **"2D"** in the toolbar at the very top of the editor to switch to the visual scene view.
In the scene tree on the left, select **ScoreLabel** with a left-click — you'll see it highlighted in red in the 2D scene.
Drag it wherever you want on screen, then launch the game to check that it works!

<details>
<summary>Solution</summary>

![Challenge 18 solution](./readme-images/score-2d.png)

</details>

#### **Challenge 19 — Create wave 6**

In the FileSystem, right-click `resources/wave_data/wave5_data.tres` and choose **Duplicate**. Rename the file to `wave6_data.tres`.
Open it and design the hardest wave you can imagine! More enemies, knights, archers…

<details>
<summary>Solution</summary>

![Challenge 19 solution](./readme-images/add-wave-step1.png)

</details>

#### **Challenge 20 — Add your wave 6 to the game**

Open the scene `src/scenes/game/wave_manager/game.tscn`. Click the **WaveManager** node in the tree. In the Inspector, find the **`Waves Data`** array and click **+** to add an entry. Select your `wave6_data.tres` file.
Launch the game and survive to your wave!

**Tip**: to save time while testing, after adding your wave to the WaveManager, use the 3 bars to the left of the number in the `Waves Data` column to drag your wave up and place it first.

<details>
<summary>Solution</summary>

![Challenge 20 solution](./readme-images/add-wave-step2.png)

</details>

---

### Group 5 - Pixel Art Artist

[Back to steps ⬆️](#workshop-steps)

> In Group 5, you'll **change the wizard's visual appearance** by replacing the sprite image with an open source character found online. No code required — this is a design challenge!
>
> Open source sprites are royalty-free images shared freely by the community. That's how Open Source works in the art world!

#### **Challenge 21 — Look at the current wizard sprite**

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

### Group 6 - Architect
[Back to steps ⬆️](#workshop-steps)

> In Group 6, you'll **add walls** to the arena to create physical obstacles. The wizard and enemies won't be able to pass through them — this completely changes how the game plays!
>
> In Godot, an object that blocks others is called a **StaticBody2D**. You give it a **CollisionShape2D** to define its shape, and a visual element so you can see it.

#### **Challenge 22 — Open the main game scene**

In the FileSystem, navigate to `src/scenes/game/wave_manager/` and double-click **`game.tscn`**.
You can see the arena in the Viewport. This is where you'll place your walls!

##### Create your first wall

In the scene tree on the left, **right-click the `LevelMap` node** and choose **Add Child Node**.
Search for **`StaticBody2D`** and click **Create**.
Rename it `Wall1` (double-click on the node in the scene tree to rename it).

##### Give it a collision shape

Right-click **`Wall1`** and add a child node **`CollisionShape2D`**.
Click that node in the tree. In the Inspector, click **Shape** and choose **New RectangleShape2D**.
Click on the new shape and set its size: **`x = 32`, `y = 32`** (a 32-pixel square).

##### Make the wall visible

Right-click **`Wall1`** and add a child node **`ColorRect`**.
In the Inspector, set **Size** to `Vector2(64, 64)` and **Color** to a stone-like color (e.g. dark grey `#606060`).
Also set the **Position** of the ColorRect to `Vector2(-32, -32)` to center it on the wall.

##### Duplicate and position 4 walls

Right-click **`Wall1`** in the scene tree and choose **Duplicate** — repeat 3 times to get `Wall2`, `Wall3`, and `Wall4`.
For each wall, select it and change its **Position** in the Inspector to spread them around the arena (e.g. `(-200, 0)`, `(200, 0)`, `(0, -150)`, `(0, 150)`).
Launch the game — the wizard and enemies can no longer walk through your walls!

---

### Group 7 - Creative Coder

[Back to steps ⬆️](#workshop-steps)

> In Group 7, you **write code** to customize the game your way. These challenges aren't necessarily harder — they're about **expressing your creativity through code**!

#### **Challenge 23 — Change the fireball color**

Open `src/scenes/entities/player/fireball/fireball.gd`.
In the `_ready()` function, after the two existing lines, add:

```gdscript
sprite.modulate = Color(0.5, 0, 1)  # purple fireballs!
```

Launch the game. Try other colors: `Color.GREEN`, `Color.BLUE`, `Color(1, 0.5, 0)` for orange, `Color.RED`…

#### **Challenge 24 — Change the explosion color**

In the same `fireball.gd` file, still inside `_ready()`, also add:

```gdscript
spark_particles.modulate = Color(0, 1, 0)  # green explosion sparks!
```

Launch the game and shoot fireballs — the sparks on impact change color!

#### **Challenge 25 — Track your survival time**

Open `src/scripts/autoloads/game_data.gd`.
Add a variable and a function to measure elapsed time:

```gdscript
var survival_time: float = 0.0

func _process(delta: float) -> void:
	survival_time += delta
```

`GameData.survival_time` now holds the number of seconds since the game started!

#### **Challenge 26 — Display the survival time on screen**

Open `src/scenes/ui/hud/hud.tscn`. Add a **Label** node and name it `TimeLabel`.
In the HUD script, add or complete the `_process` function to show the time:

```gdscript
@onready var time_label: Label = $TimeLabel

func _process(_delta: float) -> void:
	time_label.text = str(int(GameData.survival_time)) + "s"
```

#### **Challenge 27 — Print your stats by pressing Space**

In `src/scripts/autoloads/game_data.gd`, inside the `_process` function, add:

```gdscript
if Input.is_action_just_pressed("ui_accept"):  # Space bar
	print("Score: ", score, " | Time: ", int(survival_time), "s")
```

Launch the game and press **Space** during a run — your stats appear in the console at the bottom of Godot!

---

### Upload Your Project

[Back to steps ⬆️](#workshop-steps)

1. Open the Windows folder at the following location: `C:\workspace\`
2. `Right-click` on the `atelier-jeu-video` folder
3. Select `Compress to ...` `>` `ZIP File`
4. After compression, a file with the extension `******.zip` will be created. Rename it with your first name
5. Click on [this link to open the Google Drive folder directly](https://drive.google.com/drive/folders/1Nno74QtZJMh8ZiMtmIGogpXdfisY1pnj) in a web browser
6. Drag your `******.zip` file into the browser to upload it to our Google Drive
7. Ask the instructors for a paper QR code containing the link to our page [https://linktr.ee/devoxx4kids_montreal](https://linktr.ee/devoxx4kids_montreal)
8. Once at home, go to that address in a browser, scroll down to the button with the Godot icon that points to the Google Drive folder with your game

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

- 📖 [Official Godot Documentation (English)](https://docs.godotengine.org/en/stable/)
- 📖 [Official Godot Documentation (French)](https://docs.godotengine.org/fr/stable/)
- 📖 [GDScript Basics (English)](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)
- 📖 [GDScript Basics (French)](https://docs.godotengine.org/fr/stable/tutorials/scripting/gdscript/gdscript_basics.html)
- 🎓 [Your first Godot game (official tutorial, English)](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html)
- 🎓 [Your first Godot game (official tutorial, French)](https://docs.godotengine.org/fr/stable/getting_started/first_2d_game/index.html)
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
