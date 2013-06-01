package lyribor
{
[CLASS597]   import leselo.Account;
   import qiwyz.Bozakehy;
   import natus.Hewoda;
   import flash.events.ErrorEvent;
   import com.company.util.Kaf;


   public class Gos extends Object
   {
      public function Gos() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var client:Bozakehy;

      public var setup:Hewoda;

      public var event:ErrorEvent;

      private var error;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.event.preventDefault();
         this.error=this.event["error"];
         this.fofy();
         var _loc1_:Array = [];
         _loc1_.push("Build: "+this.setup.cakavuz());
         _loc1_.push("message: "+this.fofy());
         _loc1_.push("stackTrace: "+this.getStackTrace());
         _loc1_.push(Kaf.hija());
         this.client.qaz(false);
         this.client.sendRequest("/clientError/add",
            {
               text:_loc1_.join("\n"),
               guid:this.account.getUserId()
            }
         );
         return;
      }

      private function fofy() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.error is Error)
         {
            return this.error.message;
         }
         if(this.event!=null)
         {
            return this.event.text;
         }
         if(this.error!=null)
         {
            return this.error.toString();
         }
         return "(empty)";
      }

      private function getStackTrace() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.error is Error?Error(this.error).getStackTrace():"(empty)";
      }
   }
[/CLASS]
}