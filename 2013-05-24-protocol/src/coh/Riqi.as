package coh
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.events.MouseEvent;


   public class Riqi extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Riqi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new hiredan());
         buttonMode=true;
         addEventListener(MouseEvent.CLICK,this.qikupaniv);
         return;
      }

      public static var hiredan:Class = Deb;

      public const siperu:Hugyqufyq = new Hugyqufyq();

      public var disabled:Boolean = false;

      public function tyreqar(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.disabled=param1;
         return;
      }

      private function qikupaniv(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.disabled)
         {
            this.siperu.dispatch();
            removeEventListener(MouseEvent.CLICK,this.qikupaniv);
         }
         return;
      }
   }

}