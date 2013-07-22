package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new #if haxe3 Map <String, #else Hash <#end Dynamic> ();
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			className.set ("img/space-back.png", nme.NME_img_space_back_png);
			type.set ("img/space-back.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("img/space-set.png", nme.NME_img_space_set_png);
			type.set ("img/space-set.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/lib.swf", nme.NME_assets_lib_swf);
			type.set ("assets/lib.swf", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("libraries/lib.swf", nme.NME_libraries_lib_swf);
			type.set ("libraries/lib.swf", Reflect.field (AssetType, "binary".toUpperCase ()));
			
			library.set ("lib", Reflect.field (LibraryType, "swf".toUpperCase ()));
			
			initialized = true;
			
		}
		
	}
	
	
}


class NME_img_space_back_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_img_space_set_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_lib_swf extends flash.utils.ByteArray { }
class NME_libraries_lib_swf extends flash.utils.ByteArray { }