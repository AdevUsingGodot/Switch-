extends Node2D

@onready var label_2: Label = $Label2
@onready var camera_2d: Camera2D = $Camera2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animated_sprite_2d: AnimatedSprite2D = $"glass break anim"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(2).timeout
	animated_sprite_2d.play("default")
	await animated_sprite_2d.animation_finished
	await get_tree().create_timer(0.5).timeout
	animation_player.play("cameratomain")
	await animation_player.animation_finished
	await get_tree().create_timer(0.5).timeout
	Juicee.shake_camera(camera_2d, 8, 0.7)
	await get_tree().create_timer(0.9).timeout
	Juicee.typewriter(label_2, "I'm fine!", 10)
	await get_tree().create_timer(2).timeout
	Juicee.typewriter(label_2, "I guess...", 5)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
