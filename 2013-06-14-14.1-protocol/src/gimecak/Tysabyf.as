package gimecak
{
   import pugem.Account;
   import gokyc.Rud;
   import daqun.Qobeta;
   import flash.events.ErrorEvent;
   import com.company.util.Hocecu;


   public class Tysabyf extends Object
   {
      public function Tysabyf() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var client:Rud;

      public var setup:Qobeta;

      public var event:ErrorEvent;

      private var error;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.event.preventDefault();
         this.error=this.event["error"];
         this.runanoqi();
         var _loc1_:Array = [];
         _loc1_.push("Build: "+this.setup.vodupol());
         _loc1_.push("message: "+this.runanoqi());
         _loc1_.push("stackTrace: "+this.getStackTrace());
         _loc1_.push(Hocecu.niqose());
         this.client.sog(false);
         this.client.sendRequest("/clientError/add",
            {
               text:_loc1_.join("\n"),
               guid:this.account.getUserId()
            }
         );
         return;
      }

      private function runanoqi() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
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

}