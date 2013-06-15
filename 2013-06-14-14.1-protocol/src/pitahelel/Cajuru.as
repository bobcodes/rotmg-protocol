package pitahelel
{
   import tytojonib.Kyjefe;
   import fodusy.Zyn;


   public class Cajuru extends Kyjefe
   {
      public function Cajuru() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ReskinPanel;

      public var vuqasyraj:Zyn;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.reskin.add(this.nojabinuwy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.reskin.remove(this.nojabinuwy);
         return;
      }

      private function nojabinuwy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vuqasyraj.dispatch();
         return;
      }
   }

}