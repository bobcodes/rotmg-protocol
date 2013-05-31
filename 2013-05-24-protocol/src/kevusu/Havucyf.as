package kevusu
{
   import gag.Fijarih;
   import dopumitud.Jetemiqon;
   import aaa.rotmg.account.Account;
   import wokobewig.Haqy;
   import wegyluke.Hez;
   import aaa.rotmg.net.HttpClientWrapper;
   import aaa.rotmg.account.KabamAccount;
   import naj.Kajoraqu;


   public class Havucyf extends Fijarih implements Jetemiqon
   {
      public function Havucyf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var parameters:Haqy;

      public var naval:Hez;

      public var client:HttpClientWrapper;

      private var kabam:KabamAccount;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kabam=this.account as KabamAccount;
         this.kabam.signedRequest=this.parameters.mabyze();
         this.kabam.userSession=this.parameters.tol();
         if(this.kabam.userSession==null)
         {
            this.naval.dispatch(new Kajoraqu());
            syjavimu(false);
         }
         else
         {
            this.sendRequest();
         }
         return;
      }

      private function sendRequest() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = 
            {
               signedRequest:this.kabam.signedRequest,
               entrytag:this.account.getRotmgUrlLibParamEntryPoint()
            }
         ;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kabam/getcredentials",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }

      private function qasagyvo(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         return;
      }
   }

}