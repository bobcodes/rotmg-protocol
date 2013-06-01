package hine
{
[CLASS1131]   import flash.display.Sprite;
   import setuv.Tufyz;
   import pudev.Capitu;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Fypefugyz extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fypefugyz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.cyholule();
         this.vorum();
         return;
      }

      public static const nyc:String = "lofiInterfaceBig";

      public static const kafytyva:int = 21;

      public function setup(param1:Tufyz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         x=0;
         y=param1.mykubowob.height-param1.dud;
         return;
      }

      private function cyholule() : Capitu {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Capitu = null;
         var _loc1_:Zufi = new Zufi().setParams(Kefyfa.kok);
         _loc2_=new Capitu();
         _loc2_.setStringBuilder(_loc1_);
         _loc2_.x=29;
         addChild(_loc2_);
         return _loc2_;
      }

      private function vorum() : Bitmap {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.zovy(nyc,kafytyva);
         _loc1_=TextureRedrawer.redraw(_loc1_,20,true,0,0,false);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=-5;
         _loc2_.y=-10;
         addChild(_loc2_);
         return _loc2_;
      }
   }
[/CLASS]
}