package qov
{
   import bidav.Vodyqupyg;
   import syba.Bacuqi;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public class Kalefu extends Object implements Vodyqupyg
   {
      public function Kalefu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var rynoq:Bacuqi;

      public var faqipugim:IEventDispatcher;

      private var penequsov:Object;

      public function set viewComponent(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.penequsov=param1;
         return;
      }

      public function initialize() : void {
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rynoq.nijof();
         return;
      }

      protected function include(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.rynoq.tetyfojif(IEventDispatcher(this.penequsov),param1,param2,param3);
         return;
      }

      protected function cymiz(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.rynoq.tetyfojif(this.faqipugim,param1,param2,param3);
         return;
      }

      protected function diwu(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.rynoq.kuba(IEventDispatcher(this.penequsov),param1,param2,param3);
         return;
      }

      protected function helypy(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.rynoq.kuba(this.faqipugim,param1,param2,param3);
         return;
      }

      protected function dispatch(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.faqipugim.hasEventListener(param1.type))
         {
            this.faqipugim.dispatchEvent(param1);
         }
         return;
      }
   }

}