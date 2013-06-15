package wenono
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import civino.Duposid;
   import lemugo.Wokycuku;


   public class Givewu extends Kyjefe
   {
      public function Givewu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterSlotNeedGoldDialog;

      public var gimenakal:Lebovas;

      public var pafysaqyc:Duposid;

      public var model:Wokycuku;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vikedis.add(this.tozum);
         this.view.cancel.add(this.onCancel);
         this.view.setPrice(this.model.pyg());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.vikedis.remove(this.tozum);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      public function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gimenakal.dispatch();
         return;
      }

      public function tozum() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pafysaqyc.dispatch();
         return;
      }
   }

}