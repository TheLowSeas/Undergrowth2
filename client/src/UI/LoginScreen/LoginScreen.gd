extends Control

onready var username_input = get_node("background/VBoxContainer/Username")
onready var ip = get_node("background/VBoxContainer/IP")
onready var login_button = get_node("background/VBoxContainer/loginButton")

func _on_loginButton_pressed():
	if username_input.text == "" or ip.text == "":
		print("please provide valid userID and password")
	else:
		login_button.disabled = true
		var username = username_input.text
		print("attempting login")
		GameServer.ConnectToServer(ip.text)
