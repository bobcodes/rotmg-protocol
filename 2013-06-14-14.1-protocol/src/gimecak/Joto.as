package gimecak
{
   import hunavefeg.Depyrew;
   import flash.events.ErrorEvent;


   public class Joto extends Object
   {
      public function Joto() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var con:Depyrew;

      public var event:ErrorEvent;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.error(this.event.text);
         if((this.event["error"])&&this.event["error"] is Error)
         {
            this.fybufyty(this.event["error"]);
         }
         return;
      }

      private function fybufyty(param1:Error) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.con.error(param1.message);
         this.con.error(param1.getStackTrace());
         return;
      }
   }

}