package wyzoz
{
[CLASS348]   import tysenyzy.Zovisis;
   import dutes.Sycanetal;
   import dylaqezo.Cupap;
   import dutes.Mokyrag;
   import flash.display.Sprite;


   public class Cono extends Zovisis
   {
      public function Cono() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Tubywuk;

      public var cucec:Sycanetal;

      public var model:Cupap;

      public var tigis:Mokyrag;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.add(this.qolocewac);
         this.tigis.add(this.nyjopaf);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.remove(this.qolocewac);
         this.tigis.add(this.nyjopaf);
         return;
      }

      private function qolocewac(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.nyvy(Object(param1).constructor as Class);
         this.view.cucec(param1);
         return;
      }

      private function nyjopaf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cucec(this.view.qeg());
         return;
      }
   }
[/CLASS]
}