package cinapog
{
   import flash.display.Sprite;


   public class Tiqep extends Sprite
   {
      public function Tiqep(param1:int, param2:int, param3:int, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         graphics.beginFill(0,0);
         graphics.drawRect(0,0,param3,param4);
         graphics.endFill();
         this.x=param1;
         this.y=param2;
         buttonMode=true;
         return;
      }
   }

}