package haj
{
   import flash.display.Sprite;
   import hyjabu.Vuresiwyn;
   import hyjabu.Tac;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Res extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Res() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const HORIZONTAL_DIVISION:String = "HORIZONTAL_DIVISION";

      public static const VERTICAL_DIVISION:String = "VERTICAL_DIVISION";

      private static const BEVEL:int = 4;

      public function draw(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Vuresiwyn = new Vuresiwyn(param1,param2,BEVEL);
         var _loc4_:Tac = new Tac();
         graphics.lineStyle(1,16777215,1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3);
         graphics.beginFill(3552822);
         _loc4_.raty(0,0,_loc3_,graphics);
         graphics.endFill();
         return;
      }

      public function jypihu(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==HORIZONTAL_DIVISION)
         {
            this.luzomus(param2);
         }
         else
         {
            if(param1==VERTICAL_DIVISION)
            {
               this.hipyv(param2);
            }
         }
         return;
      }

      private function luzomus(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.lineStyle();
         graphics.endFill();
         graphics.moveTo(1,param1);
         graphics.beginFill(6710886,1);
         graphics.drawRect(1,param1,width-2,2);
         return;
      }

      private function hipyv(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.lineStyle();
         graphics.moveTo(param1,1);
         graphics.lineStyle(2,6710886);
         graphics.lineTo(param1,height-1);
         return;
      }
   }

}