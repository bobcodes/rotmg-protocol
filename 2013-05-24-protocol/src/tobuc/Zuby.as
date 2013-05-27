package tobuc
{
   import flash.events.EventDispatcher;
   import lutyfopo.Console;
   import lutyfopo.Huzujuty;


   public class Zuby extends EventDispatcher
   {
      public function Zuby(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.console=param1;
         this.config=this.console.config;
         return;
      }

      protected var console:Console;

      protected var config:Huzujuty;

      protected function get remoter() : Wywysok {
         return this.console.remoter;
      }

      protected function report(param1:*="", param2:int=0, param3:Boolean=true, param4:String=null) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.console.report(param1,param2,param3,param4);
         return;
      }
   }

}