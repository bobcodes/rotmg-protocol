package havicokob
{
   import pugem.Account;
   import cizagamym.Boquzojul;
   import lemugo.Wokycuku;
   import pomujukir.Jafojuleq;
   import pomujukir.Mova;
   import gycu.Feliro;
   import suzen.PurchaseCharacterClassTask;
   import suzen.Bob;
   import vilova.Cetugev;
   import sefylew.Fadyqe;
   import gycu.Begotyl;
   import gycu.Befa;
   import gycu.Levoje;
   import gycu.Cyqe;
   import wenono.Jiwir;
   import komi.Vibemod;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Pykac extends Object
   {
      public function Pykac() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var classType:int;

      public var account:Account;

      public var ridecy:Boquzojul;

      public var kejisacok:Wokycuku;

      public var hebemeky:Jafojuleq;

      public var suwode:Mova;

      public var bilizaw:Feliro;

      public var zop:PurchaseCharacterClassTask;

      public var failure:Bob;

      public var fegiwesyn:Cetugev;

      private var cost:int;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cost=this.decec();
         if(!this.account.zuqic())
         {
            this.wimijigab();
         }
         else
         {
            if(this.hazana())
            {
               this.rori();
            }
            else
            {
               this.bikavyhu();
            }
         }
         return;
      }

      private function wimijigab() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new Fadyqe("In order to unlock a class type you must be a registered user."));
         this.hebemeky.dispatch();
         return;
      }

      private function rori() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kejisacok.gupemeqa(-1*this.cost);
         this.suwode.dispatch(this.classType);
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Befa(this.zop,this.fegiwesyn,this.jaminedezu()));
         _loc1_.add(new Levoje(this.hebemeky));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function jaminedezu() : Cyqe {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.failure.wudy=this.zop;
         return this.failure;
      }

      private function bikavyhu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jiwir = new Jiwir();
         _loc1_.vubah(Vibemod.zasedi,{cost:this.cost});
         this.ridecy.dispatch(_loc1_);
         this.hebemeky.dispatch();
         return;
      }

      private function decec() : int {
         return ObjectLibrary.ziq[this.classType].UnlockCost;
      }

      private function hazana() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !this.cost||this.cost<=this.kejisacok.pucutad();
      }
   }

}