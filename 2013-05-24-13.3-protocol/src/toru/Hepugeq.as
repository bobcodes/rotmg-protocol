package toru
{
   import gag.Fijarih;
   import fulaw.Dasin;
   import aaa.rotmg.net.HttpClientWrapper;
   import aaa.rotmg.account.Account;
   import hotewa.Baqifa;
   import wegyluke.Hez;
   import fulaw.Wuduler;
   import nas.ErrorDialog;


   public class Hepugeq extends Fijarih
   {
      public function Hepugeq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var skin:Dasin;

      public var client:HttpClientWrapper;

      public var account:Account;

      public var player:Baqifa;

      public var naval:Hez;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.skin.setState(Wuduler.PURCHASING);
         this.player.wemafowyq(-this.skin.cost);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("account/purchaseSkin",this.cogyrih());
         return;
      }

      private function cogyrih() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.venupog();
         _loc1_.skinType=this.skin.id;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.tetorakyf();
         }
         else
         {
            this.botewa(param2);
         }
         syjavimu(param1,param2);
         return;
      }

      private function tetorakyf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.skin.setState(Wuduler.OWNED);
         this.skin.piloni(true);
         return;
      }

      private function botewa(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ErrorDialog = new ErrorDialog(param1);
         this.naval.dispatch(_loc2_);
         this.skin.setState(Wuduler.PURCHASABLE);
         this.player.wemafowyq(this.skin.cost);
         return;
      }
   }

}