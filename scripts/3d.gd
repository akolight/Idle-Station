extends Node3D

func _ready():
	$"../Button2".set_visible(true)

func _on_button_2_pressed():
	$"../Button2".set_visible(false)
	$station_leave.play("station_leave")

func _on_station_arrive_animation_finished(station_arrive):
	$"../Button2".set_visible(true)

func _on_station_leave_animation_finished(station_leave):
	$station_arrive.play("station_arrive")
