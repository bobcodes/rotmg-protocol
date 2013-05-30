package ruwysepyd
{
   import qov.Kalefu;
   import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;
   import raqu.Sikywybu;
   import zubamyki.Qaf;
   import cicaqyp.Qejopahy;
   import fulaw.Vihekivuc;
   import wegyluke.Hez;
   import raqu.Hujuhy;
   import raqu.Goq;
   import flash.display.Sprite;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import fulaw.Jimi;
   import cidehov.Hyzifiraj;
   import cuwyg.Tibeto;
   import mipiqevul.ConfirmDeleteCharacterDialog;


   public class Tuw extends Kalefu
   {
      public function Tuw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CurrentCharacterRect;

      public var tyc:Sikywybu;

      public var luribodi:Qaf;

      public var model:Qejopahy;

      public var sydo:Vihekivuc;

      public var naval:Hez;

      public var kyzytanuh:Hujuhy;

      public var tihe:Goq;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.add(this.pamucelo);
         this.view.deleteCharacter.add(this.kibonuw);
         this.view.showToolTip.add(this.jequd);
         this.view.hideTooltip.add(this.rytyneby);
         return;
      }

      private function jequd(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyzytanuh.dispatch(param1);
         return;
      }

      private function rytyneby() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tihe.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hideTooltip.remove(this.rytyneby);
         this.view.showToolTip.remove(this.jequd);
         this.view.selected.remove(this.pamucelo);
         this.view.deleteCharacter.remove(this.kibonuw);
         return;
      }

      private function pamucelo(param1:SavedCharacter) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Jimi = this.sydo.lyt(param1.objectType());
         _loc2_.piloni(true);
         _loc2_.socucu.sek(param1.skinType()).piloni(true);
         this.lequ(param1);
         this.walo(param1);
         return;
      }

      private function lequ(param1:SavedCharacter) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Hyzifiraj = new Hyzifiraj();
         _loc2_.category="character";
         _loc2_.hiris="select";
         _loc2_.label=param1.lacop();
         _loc2_.value=param1.level();
         this.tyc.dispatch(_loc2_);
         return;
      }

      private function walo(param1:SavedCharacter) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Tibeto = new Tibeto();
         _loc2_.needsToCreateNewChar=false;
         _loc2_.charId=param1.charId();
         _loc2_.myto=true;
         this.luribodi.dispatch(_loc2_);
         return;
      }

      private function kibonuw(param1:SavedCharacter) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.select(param1);
         this.naval.dispatch(new ConfirmDeleteCharacterDialog());
         return;
      }
   }

}