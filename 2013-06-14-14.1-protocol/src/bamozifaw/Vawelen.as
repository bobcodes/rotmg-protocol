package bamozifaw
{
   import flash.display.DisplayObject;
   import mukyrosu.Qanyduk;
   import flash.events.Event;


   public class Vawelen extends Object
   {
      public function Vawelen(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.target=param1;
         param1.addEventListener(Event.ADDED_TO_STAGE,this.kozebyj);
         return;
      }

      private var target:DisplayObject;

      private var humizoj:Qanyduk;

      private var kilojir:Qanyduk;

      private function kozebyj(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.target.removeEventListener(Event.ADDED_TO_STAGE,this.kozebyj);
         this.target.addEventListener(Event.REMOVED_FROM_STAGE,this.tuh);
         return;
      }

      private function tuh(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.target.addEventListener(Event.ADDED_TO_STAGE,this.kozebyj);
         this.target.removeEventListener(Event.REMOVED_FROM_STAGE,this.tuh);
         return;
      }

      public function get fakos() : Qanyduk {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.humizoj=(this.humizoj)||(new Qanyduk());
      }

      public function get wajudi() : Qanyduk {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.kilojir=(this.kilojir)||(new Qanyduk());
      }
   }

}