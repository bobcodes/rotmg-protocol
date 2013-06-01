package rucedosu
{
[CLASS534]   import tysenyzy.Zovisis;
   import dylaqezo.Vusun;
   import rysuho.Loku;


   public class Tavicolok extends Zovisis
   {
      public function Tavicolok() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Vekowuris;

      public var model:Vusun;

      public var vume:Loku;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.tojafoq.add(this.fyty);
         this.model.lirysuli.add(this.kahy);
         this.view.wuripityp.add(this.seladihev);
         this.view.draw(this.model.gagesuno(),this.model.juzuf());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.tojafoq.remove(this.fyty);
         this.model.lirysuli.remove(this.kahy);
         this.view.wuripityp.remove(this.seladihev);
         return;
      }

      private function fyty(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw(param1,this.model.juzuf());
         return;
      }

      private function kahy(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(this.model.gagesuno(),param1);
         return;
      }

      private function seladihev() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vume.dispatch();
         return;
      }
   }
[/CLASS]
}