package golac
{
[CLASS193]   import tysenyzy.Zovisis;
   import zozimuk.Tukejyp;
   import kirofyny.Tiqimav;
   import ruf.Paceto;


   public class Jejok extends Zovisis
   {
      public function Jejok() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var huwumepe:Tukejyp;

      public var view:PackageOfferDialog;

      public var bycofuvyh:Tiqimav;

      public var cutac:Paceto;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.buy.add(this.dasuco);
         this.view.close.add(this.pikymasa);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.pikymasa);
         this.view.close.remove(this.dasuco);
         this.view.destroy();
         return;
      }

      private function dasuco() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bycofuvyh.dispatch();
         this.cutac.dispatch(this.view.tumadyw());
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bycofuvyh.dispatch();
         return;
      }
   }
[/CLASS]
}