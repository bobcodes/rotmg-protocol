package sygumagu
{
   import __AS3__.vec.Vector;


   public class Genuqo extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Genuqo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.vilaq=new Date().getFullYear();
         return;
      }

      private static const kewagocyr:Vector.<int> = Vector.<int>([31,-1,31,30,31,30,31,31,30,31,30,31]);

      private static const zijof:int = 2;

      private var vilaq:int;

      public function volalecur(param1:int) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1>0&&param1<=12;
      }

      public function qiqyqewij(param1:int, param2:int=-1, param3:int=-1) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         return param1>0&&param1<=this.vovakohoso(param2,param3);
      }

      public function vovakohoso(param1:int=-1, param2:int=-1) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==-1)
         {
            return 31;
         }
         return param1==zijof?this.vofymy(param2):kewagocyr[param1-1];
      }

      private function vofymy(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==-1||(this.dygiruce(param1)))
         {
            return 29;
         }
         return 28;
      }

      public function dygiruce(param1:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = param1%4==0;
         var _loc3_:* = param1%100==0;
         var _loc4_:* = param1%400==0;
         return (_loc2_)&&(!_loc3_||(_loc4_));
      }

      public function tamufaf(param1:int, param2:int, param3:int, param4:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return (this.myfikasy(param3,param4))&&(this.volalecur(param1))&&(this.qiqyqewij(param2,param1,param3));
      }

      public function myfikasy(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1<=this.vilaq&&param1>this.vilaq-param2;
      }
   }

}