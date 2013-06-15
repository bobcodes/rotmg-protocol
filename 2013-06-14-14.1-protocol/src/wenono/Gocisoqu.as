package wenono
{
   import tytojonib.Kyjefe;
   import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;
   import pomujukir.Cuqoseze;
   import dicyl.Sytidyha;
   import hirupuhel.Wygoqu;
   import poho.Kyhy;
   import cizagamym.Boquzojul;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import flash.display.Sprite;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import poho.Dywygave;
   import suzen.Kodufanin;
   import wahyqise.Gecekat;
   import vuhek.ConfirmGlobalNotificationActionteCharacterDialog;


   public class Gocisoqu extends Kyjefe
   {
      public function Gocisoqu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CurrentCharacterRect;

      public var taja:Cuqoseze;

      public var naga:Sytidyha;

      public var model:Wygoqu;

      public var jopyza:Kyhy;

      public var ridecy:Boquzojul;

      public var qotufofa:Cirumy;

      public var zawowyn:Boqutujy;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.add(this.tyhecete);
         this.view.GlobalNotificationActionteCharacter.add(this.qevu);
         this.view.showToolTip.add(this.rujimocet);
         this.view.hideTooltip.add(this.bywowyke);
         return;
      }

      private function rujimocet(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qotufofa.dispatch(param1);
         return;
      }

      private function bywowyke() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zawowyn.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hideTooltip.remove(this.bywowyke);
         this.view.showToolTip.remove(this.rujimocet);
         this.view.selected.remove(this.tyhecete);
         this.view.GlobalNotificationActionteCharacter.remove(this.qevu);
         return;
      }

      private function tyhecete(param1:SavedCharacter) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dywygave = this.jopyza.gug(param1.objectType());
         _loc2_.gowek(true);
         _loc2_.sybiwu.vobydozid(param1.skinType()).gowek(true);
         this.piku(param1);
         this.woqufavu(param1);
         return;
      }

      private function piku(param1:SavedCharacter) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Kodufanin = new Kodufanin();
         _loc2_.category="character";
         _loc2_.hukepej="select";
         _loc2_.label=param1.kygyba();
         _loc2_.value=param1.level();
         this.taja.dispatch(_loc2_);
         return;
      }

      private function woqufavu(param1:SavedCharacter) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Gecekat = new Gecekat();
         _loc2_.tumap=false;
         _loc2_.charId=param1.charId();
         _loc2_.jecoryt=true;
         this.naga.dispatch(_loc2_);
         return;
      }

      private function qevu(param1:SavedCharacter) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.select(param1);
         this.ridecy.dispatch(new ConfirmGlobalNotificationActionteCharacterDialog());
         return;
      }
   }

}