package kofaz
{
   import tytojonib.Kyjefe;
   import sudiba.Ralybyzy;
   import dicyl.Syf;
   import wahyqise.Bunyr;
   import pugem.Account;
   import wahyqise.Ziky;
   import sudiba.Lyrawo;


   public class Fedaqy extends Kyjefe
   {
      public function Fedaqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Ralybyzy;

      public var addSpeechBalloon:Syf;

      public var pasyh:Bunyr;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.addSpeechBalloon.add(this.qiqopiqeb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.addSpeechBalloon.remove(this.qiqopiqeb);
         return;
      }

      private function qiqopiqeb(param1:Ziky) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = (this.account.zuqic())||(this.pasyh.tuj(param1.go.name_))?param1.text:". . .";
         this.view.addSpeechBalloon(new Lyrawo(param1.go,_loc2_,param1.background,param1.bacykasuv,param1.fagiqaco,param1.casibyko,param1.textColor,param1.cadeduh,param1.bold,param1.jatoq));
         return;
      }
   }

}