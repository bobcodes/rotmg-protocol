package gicuzum
{
[CLASS1686]   import flash.display.Sprite;
   import tinava.Dab;
   import rorijof.Simohoke;
   import rorijof.Jyviv;
   import flash.events.MouseEvent;


   final class Ryc extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Ryc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const WIDTH:int = Zacorafyg.WIDTH;

      public static const BEVEL:int = Zacorafyg.BEVEL+Zacorafyg.bykize*0.5;

      public const zokokof:Dab = new Dab(int);

      public const rect:Simohoke = new Simohoke(WIDTH,0,BEVEL);

      private const cykepydiz:Jyviv = new Jyviv();

      public function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.beginFill(5526612);
         this.cykepydiz.qyzejib(0,0,this.rect,graphics);
         graphics.endFill();
         return;
      }

      public function fejysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      public function finata() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zokokof.dispatch(int(mouseY));
         return;
      }
   }
[/CLASS]
}