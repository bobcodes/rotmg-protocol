package difu
{
   import qov.Kalefu;
   import kagijawil.Cibiqot;
   import wegyluke.Cowymute;
   import juw.Coqihyqin;
   import ruwa.Hytezod;


   public class Fagubef extends Kalefu
   {
      public function Fagubef() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Kirygym;

      public var model:Cibiqot;

      public var closeDialogs:Cowymute;

      public var binajeto:Coqihyqin;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.add(this.onClose);
         this.view.select.add(this.onSelect);
         this.view.dyhokopoq();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.onClose);
         this.view.select.remove(this.onSelect);
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }

      private function onSelect(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Hytezod = new Hytezod();
         _loc2_.offer=this.model.byjigi();
         _loc2_.paymentMethod=param1;
         this.binajeto.dispatch(_loc2_);
         this.closeDialogs.dispatch();
         return;
      }
   }

}