extends Node3D

@onready var cube: MeshInstance3D = $RotatingCube
@onready var pause_menu: CanvasLayer = $PauseMenu

func _ready() -> void:
	pause_menu.node = self

func _process(delta: float) -> void:
	# Rotate the cube (when instance is active) to demonstrate how the
	# pause menu will stop all activities on the scene
	cube.rotate_y(delta)
	
	# Invoke the pause menu when ESC is pressed
	if Input.is_action_just_pressed("ui_cancel"):
		pause_menu.pause()
