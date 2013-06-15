package wenono
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import vilova.Limesofyb;
   import cizagamym.Lebovas;
   import civino.Duposid;


   public class Resev extends Kyjefe
   {
      public function Resev() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var dyk:Limesofyb;

      public var view:Jiwir;

      public var closeDialogs:Lebovas;

      public var pafysaqyc:Duposid;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyk.start();
         this.view.vikedis.add(this.tozum);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vikedis.remove(this.tozum);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      public function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
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