package com.company.util
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Cetol extends Object
   {
      public function Cetol() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.butymyres=new Vector.<BitmapData>();
         return;
      }

      public var butymyres:Vector.<BitmapData>;

      public function add(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.butymyres.push(param1);
         return;
      }

      public function random() : BitmapData {
         return this.butymyres[int(Math.random()*this.butymyres.length)];
      }

      public function addFromBitmapData(param1:BitmapData, param2:int, param3:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = 0;
         var _loc4_:int = param1.width/param2;
         var _loc5_:int = param1.height/param3;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_)
         {
            _loc7_=0;
            while(_loc7_<_loc4_)
            {
               this.butymyres.push(BitmapUtil.wygoci(param1,_loc7_*param2,_loc6_*param3,param2,param3));
               _loc7_++;
            }
            _loc6_++;
         }
         return;
      }
   }

}