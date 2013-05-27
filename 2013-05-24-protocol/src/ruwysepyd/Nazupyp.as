package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Nalenym;
   import raqu.Mezafi;


   public class Nazupyp extends Kalefu
   {
      public function Nazupyp() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Nalenym;

      public var nidub:Mezafi;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nidub.add(this.lugocug);
         this.view.hifyvapy("Loading.text");
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nidub.remove(this.lugocug);
         return;
      }

      private function lugocug(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.hifyvapy(param1);
         return;
      }
   }

}