package kabam.rotmg.assets.services
{
[CLASS116]   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import com.company.util.BitmapUtil;
   import flash.display.Bitmap;


   public class Dejuceb extends Object
   {
      public function Dejuceb() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function makeCoin() : BitmapData {
         var _loc1_:BitmapData = TextureRedrawer.resize(AssetLibrary.zovy("lofiObj3",225),null,40,true,0,0);
         return neromutu(_loc1_);
      }

      public static function hycejomo() : BitmapData {
         var _loc1_:BitmapData = TextureRedrawer.resize(AssetLibrary.zovy("lofiObj3",224),null,40,true,0,0);
         return neromutu(_loc1_);
      }

      public static function celudico() : BitmapData {
         var _loc1_:BitmapData = TextureRedrawer.resize(AssetLibrary.zovy("lofiObj3",226),null,40,true,0,0);
         return neromutu(_loc1_);
      }

      private static function neromutu(param1:BitmapData) : BitmapData {
         var param1:BitmapData = TextureRedrawer.outlineGlow(param1,0,4.294967295E9);
         param1=BitmapUtil.wukofy(param1,10,10,param1.width-20,param1.height-20);
         return param1;
      }

      public function lofycuvy(param1:int) : Bitmap {
         var _loc2_:BitmapData = AssetLibrary.zovy("lofiInterfaceBig",param1);
         _loc2_=TextureRedrawer.redraw(_loc2_,320/_loc2_.width,true,0,0);
         return new Bitmap(_loc2_);
      }
   }
[/CLASS]
}