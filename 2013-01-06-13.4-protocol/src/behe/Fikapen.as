package behe
{
[CLASS341]   import tysenyzy.Zovisis;
   import jet.Varusici;
   import kirofyny.Tiqimav;
   import sakaja.Joqu;
   import tusidywuq.Regyd;


   public class Fikapen extends Zovisis
   {
      public function Fikapen() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:BeginnersPackageOfferDialog;

      public var model:Varusici;

      public var madeve:Tiqimav;

      public var jojule:Joqu;

      public var picywu:Regyd;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.dasuco);
         this.view.close.add(this.pikymasa);
         this.view.gizozekuc(this.model.jaluky());
         this.view.vygusew();
         this.picywu.dispatch(false);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.remove(this.dasuco);
         this.view.close.remove(this.pikymasa);
         this.picywu.dispatch(true);
         return;
      }

      private function dasuco() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         this.jojule.dispatch();
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         return;
      }
   }
[/CLASS]
}