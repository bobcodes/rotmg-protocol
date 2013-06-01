package debi
{
[CLASS991]   import syfuqycy.Gyz;
   import leselo.Account;
   import jet.Varusici;
   import qiwyz.Bozakehy;


   public class Podygij extends Gyz
   {
      public function Podygij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var model:Varusici;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/getBeginnerPackageTimeLeft",this.account.dera());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.dojujuben(param2);
         return;
      }

      private function dojujuben(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = new XML(param1)[0];
         this.model.zapefor(_loc2_);
         pylebodyq(_loc2_>0);
         return;
      }
   }
[/CLASS]
}