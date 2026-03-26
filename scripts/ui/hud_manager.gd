extends Node2D

# This script manages the heads-up display (HUD) for the game.

# Variables for the HUD elements
var score_label: Label
var health_label: Label

func _ready():
    # Initialize HUD elements
    score_label = $ScoreLabel
    health_label = $HealthLabel
    update_hud(0, 100) # Example initial values

func update_hud(score: int, health: int):
    # Update score and health displays
    score_label.text = "Score: %d" % score
    health_label.text = "Health: %d" % health

func update_score(score: int):
    # Increment score
    score_label.text = "Score: %d" % score

func update_health(health: int):
    # Update the health
    health_label.text = "Health: %d" % health
