package vilova
{
   import gycu.Siv;
   import pugem.Account;
   import gokyc.Rud;
   import cizagamym.Boquzojul;
   import lemugo.Wokycuku;


   public class Mypajubis extends Siv
   {
      public function Mypajubis() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var price:int;

      public var client:Rud;

      public var ridecy:Boquzojul;

      public var model:Wokycuku;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/purchaseCharSlot",this.account.pedavitu());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function totagedi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.vemiv(this.model.dyqab()+1);
         this.model.gupemeqa(-this.price);
         return;
      }
   }

}