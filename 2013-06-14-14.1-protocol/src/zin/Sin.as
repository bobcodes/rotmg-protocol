package zin
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
   import taruco.KongregateAccountDetailDialog;
   import gycu.Cyqe;


   public class Sin extends Object
   {
      public function Sin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         _loc1_.add(new Levoje(this.ridecy,new KongregateAccountDetailDialog()));
         return _loc1_;
      }

      private function hoti() : Cyqe {
         return new Levoje(this.dinene,this.zop);
      }
   }

}