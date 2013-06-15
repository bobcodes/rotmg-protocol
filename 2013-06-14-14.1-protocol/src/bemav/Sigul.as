package bemav
{
   import flash.display.Sprite;
   import hyjabu.Vuresiwyn;
   import hyjabu.Tac;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Sigul extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sigul() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const BEVEL:int = 4;

      public function draw(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Vuresiwyn = new Vuresiwyn(param1,param2,BEVEL);
         var _loc4_:Tac = new Tac();
         graphics.lineStyle(1,16777215,1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3);
         graphics.beginFill(3552822);
         _loc4_.raty(0,0,_loc3_,graphics);
         graphics.endFill();
         return;
      }
   }

}