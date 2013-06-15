package nytifawy
{
   import tytojonib.Kyjefe;
   import pumoc.Zesihag;
   import civino.Wyvudasev;
   import micac.Ciqyl;
   import pusy.Riquzesi;
   import flash.events.MouseEvent;


   public class Vyvemof extends Kyjefe
   {
      public function Vyvemof() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Wojofug;

      public var model:Zesihag;

      public var mewyk:Wyvudasev;

      public var fer:Ciqyl;

      public var vizuke:Riquzesi;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.setup(this.model);
         this.vizuke.add(this.hojyvura);
         return;
      }

      private function hojyvura() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.fer.qyhowo)&&(this.fer.qyhowo.evalIsNotInCombatMapArea()))
         {
            this.view.addEventListener(MouseEvent.CLICK,this.zug);
         }
         else
         {
            this.view.mouseEnabled=false;
            this.view.mouseChildren=false;
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.removeEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mewyk.dispatch();
         return;
      }
   }

}