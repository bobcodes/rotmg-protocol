package pufelih
{
   import tytojonib.Kyjefe;
   import jufu.Jawojicyw;
   import lafilow.Modokopy;


   public class Waqapis extends Kyjefe
   {
      public function Waqapis() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kumamy;

      public var model:Jawojicyw;

      public var vupas:Modokopy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.poc.addOnce(this.diqowym);
         this.view.peqe.add(this.onButtonClick);
         this.view.pequdypi(this.model.rer());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.poc.remove(this.diqowym);
         this.view.peqe.remove(this.onButtonClick);
         return;
      }

      private function onButtonClick() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vupas.dispatch();
         return;
      }

      private function diqowym() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.destroy();
         return;
      }
   }

}