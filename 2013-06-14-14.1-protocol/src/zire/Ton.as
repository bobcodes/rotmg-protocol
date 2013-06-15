package zire
{
   import cinyj.Vobewabij;
   import vilova.Piwyc;
   import gycu.Feliro;
   import civino.Posobew;
   import cizagamym.Boquzojul;
   import pomujukir.Doli;
   import gycu.Befa;
   import gycu.Begotyl;
   import gycu.Levoje;
   import refeced.SteamAccountDetailDialog;
   import gycu.Cyqe;


   public class Ton extends Object
   {
      public function Ton() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Vobewabij;

      public var zop:Piwyc;

      public var bilizaw:Feliro;

      public var update:Posobew;

      public var ridecy:Boquzojul;

      public var dinene:Doli;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Befa = new Befa(this.zop,this.jime(),this.hoti());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function jime() : Begotyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.update));
         _loc1_.add(new Levoje(this.ridecy,new SteamAccountDetailDialog()));
         return _loc1_;
      }

      private function hoti() : Cyqe {
         return new Levoje(this.dinene,this.zop);
      }
   }

}