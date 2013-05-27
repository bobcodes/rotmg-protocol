package sygumagu
{
   import flash.display.DisplayObject;
   import tulunyno.Hugyqufyq;
   import flash.events.Event;


   public class Gobupi extends Object
   {
      public function Gobupi(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.target=param1;
         param1.addEventListener(Event.ADDED_TO_STAGE,this.nyp);
         return;
      }

      private var target:DisplayObject;

      private var rytegoj:Hugyqufyq;

      private var raqabema:Hugyqufyq;

      private function nyp(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.target.removeEventListener(Event.ADDED_TO_STAGE,this.nyp);
         this.target.addEventListener(Event.REMOVED_FROM_STAGE,this.fyqewu);
         return;
      }

      private function fyqewu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.target.addEventListener(Event.ADDED_TO_STAGE,this.nyp);
         this.target.removeEventListener(Event.REMOVED_FROM_STAGE,this.fyqewu);
         return;
      }

      public function get dejyvu() : Hugyqufyq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.rytegoj=(this.rytegoj)||(new Hugyqufyq());
      }

      public function get rucebukol() : Hugyqufyq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.raqabema=(this.raqabema)||(new Hugyqufyq());
      }
   }

}