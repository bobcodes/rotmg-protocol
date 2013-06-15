package zin
{
   import vilova.Dofopilu;
   import cinyj.Vobewabij;
   import gycu.Feliro;
   import cizagamym.Boquzojul;
   import civino.Posobew;
   import pomujukir.Cuqoseze;
   import pomujukir.Doli;
   import pomujukir.Wizuwub;
   import gycu.Befa;
   import gycu.Cyqe;
   import gycu.Begotyl;
   import gycu.Levoje;
   import taruco.KongregateAccountDetailDialog;
   import suzen.Kodufanin;


   public class Tyb extends Object
   {
      public function Tyb() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zop:Dofopilu;

      public var data:Vobewabij;

      public var bilizaw:Feliro;

      public var ridecy:Boquzojul;

      public var update:Posobew;

      public var taja:Cuqoseze;

      public var dinene:Doli;

      public var luzej:Wizuwub;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Befa = new Befa(this.zop,this.heladu(),this.jaminedezu());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function heladu() : Cyqe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.luzej));
         _loc1_.add(new Levoje(this.ridecy,new KongregateAccountDetailDialog()));
         _loc1_.add(new Levoje(this.update));
         _loc1_.add(new Levoje(this.taja,this.wih()));
         return _loc1_;
      }

      private function jaminedezu() : Cyqe {
         return new Levoje(this.dinene,this.zop);
      }

      private function wih() : Kodufanin {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="linkKongregateAccount";
         return _loc1_;
      }
   }

}