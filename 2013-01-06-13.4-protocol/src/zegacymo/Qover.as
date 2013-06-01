package zegacymo
{
[CLASS1077]   import flash.display.Sprite;
   import com.company.ui.Remyl;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Qover extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qover() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      protected static const nasapap:uint = 3355443;

      protected static const jofikona:uint = 16549442;

      protected static const makifuviw:uint = 4539717;

      protected static const qomofovi:uint = 11776947;

      public function getHeight() : Number {
         return 0;
      }

      protected function bemyhu(param1:Remyl, param2:int, param3:int, param4:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:uint = param4?jofikona:makifuviw;
         graphics.lineStyle(2,_loc5_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(nasapap,1);
         graphics.drawRect(param1.x-param2-5,param1.y-param3,param1.width+param2*2,param1.height+param3*2);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }
   }
[/CLASS]
}