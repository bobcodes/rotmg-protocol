package cybehajij
{
   import gycu.Siv;
   import vilova.Sase;
   import pugem.Account;
   import pomujukir.Cuqoseze;
   import gokyc.Rud;
   import suzen.Kodufanin;


   public class Latuqodu extends Siv implements Sase
   {
      public function Latuqodu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var taja:Cuqoseze;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/sendVerifyEmail",this.account.pedavitu());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.cezyfodew();
         }
         else
         {
            this.vesajyj(param2);
         }
         return;
      }

      private function cezyfodew() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tyha();
         dom(true);
         return;
      }

      private function tyha() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="verifyEmailSent";
         this.taja.dispatch(_loc1_);
         return;
      }

      private function vesajyj(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.account.clear();
         dom(false);
         return;
      }
   }

}