# BarricadeManager.gd

extends Node

var barricades = []  # List to store barricades
var zombie_damage = 0  # Damage inflicted by zombies

func _ready():
    pass  # Initialization if needed

# Function to construct barricade
def construct_barricade(position: Vector2, strength: int):
    var barricade = {}  # Placeholder for barricade structure
    barricade.position = position
    barricade.strength = strength
    barricades.append(barricade)  # Add the barricade to the list
    print("Barricade constructed at: ", position)

# Function to handle zombie damage to barricades
def take_damage_from_zombie(damage: int):
    zombie_damage += damage  # Increment total damage
    for barricade in barricades:
        barricade.strength -= damage  # Reduce strength of barricade
        print("Barricade at ", barricade.position, " took damage. Current strength: ", barricade.strength)
        if barricade.strength <= 0:
            barricades.remove(barricade)  # Remove barricade if destroyed
            print("Barricade at ", barricade.position, " has been destroyed.")
