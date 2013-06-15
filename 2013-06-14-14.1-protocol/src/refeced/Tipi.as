package refeced
{
   import tytojonib.Kyjefe;
   import sefylew.RegisterWebAccountDialog;
   import civino.Koteqoquc;
   import cizagamym.Lebovas;
   import cinyj.Vobewabij;


   public class Tipi extends Kyjefe
   {
      public function Tipi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:RegisterWebAccountDialog;

      public var register:Koteqoquc;

      public var maliqoji:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.mijy);
         this.view.cancel.add(this.lyb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.remove(this.mijy);
         return;
      }

      private function mijy(param1:Vobewabij) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.register.dispatch(param1);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.maliqoji.dispatch();
         return;
      }
   }

}