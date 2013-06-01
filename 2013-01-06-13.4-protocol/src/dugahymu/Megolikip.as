package dugahymu
{
[CLASS539]   import tysenyzy.Zovisis;
   import flash.events.MouseEvent;


   public class Megolikip extends Zovisis
   {
      public function Megolikip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Jukagigyv;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.safonu.add(this.onMouseOut);
         this.view.nadipaw.add(this.onMouseOver);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.safonu.remove(this.onMouseOut);
         this.view.nadipaw.remove(this.onMouseOver);
         this.view.mivomydu();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.howazi();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.mivomydu();
         return;
      }
   }
[/CLASS]
}