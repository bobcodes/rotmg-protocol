package aaa.rotmg.tasks
{
   import gag.Fijarih;
   import komawowag.Becepog;
   import aaa.rotmg.net.HttpClientWrapper;
   import aaa.rotmg.account.Account;
   import raqu.Mojemetor;


   public class AppInitTask extends Fijarih
   {
      public function AppInitTask() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qiqely:Becepog;

      public var client:HttpClientWrapper;

      public var account:Account;

      public var kusukezev:Mojemetor;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/init",{game_net:this.account.getAccountType()});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }
   }

}