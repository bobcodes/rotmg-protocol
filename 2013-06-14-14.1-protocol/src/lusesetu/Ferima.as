package lusesetu
{
   import flash.events.EventDispatcher;
   import flash.display.LoaderInfo;
   import flash.events.Event;


   public class Ferima extends EventDispatcher implements Remihegi
   {
      public function Ferima() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var cocypijy:LoaderInfo;

      override public function toString() : String {
         return this.cocypijy.toString();
      }

      override public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.cocypijy.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      override public function removeEventListener(param1:String, param2:Function, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.cocypijy.removeEventListener(param1,param2,param3);
         return;
      }

      override public function dispatchEvent(param1:Event) : Boolean {
         return this.cocypijy.dispatchEvent(param1);
      }

      override public function hasEventListener(param1:String) : Boolean {
         return this.cocypijy.hasEventListener(param1);
      }

      override public function willTrigger(param1:String) : Boolean {
         return this.cocypijy.willTrigger(param1);
      }

      public function set loaderInfo(param1:LoaderInfo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cocypijy=param1;
         return;
      }
   }

}