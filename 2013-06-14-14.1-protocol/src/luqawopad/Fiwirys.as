package luqawopad
{
   import gycu.Siv;
   import vilova.Sekevizi;
   import pugem.Account;
   import wijovu.Fymarafi;
   import cizagamym.Boquzojul;
   import gokyc.Rud;
   import myh.Suba;
   import tetapovuw.Tanuf;


   public class Fiwirys extends Siv implements Sekevizi
   {
      public function Fiwirys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var RotmgParameters:Fymarafi;

      public var ridecy:Boquzojul;

      public var client:Rud;

      private var kabam:Suba;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kabam=this.account as Suba;
         this.kabam.signedRequest=this.RotmgParameters.bawyquhi();
         this.kabam.userSession=this.RotmgParameters.muzemidyv();
         if(this.kabam.userSession==null)
         {
            this.ridecy.dispatch(new Tanuf());
            dom(false);
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
               entrytag:this.account.dyw()
            }
         ;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kabam/getcredentials",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         dom(param1,param2);
         return;
      }

      private function tyto(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         return;
      }
   }

}