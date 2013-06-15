package qymoho
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Turanojag;


   public class Taziw extends Sprite
   {
      public function Taziw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(new Nykajada());
         addChild(new Laresynop());
         addChild(new Turanojag());
         return;
      }
   }

}