extends "res://Scene/UI/PopupUI/UIFarm/ui_farm_animal_detail.gd"
const DigitsUtility = preload("res://mods-unpacked/rin_jugatla-separate_digits/digits_utility.gd")

func refresh():
	super()
	
	if animal.is_adult:
		var animal_data = FarmDB.get_animal_data(animal.type_id)
		var stored_coin = round(animal.stored_coin)
		var max_coin = round(animal.coin_speed * animal_data.drop_time[animal.rare_rank])
		txt_stored_coin.text = "%s / %s" % [
			DigitsUtility.format_float_with_commas(stored_coin), 
			DigitsUtility.format_float_with_commas(max_coin)
		]
	
	txt_time_coin.text = DigitsUtility.format_number_text_with_commas(txt_time_coin.text)
	txt_sell_price.text = DigitsUtility.format_number_text_with_commas(txt_sell_price.text)
