package zire
{
   import vilova.Dofopilu;
   import cinyj.Vobewabij;
   import gycu.Feliro;
   import cizagamym.Boquzojul;
   import pomujukir.Cuqoseze;
   import civino.Posobew;
   import pomujukir.Doli;
   import pomujukir.Wizuwub;
   import gycu.Befa;
   import gycu.Begotyl;
   import gycu.Levoje;
   import refeced.SteamAccountDetailDialog;
   import suzen.Kodufanin;
   import gycu.Cyqe;


   public class Lojirij extends Object
   {
      public function Lojirij() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zop:Dofopilu;

      public var data:Vobewabij;

      public var bilizaw:Feliro;

      public var ridecy:Boquzojul;

      public var taja:Cuqoseze;

      public var update:Posobew;

      public var dinene:Doli;

      public var luzej:Wizuwub;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Befa = new Befa(this.zop,this.jime(),this.hoti());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function jime() : Begotyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.luzej));
         _loc1_.add(new Levoje(this.taja,this.wih()));
         _loc1_.add(new Levoje(this.update));
         _loc1_.add(new Levoje(this.ridecy,new SteamAccountDetailDialog()));
         return _loc1_;
      }

      private function wih() : Kodufanin {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="linkSteamAccount";
         return _loc1_;
      }

      private function hoti() : Cyqe {
         return new Levoje(this.dinene,this.zop);
      }
   }

}