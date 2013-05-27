package gepa
{
   import qov.Kalefu;
   import pujo.Toqaqeg;
   import zoroc.Bezuco;


   public class Noq extends Kalefu
   {
      public function Noq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Sofik;

      public var zype:Toqaqeg;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.segaw.add(this.quziv);
         this.view.init();
         return;
      }

      private function quziv(param1:Bezuco) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zype.dispatch(param1);
         return;
      }

      override public function destroy() : void {
         return;
      }
   }

}