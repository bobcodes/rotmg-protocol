package nytifawy
{
   import flash.display.Sprite;
   import pumoc.Zesihag;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Wojofug extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wojofug() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.kyjozysac();
         this.ketas();
         return;
      }

      public static const fyruke:String = "lofiInterfaceBig";

      public static const bezu:int = 21;

      public function setup(param1:Zesihag) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         x=0;
         y=param1.nabo.height-param1.vupute;
         return;
      }

      private function kyjozysac() : Guzowoja {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Guzowoja = null;
         var _loc1_:Kybidu = new Kybidu().setParams(Vibemod.noj);
         _loc2_=new Guzowoja();
         _loc2_.setStringBuilder(_loc1_);
         _loc2_.x=29;
         addChild(_loc2_);
         return _loc2_;
      }

      private function ketas() : Bitmap {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.tem(fyruke,bezu);
         _loc1_=TextureRedrawer.redraw(_loc1_,20,true,0,0,false);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=-5;
         _loc2_.y=-10;
         addChild(_loc2_);
         return _loc2_;
      }
   }

}