package tidi
{
[CLASS454]   import tysenyzy.Zovisis;
   import qilarag.Wysije;
   import dutes.Sycanetal;


   public class Rakeg extends Zovisis
   {
      public function Rakeg() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Wysije;

      public var cucec:Sycanetal;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.add(this.hug);
         this.view.initialize();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.hug);
         return;
      }

      private function hug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.dispatch(new TitleView());
         return;
      }
   }
[/CLASS]
}