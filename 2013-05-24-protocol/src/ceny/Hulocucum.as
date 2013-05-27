package ceny
{
   import flash.display.Sprite;
   import pepyca.Fifu;
   import movimet.Lufub;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Hulocucum extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hulocucum() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.honeg();
         this.majefyk();
         return;
      }

      public static const nuqewilyw:String = "lofiInterfaceBig";

      public static const keqoz:int = 21;

      public function setup(param1:Fifu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         x=0;
         y=param1.cucivizyw.height-param1.qocalopag;
         return;
      }

      private function honeg() : Lufub {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Lufub = null;
         var _loc1_:Sire = new Sire().setParams(I18nKeys.hapuc);
         _loc2_=new Lufub();
         _loc2_.setStringBuilder(_loc1_);
         _loc2_.x=29;
         addChild(_loc2_);
         return _loc2_;
      }

      private function majefyk() : Bitmap {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = AssetLibrary.jeqycu(nuqewilyw,keqoz);
         _loc1_=TextureRedrawer.redraw(_loc1_,20,true,0,0,false);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=-5;
         _loc2_.y=-10;
         addChild(_loc2_);
         return _loc2_;
      }
   }

}