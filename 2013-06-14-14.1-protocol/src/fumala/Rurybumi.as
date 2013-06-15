package fumala
{
   import tytojonib.Kyjefe;
   import flash.display.DisplayObjectContainer;
   import ranu.Hydogozeq;
   import flash.events.KeyboardEvent;


   public class Rurybumi extends Kyjefe
   {
      public function Rurybumi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const vunagynov:uint = 27;

      public var view:DisplayObjectContainer;

      public var mikipu:Hydogozeq;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==this.vunagynov)
         {
            this.mikipu.dispatch();
         }
         return;
      }
   }

}