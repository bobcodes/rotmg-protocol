package sisatapu
{
[CLASS989]   import flash.display.Sprite;


   public class Fujopedid extends Sprite
   {
      public function Fujopedid(param1:int, param2:int, param3:int, param4:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
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
[/CLASS]
}