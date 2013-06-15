package suzen
{
   import gycu.Siv;
   import hunavefeg.Depyrew;
   import gokyc.Rud;
   import pugem.Account;
   import pomujukir.Suzoninib;


   public class Bif extends Siv
   {
      public function Bif() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var con:Depyrew;

      public var client:Rud;

      public var account:Account;

      public var qono:Suzoninib;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/init",{game_net:this.account.cug()});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         dom(param1,param2);
         return;
      }
   }

}