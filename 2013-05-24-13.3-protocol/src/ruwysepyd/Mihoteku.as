package ruwysepyd
{
   import qov.Kalefu;
   import wegyluke.Cowymute;
   import jiha.Hevorim;
   import hotewa.Baqifa;


   public class Mihoteku extends Kalefu
   {
      public function Mihoteku() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CharacterSlotNeedGoldDialog;

      public var tusagecu:Cowymute;

      public var biwihih:Hevorim;

      public var model:Baqifa;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.geziwyv.add(this.cowi);
         this.view.cancel.add(this.onCancel);
         this.view.setPrice(this.model.kut());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.geziwyv.remove(this.cowi);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      public function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }

      public function cowi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.biwihih.dispatch();
         return;
      }
   }

}