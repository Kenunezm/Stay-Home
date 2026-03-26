extends Node

# Inventory Management System

# Stores the inventory items
var items = []

# Adds an item to the inventory
func add_item(item):
    items.append(item)
    print("Added item: " + item)

# Removes an item from the inventory
func remove_item(item):
    if item in items:
        items.erase(item)
        print("Removed item: " + item)
    else:
        print("Item not in inventory: " + item)

# Displays the inventory
func display_inventory():
    print("Current Inventory:")
    for item in items:
        print("- " + item)
