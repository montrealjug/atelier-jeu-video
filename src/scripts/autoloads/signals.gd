## Global game signals than can be emitted / listened from anywhere in the game
extends Node


signal enemy_died(enemy: Enemy)
signal wave_started(wave_number: int)
signal wave_finished(wave_number: int)
signal game_won
signal pickup_phase_finished
