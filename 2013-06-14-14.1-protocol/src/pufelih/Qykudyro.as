package pufelih
{
   import tytojonib.Kyjefe;
   import jufu.Jawojicyw;
   import cizagamym.Lebovas;
   import lafilow.Quco;
   import pugem.Febyc;


   public class Qykudyro extends Kyjefe
   {
      public function Qykudyro() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Guwesica;

      public var model:Jawojicyw;

      public var closeDialogs:Lebovas;

      public var jojuk:Quco;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.add(this.lyb);
         this.view.select.add(this.onSelect);
         this.view.fop();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.lyb);
         this.view.select.remove(this.onSelect);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }

      private function onSelect(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Febyc = new Febyc();
         _loc2_.offer=this.model.qycosac();
         _loc2_.paymentMethod=param1;
         this.jojuk.dispatch(_loc2_);
         this.closeDialogs.dispatch();
         return;
      }
   }

}