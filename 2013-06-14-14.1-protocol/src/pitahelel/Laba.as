package pitahelel
{
   import tytojonib.Kyjefe;
   import lemugo.Wokycuku;
   import poho.Kyhy;
   import fodusy.Fihygoce;
   import cizagamym.Lebovas;
   import poho.Wumyziju;


   public class Laba extends Kyjefe
   {
      public function Laba() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ReskinCharacterView;

      public var player:Wokycuku;

      public var model:Kyhy;

      public var nuwebo:Fihygoce;

      public var closeDialogs:Lebovas;

      private var sybiwu:Wumyziju;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sybiwu=this.hilavuw();
         this.view.selected.add(this.tyhecete);
         this.view.fil.add(this.notelo);
         return;
      }

      private function hilavuw() : Wumyziju {
         return this.model.gype().sybiwu;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.selected.remove(this.tyhecete);
         this.view.fil.remove(this.notelo);
         return;
      }

      private function tyhecete() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         this.nuwebo.dispatch(this.sybiwu.bahalelaf());
         return;
      }

      private function notelo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}