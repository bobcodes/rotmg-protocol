package bemav
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hyjabu.Vuresiwyn;
   import hyjabu.Tac;
   import flash.events.MouseEvent;


   final class Ruq extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Ruq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const WIDTH:int = Bomuru.WIDTH;

      public static const BEVEL:int = Bomuru.BEVEL+Bomuru.pybywy*0.5;

      public const peqe:Qanyduk = new Qanyduk(int);

      public const rect:Vuresiwyn = new Vuresiwyn(WIDTH,0,BEVEL);

      private const vig:Tac = new Tac();

      public function redraw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         graphics.beginFill(5526612);
         this.vig.raty(0,0,this.rect,graphics);
         graphics.endFill();
         return;
      }

      public function jidesyd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      public function zeweci() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.peqe.dispatch(int(mouseY));
         return;
      }
   }

}