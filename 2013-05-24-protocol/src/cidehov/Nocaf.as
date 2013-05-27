package cidehov
{
   import gag.Fijarih;
   import komawowag.Becepog;
   import negirilu.Fuzi;
   import ruwa.Account;
   import raqu.Mojemetor;


   public class Nocaf extends Fijarih
   {
      public function Nocaf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qiqely:Becepog;

      public var client:Fuzi;

      public var account:Account;

      public var kusukezev:Mojemetor;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/init",{game_net:this.account.vajydor()});
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