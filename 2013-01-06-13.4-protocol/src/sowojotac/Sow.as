package sowojotac
{
[CLASS1617]   import __AS3__.vec.Vector;


   public class Sow extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sow() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.gyqon=new Date().getFullYear();
         return;
      }

      private static const rytabu:Vector.<int> = Vector.<int>([31,-1,31,30,31,30,31,31,30,31,30,31]);

      private static const mewolug:int = 2;

      private var gyqon:int;

      public function ryqapida(param1:int) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1>0&&param1<=12;
      }

      public function fumyqub(param1:int, param2:int=-1, param3:int=-1) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         return param1>0&&param1<=this.qofiveti(param2,param3);
      }

      public function qofiveti(param1:int=-1, param2:int=-1) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==-1)
         {
            return 31;
         }
         return param1==mewolug?this.qeqofiso(param2):rytabu[param1-1];
      }

      private function qeqofiso(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==-1||(this.kozima(param1)))
         {
            return 29;
         }
         return 28;
      }

      public function kozima(param1:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = param1%4==0;
         var _loc3_:* = param1%100==0;
         var _loc4_:* = param1%400==0;
         return (_loc2_)&&(!_loc3_||(_loc4_));
      }

      public function losomuwi(param1:int, param2:int, param3:int, param4:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return (this.bip(param3,param4))&&(this.ryqapida(param1))&&(this.fumyqub(param2,param1,param3));
      }

      public function bip(param1:int, param2:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1<=this.gyqon&&param1>this.gyqon-param2;
      }
   }
[/CLASS]
}