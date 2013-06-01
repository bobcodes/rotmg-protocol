package dugahymu
{
[CLASS1152]   import flash.display.Sprite;
   import vinirudel.Heqodeno;


   public class Zube extends Sprite
   {
      public function Zube(param1:uint) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.stats=new Hohu();
         super();
         this.init();
         this.rabika(param1);
         this.mipuguc();
         return;
      }

      private var stats:Hohu;

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.stats);
         return;
      }

      private function rabika(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stats.y=(param1-Piqubidak.qypumen)/2-this.stats.height/2;
         return;
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.stats.name=Heqodeno.vutimajoq;
         return;
      }
   }
[/CLASS]
}