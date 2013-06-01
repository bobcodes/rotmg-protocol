package teq
{
[CLASS676]   import syfuqycy.Gyz;
   import vofepimy.Rucikezab;
   import leselo.Account;
   import kyhawibyc.Fapu;
   import qiwyz.Bozakehy;


   public class Jajyvo extends Gyz implements Rucikezab
   {
      public function Jajyvo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var data:Fapu;

      public var client:Bozakehy;

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
            this.fuv(param2);
         }
         pylebodyq(param1,param2);
         return;
      }

      private function fuv(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.fuv(this.data.username,this.data.password);
         this.account.verify(_loc2_.hasOwnProperty("VerifiedEmail"));
         return;
      }
   }
[/CLASS]
}