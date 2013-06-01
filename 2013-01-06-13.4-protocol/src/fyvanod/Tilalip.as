package fyvanod
{
[CLASS956]   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import pudev.Capitu;
   import totuhare.Zufi;
   import flash.text.TextFieldAutoSize;


   public class Tilalip extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tilalip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const heh:int = 14;

      public static function soq() : DisplayObjectContainer {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(5460819);
         _loc1_.graphics.drawRoundRect(0,0,222,40,10,10);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      public static function makeText() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu();
         _loc1_.setStringBuilder(new Zufi().setParams("FusionStrength.text")).setAutoSize(TextFieldAutoSize.LEFT).setColor(FusionStrength.migy);
         waguconi(_loc1_);
         return _loc1_;
      }

      public static function hokyho() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu().setAutoSize(TextFieldAutoSize.RIGHT);
         waguconi(_loc1_);
         return _loc1_;
      }

      private static function waguconi(param1:Capitu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setVerticalAlign(Capitu.MIDDLE).setSize(heh).setBold(true);
         return;
      }
   }
[/CLASS]
}