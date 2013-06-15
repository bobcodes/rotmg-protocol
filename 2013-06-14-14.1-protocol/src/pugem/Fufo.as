package pugem
{
   import vilova.Mypajubis;
   import gycu.Feliro;
   import pomujukir.Bemivu;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import lemugo.Wokycuku;
   import pomujukir.Cuqoseze;
   import wenono.CharacterSlotNeedGoldDialog;
   import sefylew.BuyingDialog;
   import gycu.Begotyl;
   import gycu.Befa;
   import gycu.Levoje;
   import gycu.Cyqe;
   import waryp.CharacterSelectionAndNewsScreen;
   import suzen.Kodufanin;
   import vysob.ErrorDialog;


   public class Fufo extends Object
   {
      public function Fufo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var price:int;

      public var zop:Mypajubis;

      public var bilizaw:Feliro;

      public var syfu:Bemivu;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var model:Wokycuku;

      public var account:Account;

      public var taja:Cuqoseze;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.pipeva())
         {
            this.keliz();
         }
         else
         {
            this.cyziv();
         }
         return;
      }

      private function pipeva() : Boolean {
         return this.model.pucutad()<this.model.pyg();
      }

      private function keliz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new CharacterSlotNeedGoldDialog());
         return;
      }

      private function cyziv() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ridecy.dispatch(new BuyingDialog());
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Befa(this.zop,this.heladu(),this.jaminedezu()));
         _loc1_.add(new Levoje(this.gimenakal));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function heladu() : Cyqe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.syfu,new CharacterSelectionAndNewsScreen()));
         _loc1_.add(new Levoje(this.taja,this.jyc()));
         return _loc1_;
      }

      private function jyc() : Kodufanin {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="credits";
         _loc1_.hukepej="buyConverted";
         _loc1_.label="Character Slot";
         _loc1_.value=this.price;
         return _loc1_;
      }

      private function jaminedezu() : Cyqe {
         return new Levoje(this.ridecy,new ErrorDialog("Unable to complete character slot purchase"));
      }
   }

}