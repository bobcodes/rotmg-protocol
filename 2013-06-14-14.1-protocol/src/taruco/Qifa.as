package taruco
{
   import tytojonib.Kyjefe;
   import sefylew.RegisterWebAccountDialog;
   import civino.Koteqoquc;
   import cinyj.Vobewabij;


   public class Qifa extends Kyjefe
   {
      public function Qifa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:RegisterWebAccountDialog;

      public var register:Koteqoquc;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.add(this.mijy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.mijy);
         return;
      }

      private function mijy(param1:Vobewabij) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.register.dispatch(param1);
         return;
      }
   }

}