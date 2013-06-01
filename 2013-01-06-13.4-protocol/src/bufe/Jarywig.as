package bufe
{
[CLASS653]   import syfuqycy.Gyz;
   import vofepimy.Poheg;
   import leselo.Account;
   import kunun.Dewa;
   import kirofyny.Hehuf;
   import qiwyz.Bozakehy;
   import zeva.Few;
   import fefiw.Gefu;


   public class Jarywig extends Gyz implements Poheg
   {
      public function Jarywig() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var parameters:Dewa;

      public var lyhog:Hehuf;

      public var client:Bozakehy;

      private var kabam:Few;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kabam=this.account as Few;
         this.kabam.signedRequest=this.parameters.wafemu();
         this.kabam.userSession=this.parameters.zydev();
         if(this.kabam.userSession==null)
         {
            this.lyhog.dispatch(new Gefu());
            pylebodyq(false);
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
               entrytag:this.account.wiqen()
            }
         ;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kabam/getcredentials",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         pylebodyq(param1,param2);
         return;
      }

      private function derazy(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.fuv(_loc2_.GUID,_loc2_.Secret);
         this.account.kowumaj(_loc2_.PlatformToken);
         return;
      }
   }
[/CLASS]
}