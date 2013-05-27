package ruwysepyd
{
   import qov.Kalefu;
   import sasacen.Qara;
   import sasacen.Gyla;
   import zubamyki.Behezefah;
   import fom.Fijotis;


   public class Zom extends Kalefu
   {
      public function Zom() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Vywitodi;

      public var gytoqyg:Qara;

      public var lim:Gyla;

      public var jizovip:Behezefah;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gytoqyg.add(this.vyc);
         this.lim.add(this.wucole);
         this.jizovip.add(this.vuboricy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gytoqyg.remove(this.vyc);
         this.lim.remove(this.wucole);
         this.jizovip.remove(this.vuboricy);
         return;
      }

      private function vyc(param1:Fijotis) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.gytoqyg(param1);
         return;
      }

      private function wucole(param1:Fijotis) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.lim(param1);
         return;
      }

      private function vuboricy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.parent.removeChild(this.view);
         return;
      }
   }

}