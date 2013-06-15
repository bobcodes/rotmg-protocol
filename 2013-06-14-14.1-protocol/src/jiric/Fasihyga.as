package jiric
{
   import dipy.Vubu;
   import gycu.Feliro;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import pomujukir.Bemivu;
   import gycu.Begotyl;
   import gycu.Levoje;
   import vuhek.GlobalNotificationActiontingCharacterView;
   import gycu.Befa;
   import gycu.Cyqe;
   import waryp.CharacterSelectionAndNewsScreen;


   public class Fasihyga extends Object
   {
      public function Fasihyga() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zop:Vubu;

      public var bilizaw:Feliro;

      public var ridecy:Boquzojul;

      public var closeDialogs:Lebovas;

      public var syfu:Bemivu;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.ridecy,new GlobalNotificationActiontingCharacterView()));
         _loc1_.add(new Befa(this.zop,this.jime(),this.hoti()));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function jime() : Cyqe {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.syfu,new CharacterSelectionAndNewsScreen()));
         _loc1_.add(new Levoje(this.closeDialogs));
         return _loc1_;
      }

      private function hoti() : Cyqe {
         return new Levoje(this.ridecy,"Unable to GlobalNotificationActionte character");
      }
   }

}