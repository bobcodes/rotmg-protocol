package namewo
{
   import flash.events.EventDispatcher;
   import flash.display.LoaderInfo;
   import flash.events.Event;


   public class Woz extends EventDispatcher implements Wudes
   {
      public function Woz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var genuripo:LoaderInfo;

      override public function toString() : String {
         return this.genuripo.toString();
      }

      override public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.genuripo.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      override public function removeEventListener(param1:String, param2:Function, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.genuripo.removeEventListener(param1,param2,param3);
         return;
      }

      override public function dispatchEvent(param1:Event) : Boolean {
         return this.genuripo.dispatchEvent(param1);
      }

      override public function hasEventListener(param1:String) : Boolean {
         return this.genuripo.hasEventListener(param1);
      }

      override public function willTrigger(param1:String) : Boolean {
         return this.genuripo.willTrigger(param1);
      }

      public function set loaderInfo(param1:LoaderInfo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.genuripo=param1;
         return;
      }
   }

}