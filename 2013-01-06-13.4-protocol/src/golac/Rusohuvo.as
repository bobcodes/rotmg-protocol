package golac
{
[CLASS189]   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.BitmapUtil;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import flash.geom.Rectangle;


   public class Rusohuvo extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rusohuvo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const nyc:String = "redLootBag";

      public static const kutuha:int = 0;

      protected static function makeIcon() : DisplayObject {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObject = null;
         var _loc1_:BitmapData = AssetLibrary.zovy(nyc,kutuha);
         _loc1_=TextureRedrawer.redraw(_loc1_,40,true,0,0);
         _loc1_=BitmapUtil.wukofy(_loc1_,10,10,_loc1_.width-20,_loc1_.height-20);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=3;
         _loc2_.y=3;
         return _loc2_;
      }

      protected function positionText(param1:DisplayObject, param2:Capitu) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Rectangle = param1.getBounds(this);
         var _loc4_:Number = _loc3_.top+_loc3_.height/2;
         param2.x=_loc3_.right;
         param2.y=_loc4_-param2.height/2;
         return;
      }
   }
[/CLASS]
}