package haj
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import flash.text.TextFieldAutoSize;


   public class Rilako extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rilako() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const voquhubi:int = 14;

      public static function nato() : DisplayObjectContainer {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(5460819);
         _loc1_.graphics.drawRoundRect(0,0,222,40,10,10);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      public static function makeText() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja();
         _loc1_.setStringBuilder(new Kybidu().setParams("FusionStrength.text")).setAutoSize(TextFieldAutoSize.LEFT).setColor(FusionStrength.kidylicut);
         nusezeb(_loc1_);
         return _loc1_;
      }

      public static function bicydepyl() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setAutoSize(TextFieldAutoSize.RIGHT);
         nusezeb(_loc1_);
         return _loc1_;
      }

      private static function nusezeb(param1:Guzowoja) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.setVerticalAlign(Guzowoja.MIDDLE).setSize(voquhubi).setBold(true);
         return;
      }
   }

}