package hapefapu
{
   import tidyka.Nakulogik;
   import raqu.Zer;
   import gag.Gawu;
   import hotewa.Baqifa;
   import zelinoryv.Vib;
   import lazamipu.Lamagocus;
   import gag.Poh;
   import gag.Bysyg;
   import gag.Myzawob;


   public class Tizoves extends Object
   {
      public function Tizoves() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zoritu:Nakulogik;

      public var update:Noruz;

      public var error:Zer;

      public var rurusedi:Gawu;

      public var player:Baqifa;

      public var death:Vib;

      public var model:Lamagocus;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zoritu.charId=this.sacazu();
         var _loc1_:Poh = new Poh(this.zoritu,this.dohesyz(),this.zyvyje());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function sacazu() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.player.kipygoh())&&(this.death.tecefado()))
         {
            return this.death.qajyzyn().charId_;
         }
         return -1;
      }

      private function dohesyz() : Bysyg {
         return new Myzawob(this.update);
      }

      private function zyvyje() : Bysyg {
         return new Myzawob(this.error,this.zoritu);
      }
   }

}