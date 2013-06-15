package cybehajij
{
   import gycu.Siv;
   import vilova.Baf;
   import pugem.Account;
   import cinyj.Vobewabij;
   import gokyc.Rud;


   public class Pujaw extends Siv implements Baf
   {
      public function Pujaw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var data:Vobewabij;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
            this.sapihaj(param2);
         }
         dom(param1,param2);
         return;
      }

      private function sapihaj(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(this.data.username,this.data.password);
         this.account.verify(_loc2_.hasOwnProperty("VerifiedEmail"));
         return;
      }
   }

}