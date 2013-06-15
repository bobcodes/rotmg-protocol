package kabam.rotmg.assets.services
{
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import com.company.util.BitmapUtil;
   import flash.display.Bitmap;


   public class Zog extends Object
   {
      public function Zog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function makeCoin() : BitmapData {
         var _loc1_:BitmapData = TextureRedrawer.resize(AssetLibrary.tem("lofiObj3",225),null,40,true,0,0);
         return vop(_loc1_);
      }

      public static function rycyges() : BitmapData {
         var _loc1_:BitmapData = TextureRedrawer.resize(AssetLibrary.tem("lofiObj3",224),null,40,true,0,0);
         return vop(_loc1_);
      }

      public static function kubatyf() : BitmapData {
         var _loc1_:BitmapData = TextureRedrawer.resize(AssetLibrary.tem("lofiObj3",226),null,40,true,0,0);
         return vop(_loc1_);
      }

      private static function vop(param1:BitmapData) : BitmapData {
         var param1:BitmapData = TextureRedrawer.outlineGlow(param1,0,4.294967295E9);
         param1=BitmapUtil.kodopomid(param1,10,10,param1.width-20,param1.height-20);
         return param1;
      }

      public function pap(param1:int) : Bitmap {
         var _loc2_:BitmapData = AssetLibrary.tem("lofiInterfaceBig",param1);
         _loc2_=TextureRedrawer.redraw(_loc2_,320/_loc2_.width,true,0,0);
         return new Bitmap(_loc2_);
      }
   }

}