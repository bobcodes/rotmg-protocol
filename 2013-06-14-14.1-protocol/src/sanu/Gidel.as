package sanu
{
   import pugem.Account;
   import pomujukir.Wizuwub;
   import pomujukir.Kovi;
   import lemugo.Zifi;
   import car.Pijiz;
   import fanij.Namejaja;
   import gycu.Siv;
   import flash.display.Sprite;
   import waryp.CharacterSelectionAndNewsScreen;


   public class Gidel extends Object
   {
      public function Gidel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var luzej:Wizuwub;

      public var hus:Kovi;

      public var wenuzehed:Zifi;

      public var sodoqif:Pijiz;

      public var cybeco:Namejaja;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.clear();
         this.luzej.dispatch();
         this.cybeco.jinud();
         this.sodoqif.byqato.addOnce(this.loc);
         this.sodoqif.start();
         return;
      }

      private function loc(param1:Siv, param2:Boolean, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.hus.dispatch(this.fubozop());
         return;
      }

      private function fubozop() : Sprite {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return new this.wenuzehed.ryginaqez()||CharacterSelectionAndNewsScreen();
      }
   }

}