package losiba
{
[CLASS1837]   import flash.events.EventDispatcher;
   import wacic.Console;
   import wacic.Mosu;


   public class Hubobag extends EventDispatcher
   {
      public function Hubobag(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.console=param1;
         this.config=this.console.config;
         return;
      }

      protected var console:Console;

      protected var config:Mosu;

      protected function get remoter() : Kelasydo {
         return this.console.remoter;
      }

      protected function report(param1:*="", param2:int=0, param3:Boolean=true, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.console.report(param1,param2,param3,param4);
         return;
      }
   }
[/CLASS]
}