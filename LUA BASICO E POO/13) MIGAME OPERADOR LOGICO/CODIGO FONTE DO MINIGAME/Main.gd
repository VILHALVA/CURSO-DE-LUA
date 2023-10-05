extends PanelContainer

onready var light = $Content/MainContent/Light

onready var main_button_not = $Content/MainContent/NotContainer/Button
onready var main_border = $Content/MainContent/MainConditionPanel

onready var first_border = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/FirstConditionPanel
onready var first_button_not = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/FirstConditionPanel/HBoxContainer/ButtonNot
onready var first_button_bool = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/FirstConditionPanel/HBoxContainer/ButtonBool

onready var and_or_button = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/AndContainer/ButtonAndOr

onready var second_border = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/SecondConditionPanel
onready var second_button_not = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/SecondConditionPanel/HBoxContainer/ButtonNot
onready var second_button_bool = $Content/MainContent/MainConditionPanel/ConditionsContainer/InnerContainer/SecondConditionPanel/HBoxContainer/ButtonBool

var previous_value = true
export(bool) var main_condition = true
export(bool) var first_condition = true
export(bool) var is_first_true = true
export(bool) var second_condition = true
export(bool) var is_second_true = true

export(bool) var enable_main_not = false
export(bool) var enable_first_not = false
export(bool) var enable_second_not = false
export(bool) var is_middle_and = true

export(Resource) var theme_green
export(Resource) var theme_red

export(Texture) var light_on
export(Texture) var light_off

export(Color) var disabled_text_color = Color("#898c89")
export(Color) var enabled_text_color = Color("#7cf67b")
export(Color) var false_text_color = Color("#fb6161")

func _ready():
	previous_value = main_condition

func _process(delta):
	first_condition = (not enable_first_not and is_first_true) or (enable_first_not and not is_first_true)
	_set_not_color(first_button_not, enable_first_not)
	_set_bool_button(first_button_bool, is_first_true)
	_set_border(first_border, first_condition)
	
	second_condition = (not enable_second_not and is_second_true) or (enable_second_not and not is_second_true)
	_set_not_color(second_button_not, enable_second_not)
	_set_bool_button(second_button_bool, is_second_true)
	_set_border(second_border, second_condition)
	
	_set_not_color(main_button_not, enable_main_not)
	
	if is_middle_and:
		and_or_button.text = "AND"
		main_condition = first_condition and second_condition
	else:
		and_or_button.text = "OR"
		main_condition = first_condition or second_condition
	
	main_condition = (not enable_main_not and main_condition) or (enable_main_not and not main_condition)
		
	_set_border(main_border, main_condition)
	
	if previous_value != main_condition:
		light.texture = light_on if main_condition else light_off
	
	previous_value = main_condition	
	
func _set_not_color(button : Button, is_enabled):
	if is_enabled:
		button.add_color_override("font_color", enabled_text_color)
	else:
		button.add_color_override("font_color", disabled_text_color)	
		
func _set_bool_button(button : Button, is_true):
	if is_true:
		button.add_color_override("font_color", enabled_text_color)
		button.text = "TRUE"
	else:
		button.add_color_override("font_color", false_text_color)
		button.text = "FALSE"
		
func _set_border(panel : Panel, is_enabled):
	panel.add_stylebox_override("panel", theme_green if is_enabled else theme_red)

func _on_MainNot_pressed():
	enable_main_not = not enable_main_not

func _on_FirstNot_pressed():
	enable_first_not = not enable_first_not

func _on_FirstBool_pressed():
	is_first_true = not is_first_true

func _on_ButtonAndOr_pressed():
	is_middle_and = not is_middle_and

func _on_SecondNot_pressed():
	enable_second_not = not enable_second_not

func _on_SecondBool_pressed():
	is_second_true = not is_second_true
