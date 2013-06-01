package coh
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;
   import flash.text.TextFieldAutoSize;


   public class Qudymasaj extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qudymasaj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const lacasoka:int = 14;

      public static function qijehokyt() : DisplayObjectContainer {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(5460819);
         _loc1_.graphics.drawRoundRect(0,0,222,40,10,10);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      public static function makeText() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = new Lufub();
         _loc1_.setStringBuilder(new Sire().setParams("FusionStrength.text")).setAutoSize(TextFieldAutoSize.LEFT).setColor(FusionStrength.pujores);
         nolys(_loc1_);
         return _loc1_;
      }

      public static function tosemucit() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setAutoSize(TextFieldAutoSize.RIGHT);
         nolys(_loc1_);
         return _loc1_;
      }

      private static function nolys(param1:Lufub) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setVerticalAlign(Lufub.MIDDLE).setSize(lacasoka).setBold(true);
         return;
      }
   }

}