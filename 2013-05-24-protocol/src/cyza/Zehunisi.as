package cyza
{
   import gag.Fijarih;
   import dopumitud.Suquzujow;
   import ruwa.Account;
   import vavufer.Bicowu;
   import negirilu.Fuzi;


   public class Zehunisi extends Fijarih implements Suquzujow
   {
      public function Zehunisi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var data:Bicowu;

      public var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/verify",
            {
               guid:this.data.username,
               password:this.data.password
            }
         );
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.tesaw(param2);
         }
         syjavimu(param1,param2);
         return;
      }

      private function tesaw(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(this.data.username,this.data.password);
         this.account.verify(_loc2_.hasOwnProperty("VerifiedEmail"));
         return;
      }
   }

}