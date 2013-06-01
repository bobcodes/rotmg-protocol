package rareja
{
[CLASS1353]   import tysenyzy.Zovisis;
   import nupuq.Tuwe;
   import nupuq.Heq;
   import nupuq.Jegetobe;
   import nupuq.Pequjowew;


   public class Diju extends Zovisis
   {
      public function Diju() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Delyh;

      public var sak:Tuwe;

      public var show:Heq;

      public var hide:Jegetobe;

      public var remove:Pequjowew;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.remove.add(this.cizilogop);
         this.sak.add(this.refub);
         this.show.add(this.bywesyhit);
         this.hide.add(this.qumaho);
         this.view.visible=false;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.remove.remove(this.cizilogop);
         this.sak.remove(this.refub);
         this.show.remove(this.bywesyhit);
         this.hide.remove(this.qumaho);
         return;
      }

      private function cizilogop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }

      private function refub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=!this.view.visible;
         return;
      }

      private function bywesyhit() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=true;
         return;
      }

      private function qumaho() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=false;
         return;
      }
   }
[/CLASS]
}