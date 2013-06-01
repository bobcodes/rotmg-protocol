package lyribor
{
[CLASS594]   import bikyvym.Voduzak;
   import flash.events.ErrorEvent;


   public class Tolebugi extends Object
   {
      public function Tolebugi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var wop:Voduzak;

      public var event:ErrorEvent;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.error(this.event.text);
         if((this.event["error"])&&this.event["error"] is Error)
         {
            this.bovico(this.event["error"]);
         }
         return;
      }

      private function bovico(param1:Error) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.error(param1.message);
         this.wop.error(param1.getStackTrace());
         return;
      }
   }
[/CLASS]
}