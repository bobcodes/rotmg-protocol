package fuqefo
{
   import zacyka.Byhac;
   import pomujukir.Doli;
   import gycu.Feliro;
   import lemugo.Wokycuku;
   import tygole.Govututa;
   import lyhek.Kumiri;
   import gycu.Befa;
   import gycu.Cyqe;
   import gycu.Levoje;


   public class Hafazocam extends Object
   {
      public function Hafazocam() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zop:Byhac;

      public var update:Wenom;

      public var error:Doli;

      public var bilizaw:Feliro;

      public var player:Wokycuku;

      public var death:Govututa;

      public var model:Kumiri;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zop.charId=this.lynecagu();
         var _loc1_:Befa = new Befa(this.zop,this.difakuzid(),this.cybofaga());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function lynecagu() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.player.simyba())&&(this.death.buhizo()))
         {
            return this.death.vocafeq().charId_;
         }
         return -1;
      }

      private function difakuzid() : Cyqe {
         return new Levoje(this.update);
      }

      private function cybofaga() : Cyqe {
         return new Levoje(this.error,this.zop);
      }
   }

}