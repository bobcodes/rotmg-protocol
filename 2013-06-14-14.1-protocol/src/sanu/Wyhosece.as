package sanu
{
   import vilova.Cypoj;
   import gycu.Feliro;
   import cizagamym.Lebovas;
   import cizagamym.Boquzojul;
   import pomujukir.Doli;
   import pomujukir.Cuqoseze;
   import gycu.Befa;
   import gycu.Cyqe;
   import gycu.Begotyl;
   import gycu.Levoje;
   import gabufo.WebAccountDetailDialog;
   import suzen.Kodufanin;


   public class Wyhosece extends Object
   {
      public function Wyhosece() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zop:Cypoj;

      public var bilizaw:Feliro;

      public var close:Lebovas;

      public var ridecy:Boquzojul;

      public var wywyqicut:Doli;

      public var taja:Cuqoseze;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Befa = new Befa(this.zop,this.difakuzid(),this.cybofaga());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function difakuzid() : Cyqe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.taja,this.jyc()));
         _loc1_.add(new Levoje(this.ridecy,new WebAccountDetailDialog()));
         return _loc1_;
      }

      private function cybofaga() : Cyqe {
         return new Levoje(this.wywyqicut,this.zop);
      }

      private function jyc() : Kodufanin {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="passwordChanged";
         return _loc1_;
      }
   }

}