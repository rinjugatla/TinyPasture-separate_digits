extends Object
class_name DigitsUtility

## intを桁区切り
static func format_int_with_commas(number: int) -> String:
	var formated = format_number_text_with_commas(str(number))
	return formated

## floatを桁区切り
static func format_float_with_commas(number: float) -> String:
	var formated = format_number_text_with_commas(str(number))
	return formated

## 桁区切りされていない数値を桁区切り
static func format_number_text_with_commas(number_text: String) -> String:
	# ゲームアップデートで桁区切りに対応した場合に二重で桁区切りしないようチェック
	var has_comma = number_text.find(",") > -1
	if has_comma:
		return number_text

	var formated = str(number_text)
	var length = formated.length()
	while length > 3:
		formated = formated.insert(length - 3, ",")
		length -= 3
	return formated
