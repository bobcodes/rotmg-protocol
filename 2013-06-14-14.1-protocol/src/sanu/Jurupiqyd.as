package sanu
{
   import vilova.Piwyc;
   import gycu.Feliro;
   import pomujukir.Doli;
   import civino.Posobew;
   import cizagamym.Boquzojul;
   import pomujukir.Cuqoseze;
   import gycu.Befa;
   import gycu.Cyqe;
   import gycu.Begotyl;
   import gycu.Levoje;
   import gabufo.WebAccountDetailDialog;
   import suzen.Kodufanin;


   public class Jurupiqyd extends Object
   {
      public function Jurupiqyd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zop:Piwyc;

      public var bilizaw:Feliro;

      public var dinene:Doli;

      public var vuf:Posobew;

      public var ridecy:Boquzojul;

      public var taja:Cuqoseze;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Befa = new Befa(this.zop,this.difakuzid(),this.cybofaga());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function difakuzid() : Cyqe {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.taja,this.wih()));
         _loc1_.add(new Levoje(this.vuf));
         _loc1_.add(new Levoje(this.ridecy,new WebAccountDetailDialog()));
         return _loc1_;
      }

      private function cybofaga() : Levoje {
         return new Levoje(this.dinene,this.zop);
      }

      private function wih() : Kodufanin {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="accountRegistered";
         return _loc1_;
      }
   }

}