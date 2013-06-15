package gabufo
{
   import flash.display.Sprite;
   import com.company.ui.Vovoj;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Kipasi extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kipasi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      protected static const filol:uint = 3355443;

      protected static const cesagi:uint = 16549442;

      protected static const dapa:uint = 4539717;

      protected static const wokijeny:uint = 11776947;

      public function getHeight() : Number {
         return 0;
      }

      protected function cuzeke(param1:Vovoj, param2:int, param3:int, param4:Boolean) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:uint = param4?cesagi:dapa;
         graphics.lineStyle(2,_loc5_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(filol,1);
         graphics.drawRect(param1.x-param2-5,param1.y-param3,param1.width+param2*2,param1.height+param3*2);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }
   }

}