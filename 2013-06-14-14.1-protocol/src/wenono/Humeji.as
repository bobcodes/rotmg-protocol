package wenono
{
   import tytojonib.Kyjefe;
   import civino.Wyvudasev;
   import cizagamym.Lebovas;


   public class Humeji extends Kyjefe
   {
      public function Humeji() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Metyjawu;

      public var mewyk:Wyvudasev;

      public var close:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cancel.add(this.onCancel);
         this.view.register.add(this.mijy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cancel.remove(this.onCancel);
         this.view.register.remove(this.mijy);
         return;
      }

      private function mijy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mewyk.dispatch();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.close.dispatch();
         return;
      }
   }

}