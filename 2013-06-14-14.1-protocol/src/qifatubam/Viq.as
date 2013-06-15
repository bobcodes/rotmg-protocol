package qifatubam
{
   import flash.events.EventDispatcher;
   import zipirytab.Console;
   import zipirytab.Winit;


   public class Viq extends EventDispatcher
   {
      public function Viq(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.console=param1;
         this.config=this.console.config;
         return;
      }

      protected var console:Console;

      protected var config:Winit;

      protected function get remoter() : Segar {
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