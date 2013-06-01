package rareja
{
[CLASS1348]   import tysenyzy.Zovisis;
   import flash.display.DisplayObjectContainer;
   import nupuq.Tuwe;
   import flash.events.KeyboardEvent;


   public class Gyqymoc extends Zovisis
   {
      public function Gyqymoc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const sazakogyg:uint = 27;

      public var view:DisplayObjectContainer;

      public var sak:Tuwe;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==this.sazakogyg)
         {
            this.sak.dispatch();
         }
         return;
      }
   }
[/CLASS]
}