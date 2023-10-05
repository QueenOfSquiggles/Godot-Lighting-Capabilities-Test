extends Node3D

@export var reflection_probes : Array[ReflectionProbe] = []

@onready var voxelgi : VoxelGI = $LightConfigurations/VoxelGI
@onready var lightmapgi : LightmapGI = $LightConfigurations/LightmapGI
@onready var world_environment : WorldEnvironment = $LightConfigurations/WorldEnvironment
@onready var anim : AnimationPlayer = $Animation/AnimationPlayer

func _on_sdfgi_toggled(button_pressed: bool) -> void:
	world_environment.environment.sdfgi_enabled = button_pressed

func _on_voxel_gi_toggled(button_pressed: bool) -> void:
	voxelgi.visible = button_pressed

func _on_lightmap_gi_toggled(button_pressed: bool) -> void:
	lightmapgi.visible = button_pressed

func _on_reflection_probes_toggled(button_pressed: bool) -> void:
	for probe in reflection_probes:
		probe.visible = button_pressed

func _on_pause_play_pressed() -> void:
	if anim.is_playing():
		anim.pause()
	else:
		anim.play()
