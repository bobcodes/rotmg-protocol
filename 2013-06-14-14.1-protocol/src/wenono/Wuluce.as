package wenono
{
   import tytojonib.Kyjefe;
   import waryp.Vek;
   import pomujukir.Bemivu;


   public class Wuluce extends Kyjefe
   {
      public function Wuluce() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Vek;

      public var syfu:Bemivu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.add(this.qynoselal);
         this.view.initialize();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.qynoselal);
         return;
      }

      private function qynoselal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syfu.dispatch(new TitleView());
         return;
      }
   }

}