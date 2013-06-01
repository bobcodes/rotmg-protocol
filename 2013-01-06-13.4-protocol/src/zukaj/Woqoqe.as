package zukaj
{
[CLASS110]   import syfuqycy.Gyz;
   import tehakab.Copaqufiv;
   import qiwyz.Bozakehy;
   import leselo.Account;
   import dylaqezo.Vusun;
   import kirofyny.Hehuf;
   import tehakab.Dur;
   import cejyva.ErrorDialog;


   public class Woqoqe extends Gyz
   {
      public function Woqoqe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var skin:Copaqufiv;

      public var client:Bozakehy;

      public var account:Account;

      public var player:Vusun;

      public var lyhog:Hehuf;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.skin.setState(Dur.PURCHASING);
         this.player.kisom(-this.skin.cost);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("account/purchaseSkin",this.wezukipu());
         return;
      }

      private function wezukipu() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.dera();
         _loc1_.skinType=this.skin.id;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.lyce();
         }
         else
         {
            this.videmujijo(param2);
         }
         pylebodyq(param1,param2);
         return;
      }

      private function lyce() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.skin.setState(Dur.OWNED);
         this.skin.ryb(true);
         return;
      }

      private function videmujijo(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ErrorDialog = new ErrorDialog(param1);
         this.lyhog.dispatch(_loc2_);
         this.skin.setState(Dur.PURCHASABLE);
         this.player.kisom(this.skin.cost);
         return;
      }
   }
[/CLASS]
}