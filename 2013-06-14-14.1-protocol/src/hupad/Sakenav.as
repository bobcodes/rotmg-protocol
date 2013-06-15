package hupad
{
   import tytojonib.Kyjefe;
   import tygole.Govututa;
   import lemugo.Wokycuku;
   import dicyl.Sytidyha;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import flash.display.Sprite;
   import wahyqise.Gecekat;


   public class Sakenav extends Kyjefe
   {
      public function Sakenav() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Govututa;

      public var view:ResurrectionView;

      public var kejisacok:Wokycuku;

      public var naga:Sytidyha;

      public var ridecy:Boquzojul;

      public var closeDialogs:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.add(this.nydegazeq);
         this.view.vihiwav.add(this.sadofenuw);
         this.view.init(this.death.vocafeq().background);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vihiwav.remove(this.sadofenuw);
         this.view.closed.remove(this.nydegazeq);
         return;
      }

      private function sadofenuw(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ridecy.dispatch(param1);
         return;
      }

      private function nydegazeq() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closeDialogs.dispatch();
         var _loc1_:Gecekat = new Gecekat();
         _loc1_.tumap=false;
         _loc1_.charId=this.kejisacok.lobuwyjer;
         _loc1_.jecoryt=true;
         this.naga.dispatch(_loc1_);
         return;
      }
   }

}