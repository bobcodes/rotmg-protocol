package vuvanadov
{
   import komawowag.Becepog;
   import flash.events.ErrorEvent;


   public class Vyrydyl extends Object
   {
      public function Vyrydyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qiqely:Becepog;

      public var event:ErrorEvent;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.error(this.event.text);
         if((this.event["error"])&&this.event["error"] is Error)
         {
            this.tucohib(this.event["error"]);
         }
         return;
      }

      private function tucohib(param1:Error) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qiqely.error(param1.message);
         this.qiqely.error(param1.getStackTrace());
         return;
      }
   }

}