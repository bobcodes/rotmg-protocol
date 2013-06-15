package cerywij
{
   import flash.display.Sprite;
   import micac.Josuba;


   public class Badalew extends Sprite
   {
      public function Badalew(param1:uint) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stats=new Hekogesa();
         super();
         this.init();
         this.lobola(param1);
         this.jifajenuj();
         return;
      }

      private var stats:Hekogesa;

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.stats);
         return;
      }

      private function lobola(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stats.y=(param1-Kog.myvarid)/2-this.stats.height/2;
         return;
      }

      private function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.stats.name=Josuba.dikapipy;
         return;
      }
   }

}