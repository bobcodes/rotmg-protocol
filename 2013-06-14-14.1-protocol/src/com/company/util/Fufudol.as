package com.company.util
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Fufudol extends Object
   {
      public function Fufudol() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.gisydi=new Vector.<BitmapData>();
         return;
      }

      public var gisydi:Vector.<BitmapData>;

      public function add(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gisydi.push(param1);
         return;
      }

      public function random() : BitmapData {
         return this.gisydi[int(Math.random()*this.gisydi.length)];
      }

      public function addFromBitmapData(param1:BitmapData, param2:int, param3:int) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = 0;
         var _loc4_:int = param1.width/param2;
         var _loc5_:int = param1.height/param3;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_)
         {
            _loc7_=0;
            while(_loc7_<_loc4_)
            {
               this.gisydi.push(BitmapUtil.kodopomid(param1,_loc7_*param2,_loc6_*param3,param2,param3));
               _loc7_++;
            }
            _loc6_++;
         }
         return;
      }
   }

}