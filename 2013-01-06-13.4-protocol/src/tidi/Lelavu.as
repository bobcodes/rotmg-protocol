package tidi
{
[CLASS410]   import tysenyzy.Zovisis;
   import qilarag.Gufaw;
   import dylaqezo.Vusun;
   import dutes.Sycanetal;
   import tusidywuq.Nan;
   import dutes.Zevazogo;
   import dutes.Soz;
   import dutes.Lumihat;
   import dutes.Dad;
   import dutes.Nanu;
   import tehakab.Supuvygac;
   import qilarag.CharacterSelectionAndNewsScreen;
   import fumyl.Segodi;
   import flash.display.Sprite;


   public class Lelavu extends Zovisis
   {
      public function Lelavu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Gufaw;

      public var jojun:Vusun;

      public var cucec:Sycanetal;

      public var gatav:Nan;

      public var goma:Zevazogo;

      public var titurusyn:Soz;

      public var gyp:Lumihat;

      public var ceqiru:Dad;

      public var qac:Nanu;

      public var qoh:Supuvygac;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.selected.add(this.wyralovoz);
         this.view.close.add(this.pikymasa);
         this.view.tooltip.add(this.rytiseron);
         this.view.buy.add(this.dasuco);
         this.gyp.add(this.nunaduz);
         this.ceqiru.add(this.hopakyl);
         this.view.initialize(this.jojun);
         return;
      }

      private function hopakyl(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.fapyjybo(this.jojun.gagesuno(),this.jojun.juzuf());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.selected.remove(this.wyralovoz);
         this.view.close.remove(this.pikymasa);
         this.view.tooltip.remove(this.rytiseron);
         this.view.buy.remove(this.dasuco);
         this.ceqiru.remove(this.hopakyl);
         this.gyp.remove(this.nunaduz);
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function wyralovoz(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qoh.waqy(param1).ryb(true);
         this.cucec.dispatch(new Segodi());
         return;
      }

      private function rytiseron(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.goma.dispatch(param1);
         }
         else
         {
            this.titurusyn.dispatch();
         }
         return;
      }

      private function nunaduz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.update(this.jojun);
         return;
      }

      private function dasuco(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qac.dispatch(param1);
         return;
      }
   }
[/CLASS]
}