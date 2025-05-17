extends Node

const MOD_DIR: = "rin_jugatla-separate_digits"
const LOG_NAME: = "rin_jugatla-separate_digits:Main"

var mod_dir_path: = ""
var extensions_dir_path: = ""
var translations_dir_path: = ""

func _init() -> void :
	ModLoaderLog.info("Init", LOG_NAME)
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)
	extensions_dir_path = mod_dir_path.path_join("extensions")
	
	install_script_extensions()

## スクリプト拡張の登録
func install_script_extensions() -> void :
	var scripts = [
		"Scene/UI/PopupUI/UIShop/decorations/ui_shop_deco_normal.gd",
		"Scene/UI/PopupUI/UIShop/ui_shop_pack_item.gd",
		"Scene/UI/PopupUI/UIFarm/ui_farm_animal_detail.gd",
		"Scene/UI/PopupUI/UIFarm/ui_farm.gd",
	]
		
	for script in scripts:
		ModLoaderMod.install_script_extension(extensions_dir_path.path_join(script))

func _ready() -> void :
	ModLoaderLog.info("Ready", LOG_NAME)
