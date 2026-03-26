extends Node

# Define the various states of the game
enum State {
    INTRO,
    DEFENSE,
    SURVIVAL,
    GAME_OVER
}

var current_state = State.INTRO

func _ready():
    # Initialize the game state
    change_state(State.INTRO)

func change_state(new_state):
    current_state = new_state
    match current_state:
        State.INTRO:
            print("Entering INTRO stage")
            # Additional logic for INTRO
        State.DEFENSE:
            print("Entering DEFENSE stage")
            # Additional logic for DEFENSE
        State.SURVIVAL:
            print("Entering SURVIVAL stage")
            # Additional logic for SURVIVAL
        State.GAME_OVER:
            print("Entering GAME OVER stage")
            # Additional logic for GAME_OVER

func update():
    match current_state:
        State.INTRO:
            # Update logic for INTRO
            pass
        State.DEFENSE:
            # Update logic for DEFENSE
            pass
        State.SURVIVAL:
            # Update logic for SURVIVAL
            pass
        State.GAME_OVER:
            # Update logic for GAME_OVER
            pass
