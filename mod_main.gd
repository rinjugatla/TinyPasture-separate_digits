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
		"Scene/UI/PopupUI/UIShop/decorations/ui_shop_deco_normal.gd", # 小物購入
		"Scene/UI/PopupUI/UIShop/decorations/ui_shop_deco_bg.gd", # 背景購入
		"Scene/UI/PopupUI/UIShop/ui_shop_pack_item.gd", # 動物購入
		"Scene/UI/PopupUI/UIFarm/ui_farm_animal_detail.gd", # 牧場動物詳細
		"Scene/UI/PopupUI/UIFarm/ui_farm.gd", # 牧場一覧
		"Scene/UI/PopupUI/UIShop/ui_shop_opened_pack.gd", # 動物購入後受け入れ確認画面
		"Scene/UI/PopupUI/UIFarm/animal_box/ui_upgrade_tip.gd", # 牧場動物拡張枠購入
		"Scene/UI/PopupUI/UIShop/ui_shop_page_facility_one.gd", # 施設購入
		"Scene/UI/PopupUI/UIShop/baby_creater.gd", # 神秘の草カーテン 施設購入を継承 
	]
		
	for script in scripts:
		ModLoaderMod.install_script_extension(extensions_dir_path.path_join(script))

func _ready() -> void :
	ModLoaderLog.info("Ready", LOG_NAME)
