package gicuzum
{
[CLASS1676]   import flash.display.Sprite;
   import rorijof.Simohoke;
   import rorijof.Jyviv;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Jylopimy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jylopimy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const BEVEL:int = 4;

      public function draw(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Simohoke = new Simohoke(param1,param2,BEVEL);
         var _loc4_:Jyviv = new Jyviv();
         graphics.lineStyle(1,16777215,1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3);
         graphics.beginFill(3552822);
         _loc4_.qyzejib(0,0,_loc3_,graphics);
         graphics.endFill();
         return;
      }
   }
[/CLASS]
}