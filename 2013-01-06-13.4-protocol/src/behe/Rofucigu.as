package behe
{
[CLASS339]   import tysenyzy.Zovisis;
   import jet.Varusici;
   import kirofyny.Tiqimav;
   import sakaja.Laq;
   import leselo.Cetyqysy;


   public class Rofucigu extends Zovisis
   {
      public function Rofucigu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Wugito;

      public var model:Varusici;

      public var closeDialogs:Tiqimav;

      public var gomanydi:Laq;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.add(this.pikymasa);
         this.view.select.add(this.onSelect);
         this.view.vygusew();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.pikymasa);
         this.view.select.remove(this.onSelect);
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }

      private function onSelect(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Cetyqysy = new Cetyqysy();
         _loc2_.offer=this.model.vypiqyq();
         _loc2_.paymentMethod=param1;
         this.gomanydi.dispatch(_loc2_);
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}