package vuvanadov
{
   import aaa.rotmg.account.Account;
   import aaa.rotmg.net.HttpClientWrapper;
   import aaa.rotmg.config.GoogleAppConfig;
   import flash.events.ErrorEvent;
   import com.company.util.Babepoc;


   public class Cadi extends Object
   {
      public function Cadi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var client:HttpClientWrapper;

      public var setup:GoogleAppConfig;

      public var event:ErrorEvent;

      private var error;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.event.preventDefault();
         this.error=this.event["error"];
         this.jip();
         var _loc1_:Array = [];
         _loc1_.push("Build: "+this.setup.getBuildDisplayLabel());
         _loc1_.push("message: "+this.jip());
         _loc1_.push("stackTrace: "+this.getStackTrace());
         _loc1_.push(Babepoc.hycis());
         this.client.cyhel(false);
         this.client.sendRequest("/clientError/add",
            {
               text:_loc1_.join("\n"),
               guid:this.account.getUserId()
            }
         );
         return;
      }

      private function jip() : String {
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

}