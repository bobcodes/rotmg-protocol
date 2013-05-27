package dopumitud
{
   import gag.Fijarih;
   import ruwa.Account;
   import hotewa.Baqifa;
   import negirilu.Fuzi;


   public class Gefohi extends Fijarih
   {
      public function Gefohi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var muwi:Baqifa;

      public var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.bugi())
         {
            this.puwygiqed();
         }
         else
         {
            this.pin();
         }
         return;
      }

      private function puwygiqed() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/verifyage",this.pezosym());
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.venupog();
         _loc1_.isAgeVerified=1;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         syjavimu(param1,param2);
         return;
      }

      private function pin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.muwi.cufelehed(true);
         syjavimu(true);
         return;
      }
   }

}