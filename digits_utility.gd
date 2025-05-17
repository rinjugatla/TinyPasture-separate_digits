extends Object
class_name DigitsUtility

static func format_float_with_commas(number: float) -> String:
	var number_str = str(number)
	var length = number_str.length()
	while length > 3:
		number_str = number_str.insert(length - 3, ",")
		length -= 3
	return number_str
