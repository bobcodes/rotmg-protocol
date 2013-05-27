package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Zel;
   import vevurar.Kikewu;
   import lazamipu.Nomoquna;


   public class Hapir extends Kalefu
   {
      public function Hapir() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Zel;

      public var zasajyso:Kikewu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.bokemipur.add(this.tov);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.bokemipur.remove(this.tov);
         return;
      }

      private function tov(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zasajyso.dispatch(new Nomoquna(this.view.accountId,param1));
         return;
      }
   }

}