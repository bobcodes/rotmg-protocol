package biqacufo
{
   import qov.Kalefu;
   import hotewa.Baqifa;
   import jiha.Hevorim;


   public class Lecotis extends Kalefu
   {
      public function Lecotis() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kofapije;

      public var model:Baqifa;

      public var biwihih:Hevorim;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.gyquzenu.add(this.jihysim);
         this.model.hywelenyz.add(this.qelu);
         this.view.rezybyha.add(this.dudadyrys);
         this.view.draw(this.model.getCredits(),this.model.cof());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.gyquzenu.remove(this.jihysim);
         this.model.hywelenyz.remove(this.qelu);
         this.view.rezybyha.remove(this.dudadyrys);
         return;
      }

      private function jihysim(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw(param1,this.model.cof());
         return;
      }

      private function qelu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(this.model.getCredits(),param1);
         return;
      }

      private function dudadyrys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.biwihih.dispatch();
         return;
      }
   }

}