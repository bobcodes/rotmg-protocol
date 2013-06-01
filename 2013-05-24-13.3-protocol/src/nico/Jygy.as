package nico
{
   import qov.Kalefu;
   import fulaw.Vihekivuc;
   import tuma.Cidumev;
   import tuma.Pabacidac;
   import fulaw.Dasin;


   public class Jygy extends Kalefu
   {
      public function Jygy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CharacterSkinListItem;

      public var model:Vihekivuc;

      public var livepype:Cidumev;

      public var ragyje:Pabacidac;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.hosaj);
         this.view.mypikody.add(this.repopal);
         this.view.out.add(this.jah);
         this.view.selected.add(this.pamucelo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.remove(this.hosaj);
         this.view.mypikody.remove(this.repopal);
         this.view.out.remove(this.jah);
         this.view.selected.remove(this.pamucelo);
         this.view.kyzosak(null);
         return;
      }

      private function repopal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ragyje.dispatch(this.view.wasyvohu());
         return;
      }

      private function jah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ragyje.dispatch(null);
         return;
      }

      private function hosaj() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dasin = this.view.wasyvohu();
         this.livepype.dispatch(_loc1_);
         return;
      }

      private function pamucelo(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.wasyvohu().piloni(param1);
         return;
      }
   }

}