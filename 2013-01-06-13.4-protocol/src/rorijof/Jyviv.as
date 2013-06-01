package rorijof
{
[CLASS1541]   import flash.display.Graphics;


   public class Jyviv extends Object
   {
      public function Jyviv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function qyzejib(param1:int, param2:int, param3:Simohoke, param4:Graphics) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:int = param1+param3.width;
         var _loc6_:int = param2+param3.height;
         var _loc7_:int = param3.lezabete;
         if(param3.kehaseqy)
         {
            param4.moveTo(param1,param2+_loc7_);
            param4.lineTo(param1+_loc7_,param2);
         }
         else
         {
            param4.moveTo(param1,param2);
         }
         if(param3.kocen)
         {
            param4.lineTo(_loc5_-_loc7_,param2);
            param4.lineTo(_loc5_,param2+_loc7_);
         }
         else
         {
            param4.lineTo(_loc5_,param2);
         }
         if(param3.zuwisylo)
         {
            param4.lineTo(_loc5_,_loc6_-_loc7_);
            param4.lineTo(_loc5_-_loc7_,_loc6_);
         }
         else
         {
            param4.lineTo(_loc5_,_loc6_);
         }
         if(param3.qecypife)
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
[/CLASS]
}