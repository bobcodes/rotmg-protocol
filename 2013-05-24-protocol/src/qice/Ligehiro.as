package qice
{
   import hotewa.Baqifa;
   import zelinoryv.Vib;
   import raqu.Pobu;
   import raqu.Calogu;
   import raqu.Wolugyty;
   import vevurar.Kikewu;
   import quqe.Wupeb;
   import lazamipu.Nomoquna;
   import lazamipu.Radil;
   import sakugyt.CharacterSelectionAndNewsScreen;


   public class Ligehiro extends Object
   {
      public function Ligehiro() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var player:Baqifa;

      public var model:Vib;

      public var vowopuc:Pobu;

      public var zogytuso:Calogu;

      public var bykiry:Wolugyty;

      public var zasajyso:Kikewu;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vowopuc.dispatch();
         if(this.model.tecefado())
         {
            this.tanaror();
         }
         else
         {
            this.cewotajyn();
         }
         return;
      }

      private function tanaror() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Wupeb = this.model.qajyzyn();
         var _loc2_:Radil = new Nomoquna(this.player.lyhiqumi(),_loc1_.charId_);
         this.zasajyso.dispatch(_loc2_);
         return;
      }

      private function cewotajyn() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bykiry.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }
   }

}