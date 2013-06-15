package pejycaj
{
   import tytojonib.Kyjefe;
   import dyca.Mes;
   import cizagamym.Lebovas;
   import ginuly.Suvydod;
   import wohy.Gebusecyz;
   import wohy.Meso;
   import zipo.Vih;


   public class Ryzibajik extends Kyjefe
   {
      public function Ryzibajik() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public var view:ArenaLeaderboard;

      public var closeDialogs:Lebovas;

      public var suca:Suvydod;

      public var pivyco:Gebusecyz;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.suca.add(this.viwopagi);
         this.view.zajiqefe.add(this.fycetowac);
         this.view.close.add(this.lyb);
         this.view.init();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pivyco.huhadag();
         this.suca.remove(this.viwopagi);
         this.view.destroy();
         return;
      }

      private function lyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }

      private function fycetowac(param1:Meso) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vih = null;
         if(param1.danubebar())
         {
            this.view.padijuby(param1.qute());
         }
         else
         {
            _loc2_=this.difas.getInstance(Vih);
            _loc2_.filter=param1;
            _loc2_.start();
         }
         return;
      }

      private function viwopagi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.vywufa();
         return;
      }
   }

}