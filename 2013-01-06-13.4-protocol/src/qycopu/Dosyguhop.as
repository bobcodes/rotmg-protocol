package qycopu
{
[CLASS1319]   import tysenyzy.Zovisis;
   import dylaqezo.Vusun;
   import tehakab.Supuvygac;
   import wociwa.Roharymuw;
   import kirofyny.Tiqimav;
   import tehakab.Pytowiwow;


   public class Dosyguhop extends Zovisis
   {
      public function Dosyguhop() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ReskinCharacterView;

      public var player:Vusun;

      public var model:Supuvygac;

      public var kefuta:Roharymuw;

      public var closeDialogs:Tiqimav;

      private var pikyremo:Pytowiwow;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pikyremo=this.vedawumok();
         this.view.selected.add(this.wyralovoz);
         this.view.gytejus.add(this.rep);
         return;
      }

      private function vedawumok() : Pytowiwow {
         return this.model.docew().pikyremo;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.selected.remove(this.wyralovoz);
         this.view.gytejus.remove(this.rep);
         return;
      }

      private function wyralovoz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         this.kefuta.dispatch(this.pikyremo.nina());
         return;
      }

      private function rep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}