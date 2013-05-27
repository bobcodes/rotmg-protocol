package jyqiqagog
{
   import kyco.Nun;
   import flash.utils.Dictionary;


   public class Cyrad extends Tezeg
   {
      public function Cyrad(param1:Array, param2:uint, param3:Dictionary) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super("ctor",param1,param2,false,param3);
         return;
      }

      public function createInstance(param1:Class, param2:Nun) : Object {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Object = null;
         var _loc3_:Array = lyhe(param1,param1,param2);
         switch(_loc3_.length)
         {
            case 1:
               _loc4_=new param1(_loc3_[0]);
               break;
            case 2:
               _loc4_=new param1(_loc3_[0],_loc3_[1]);
               break;
            case 3:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2]);
               break;
            case 4:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]);
               break;
            case 5:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4]);
               break;
            case 6:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5]);
               break;
            case 7:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6]);
               break;
            case 8:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7]);
               break;
            case 9:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8]);
               break;
            case 10:
               _loc4_=new param1(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3],_loc3_[4],_loc3_[5],_loc3_[6],_loc3_[7],_loc3_[8],_loc3_[9]);
               break;
         }
         _loc3_.length=0;
         return _loc4_;
      }
   }

}