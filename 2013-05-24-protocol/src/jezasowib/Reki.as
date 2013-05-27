package jezasowib
{
   import flash.display.Graphics;


   public class Reki extends Object
   {
      public function Reki() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function jiwynu(param1:int, param2:int, param3:Rop, param4:Graphics) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:int = param1+param3.width;
         var _loc6_:int = param2+param3.height;
         var _loc7_:int = param3.colo;
         if(param3.jumohuto)
         {
            param4.moveTo(param1,param2+_loc7_);
            param4.lineTo(param1+_loc7_,param2);
         }
         else
         {
            param4.moveTo(param1,param2);
         }
         if(param3.fabekak)
         {
            param4.lineTo(_loc5_-_loc7_,param2);
            param4.lineTo(_loc5_,param2+_loc7_);
         }
         else
         {
            param4.lineTo(_loc5_,param2);
         }
         if(param3.cyberoz)
         {
            param4.lineTo(_loc5_,_loc6_-_loc7_);
            param4.lineTo(_loc5_-_loc7_,_loc6_);
         }
         else
         {
            param4.lineTo(_loc5_,_loc6_);
         }
         if(param3.dikoz)
         {
            param4.lineTo(param1+_loc7_,_loc6_);
            param4.lineTo(param1,_loc6_-_loc7_);
         }
         else
         {
            param4.lineTo(param1,_loc6_);
         }
         return;
      }
   }

}