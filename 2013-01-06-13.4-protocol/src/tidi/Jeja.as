package tidi
{
[CLASS423]   import tysenyzy.Zovisis;
   import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;
   import dutes.Rumevo;
   import tusidywuq.Nan;
   import tevyv.Taw;
   import tehakab.Supuvygac;
   import kirofyny.Hehuf;
   import dutes.Zevazogo;
   import dutes.Soz;
   import flash.display.Sprite;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import tehakab.Cusifyha;
   import jezi.Pyruleq;
   import guvakipe.Nedasefyg;
   import wohet.ConfirmDeleteCharacterDialog;


   public class Jeja extends Zovisis
   {
      public function Jeja() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CurrentCharacterRect;

      public var pukyso:Rumevo;

      public var gatav:Nan;

      public var model:Taw;

      public var qoh:Supuvygac;

      public var lyhog:Hehuf;

      public var goma:Zevazogo;

      public var titurusyn:Soz;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.add(this.wyralovoz);
         this.view.deleteCharacter.add(this.zare);
         this.view.showToolTip.add(this.kenygilac);
         this.view.hideTooltip.add(this.pidot);
         return;
      }

      private function kenygilac(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.goma.dispatch(param1);
         return;
      }

      private function pidot() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.titurusyn.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hideTooltip.remove(this.pidot);
         this.view.showToolTip.remove(this.kenygilac);
         this.view.selected.remove(this.wyralovoz);
         this.view.deleteCharacter.remove(this.zare);
         return;
      }

      private function wyralovoz(param1:SavedCharacter) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Cusifyha = this.qoh.waqy(param1.objectType());
         _loc2_.ryb(true);
         _loc2_.pikyremo.vobasyg(param1.skinType()).ryb(true);
         this.hujyc(param1);
         this.rysofyra(param1);
         return;
      }

      private function hujyc(param1:SavedCharacter) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Pyruleq = new Pyruleq();
         _loc2_.category="character";
         _loc2_.bozegyt="select";
         _loc2_.label=param1.tafetes();
         _loc2_.value=param1.level();
         this.pukyso.dispatch(_loc2_);
         return;
      }

      private function rysofyra(param1:SavedCharacter) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nedasefyg = new Nedasefyg();
         _loc2_.buny=false;
         _loc2_.charId=param1.charId();
         _loc2_.zyhafovyd=true;
         this.gatav.dispatch(_loc2_);
         return;
      }

      private function zare(param1:SavedCharacter) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model.select(param1);
         this.lyhog.dispatch(new ConfirmDeleteCharacterDialog());
         return;
      }
   }
[/CLASS]
}