package fyvanod
{
[CLASS278]   import tysenyzy.Zovisis;
   import dutes.Zevazogo;
   import pigeguwo.Jazyv;


   public class Badizo extends Zovisis
   {
      public function Badizo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Qyt;

      public var showToolTip:Zevazogo;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.nanopemek.add(this.tuwus);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.destroy();
         return;
      }

      private function tuwus(param1:Jazyv) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }
   }
[/CLASS]
}