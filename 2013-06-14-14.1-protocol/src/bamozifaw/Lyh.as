package bamozifaw
{
   import __AS3__.vec.Vector;


   public class Lyh extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lyh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.qykefybuv=new Date().getFullYear();
         return;
      }

      private static const sotuve:Vector.<int> = Vector.<int>([31,-1,31,30,31,30,31,31,30,31,30,31]);

      private static const vudoz:int = 2;

      private var qykefybuv:int;

      public function teru(param1:int) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1>0&&param1<=12;
      }

      public function roduna(param1:int, param2:int=-1, param3:int=-1) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         return param1>0&&param1<=this.qin(param2,param3);
      }

      public function qin(param1:int=-1, param2:int=-1) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==-1)
         {
            return 31;
         }
         return param1==vudoz?this.licu(param2):sotuve[param1-1];
      }

      private function licu(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==-1||(this.lizymo(param1)))
         {
            return 29;
         }
         return 28;
      }

      public function lizymo(param1:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = param1%4==0;
         var _loc3_:* = param1%100==0;
         var _loc4_:* = param1%400==0;
         return (_loc2_)&&(!_loc3_||(_loc4_));
      }

      public function dacuceja(param1:int, param2:int, param3:int, param4:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         return (this.juqylyzufe(param3,param4))&&(this.teru(param1))&&(this.roduna(param2,param1,param3));
      }

      public function juqylyzufe(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1<=this.qykefybuv&&param1>this.qykefybuv-param2;
      }
   }

}