# Devoxx4Kids Educational Dungeon

An educational dungeon game project designed to teach young kids how to create video games using the Godot Engine.

## About This Project

This project is part of the [Devoxx4Kids](https://www.devoxx4kids.org/) initiative, which aims to introduce children to programming and game development in a fun and engaging way. Through this dungeon-style game, kids learn fundamental game development concepts including:

- Character movement and controls
- Enemy AI and behavior patterns
- Health systems and combat mechanics
- Wave-based gameplay
- User interface design
- Game state management

## Game Overview

This is a top-down dungeon adventure game where players:
- Control a wizard character
- Fight against waves of different enemy
- Collect upgrades
- Survive increasingly difficult enemy waves

### Controls
- **Left stick**: Move the player
- **RT**: Primary attack
- **Pause**: Pause game

## Project Architecture

The project is organized into a clear, modular structure to help young developers understand how games are built:

### Root Directory Structure

```
├── assets/              # All game art, sounds, and media files
├── resources/           # Godot .tres resource files (stats, configurations)
├── src/                 # Source code and scenes
│   ├── scenes/          # Game objects and UI
│   └── scripts/         # Standalone GDScript code files
```

### Detailed Folder Breakdown

#### `/assets/` - Game Assets
All visual and audio content used in the game:

- **fonts/** - Text fonts for UI
- **sounds/** - Audio files
  - `music/` - Background music
  - `sfx/` - Sound effects
- **sprites/** - 2D graphics
  - `entities/` - Player and enemy sprites
  - `items/` - Collectible items
  - `ui/` - User interface graphics
  - `weapons/` - Weapon visuals
  - `tilemap/` - Dungeon floor and wall tiles
  - `misc/` - Other graphics

#### `/resources/` - Configuration Files
Godot resource files that define game parameters:

- **enemy_stats/** - Health, speed, and damage values for each enemy type
- **player_stats/** - Player character statistics
- **wave_data/** - Configuration for enemy waves
- **themes/** - UI styling and appearance
- **tile_set/** - Tilemap collision and visual setup
- **bus_layout/** - Audio mixing configuration

#### `/src/scenes/` - Game Objects
Visual scenes representing game entities and UI:

#### `/src/scripts/` - Code Logic
GDScript files containing utils, resource declarations and autoloads:

- **autoloads/** - Globally accessible systems
  - `game_data.gd` - Stores variables accessible from anywhere
  - `signals.gd` - Event communication system accessible from anywhere

- **resources/** - Custom resource type definitions

- **utils/** - Utility functions

## Technical Details

- **Engine**: Godot 4.5.1
- **Language**: GDScript

## Learning Objectives

By exploring and modifying this project, students will learn:

1. **Game Structure** - How to organize a game project into logical folders
2. **Scene System** - Building game objects from reusable components
3. **Scripting** - Writing code to control game behavior
4. **Resource Management** - Using external files for game data
5. **Game Design** - Balancing difficulty, creating engaging gameplay
6. **Debugging** - Finding and fixing issues in game logic

## Getting Started

1. Download and install [Godot Engine 4.5.1](https://godotengine.org/download)
2. Open Godot and import this project
3. Press F5 or click the "Play" button to run the game
4. Explore the scenes and scripts to understand how everything works
5. Try modifying values like player speed, enemy health, or wave difficulty

## Customization Ideas for Students

- Add a new enemy type with unique behavior
- Create additional power-ups or weapons
- Design new levels or arenas
- Modify enemy movement patterns
- Add new sound effects or music
- Create boss battles for special waves
- Add a scoring system

## Educational Resources

For more information about Devoxx4Kids workshops and learning materials, visit:
- [Devoxx4Kids Official Website](https://www.devoxx4kids.org/)
- [Godot Engine Documentation](https://docs.godotengine.org/)

---

Made with love for Devoxx4Kids - Inspiring the next generation of game developers!
