package tisidon
{
   import tytojonib.Kyjefe;
   import mebug.Pituhynav;
   import nagyc.Wogot;
   import __AS3__.vec.Vector;
   import nagyc.Jyt;


   public class Fiwycef extends Kyjefe
   {
      public function Fiwycef() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Juv;

      public var update:Pituhynav;

      public var model:Wogot;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.update(this.model.news);
         this.update.add(this.zebemak);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.update.remove(this.zebemak);
         return;
      }

      private function zebemak(param1:Vector.<Jyt>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.update(param1);
         return;
      }
   }

}