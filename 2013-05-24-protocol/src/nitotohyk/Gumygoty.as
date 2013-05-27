package nitotohyk
{
   import qov.Kalefu;
   import raqu.Calogu;
   import hotewa.Nowuved;
   import raqu.Feryj;
   import flash.display.Sprite;


   public class Gumygoty extends Kalefu
   {
      public function Gumygoty() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Mekesefud;

      public var zogytuso:Calogu;

      public var model:Nowuved;

      public var foko:Feryj;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.add(this.wyka);
         this.foko.add(this.nenyvysed);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.remove(this.wyka);
         this.foko.add(this.nenyvysed);
         return;
      }

      private function wyka(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.jagigeniw(Object(param1).constructor as Class);
         this.view.zogytuso(param1);
         return;
      }

      private function nenyvysed() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.zogytuso(this.view.wuhebef());
         return;
      }
   }

}