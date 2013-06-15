package pury
{
   import vilova.Subumuriz;
   import gycu.Feliro;
   import pomujukir.Kovi;
   import cizagamym.Boquzojul;
   import gycu.Befa;
   import gycu.Cyqe;
   import gycu.Levoje;
   import waryp.CharacterSelectionAndNewsScreen;
   import vysob.ErrorDialog;


   public class Qici extends Object
   {
      public function Qici() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const gypamyh:String = "Unable to verify age";

      public var zop:Subumuriz;

      public var bilizaw:Feliro;

      public var syfu:Kovi;

      public var ridecy:Boquzojul;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Befa = new Befa(this.zop);
         _loc1_.dytunepos(this.heladu());
         _loc1_.vowakoty(this.jaminedezu());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function heladu() : Cyqe {
         return new Levoje(this.syfu,new CharacterSelectionAndNewsScreen());
      }

      private function jaminedezu() : Cyqe {
         return new Levoje(this.ridecy,new ErrorDialog(this.gypamyh));
      }
   }

}