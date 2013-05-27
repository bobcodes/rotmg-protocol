package dopumitud
{
   import gag.Fijarih;
   import aaa.rotmg.account.Account;
   import aaa.rotmg.net.HttpClientWrapper;
   import wegyluke.Hez;
   import hotewa.Baqifa;


   public class Toq extends Fijarih
   {
      public function Toq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var price:int;

      public var client:HttpClientWrapper;

      public var naval:Hez;

      public var model:Baqifa;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/purchaseCharSlot",this.account.venupog());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }

      private function sahulusy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.pyjykusa(this.model.konor()+1);
         this.model.wemafowyq(-this.price);
         return;
      }
   }

}