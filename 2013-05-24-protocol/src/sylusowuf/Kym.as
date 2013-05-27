package sylusowuf
{
   import qov.Kalefu;
   import flash.display.DisplayObjectContainer;
   import nago.Bela;
   import flash.events.KeyboardEvent;


   public class Kym extends Kalefu
   {
      public function Kym() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const mozyba:uint = 27;

      public var view:DisplayObjectContainer;

      public var hilugev:Bela;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==this.mozyba)
         {
            this.hilugev.dispatch();
         }
         return;
      }
   }

}