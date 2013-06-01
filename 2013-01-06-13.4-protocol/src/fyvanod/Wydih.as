package fyvanod
{
[CLASS247]   import tysenyzy.Zovisis;
   import kirofyny.Zaqylisot;
   import kirofyny.Hehuf;
   import flash.events.MouseEvent;
   import zec.Qyniv;
   import zec.Pobifiga;


   public class Wydih extends Zovisis
   {
      public function Wydih() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Qumevyd;

      public var kavazype:Zaqylisot;

      public var lyhog:Hehuf;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.init();
         this.view.cywopido.addEventListener(MouseEvent.CLICK,this.ludypuc);
         this.view.malybuhyn.addEventListener(MouseEvent.CLICK,this.dugonehy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      protected function dugonehy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lyhog.dispatch(new Qyniv());
         return;
      }

      protected function ludypuc(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kavazype.dispatch(new Pobifiga());
         return;
      }
   }
[/CLASS]
}