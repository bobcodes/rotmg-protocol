package vofepimy
{
[CLASS665]   import syfuqycy.Gyz;
   import leselo.Account;
   import qiwyz.Bozakehy;
   import kirofyny.Hehuf;
   import dylaqezo.Vusun;


   public class Lilatopi extends Gyz
   {
      public function Lilatopi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var price:int;

      public var client:Bozakehy;

      public var lyhog:Hehuf;

      public var model:Vusun;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/purchaseCharSlot",this.account.dera());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         pylebodyq(param1,param2);
         return;
      }

      private function bagohuz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.jybuvibe(this.model.cuti()+1);
         this.model.kisom(-this.price);
         return;
      }
   }
[/CLASS]
}