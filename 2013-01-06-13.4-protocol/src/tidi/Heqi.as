package tidi
{
[CLASS502]   import tysenyzy.Zovisis;
   import kirofyny.Tiqimav;
   import rysuho.Loku;
   import dylaqezo.Vusun;


   public class Heqi extends Zovisis
   {
      public function Heqi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterSlotNeedGoldDialog;

      public var madeve:Tiqimav;

      public var vume:Loku;

      public var model:Vusun;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.wynare.add(this.pyl);
         this.view.cancel.add(this.onCancel);
         this.view.setPrice(this.model.joze());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.wynare.remove(this.pyl);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      public function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         return;
      }

      public function pyl() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vume.dispatch();
         return;
      }
   }
[/CLASS]
}