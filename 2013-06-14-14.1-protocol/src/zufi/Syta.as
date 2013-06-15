package zufi
{
   import gycu.Siv;
   import poho.Pom;
   import gokyc.Rud;
   import pugem.Account;
   import lemugo.Wokycuku;
   import cizagamym.Boquzojul;
   import poho.Bul;
   import vysob.ErrorDialog;


   public class Syta extends Siv
   {
      public function Syta() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var skin:Pom;

      public var client:Rud;

      public var account:Account;

      public var player:Wokycuku;

      public var ridecy:Boquzojul;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.skin.setState(Bul.PURCHASING);
         this.player.gupemeqa(-this.skin.cost);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("account/purchaseSkin",this.jeviso());
         return;
      }

      private function jeviso() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.pedavitu();
         _loc1_.skinType=this.skin.id;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.vitig();
         }
         else
         {
            this.mokugusis(param2);
         }
         dom(param1,param2);
         return;
      }

      private function vitig() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.skin.setState(Bul.OWNED);
         this.skin.gowek(true);
         return;
      }

      private function mokugusis(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ErrorDialog = new ErrorDialog(param1);
         this.ridecy.dispatch(_loc2_);
         this.skin.setState(Bul.PURCHASABLE);
         this.player.gupemeqa(this.skin.cost);
         return;
      }
   }

}