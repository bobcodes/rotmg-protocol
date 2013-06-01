package com.company.assembleegameclient.util
{
[CLASS1396]   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Qafa extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qafa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var kukef:Dictionary = new Dictionary();

      public static function hidytysoly(param1:int, param2:BitmapData, param3:Number, param4:uint) : Vector.<uint> {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:Vector.<uint> = kukef[param1];
         if(_loc5_!=null)
         {
            return _loc5_;
         }
         _loc5_=new Vector.<uint>();
         var _loc6_:Vector.<uint> = syguj(param2);
         var _loc7_:* = 0;
         while(_loc7_<_loc6_.length)
         {
            if(Math.random()<param3)
            {
               _loc5_.push(param4);
            }
            else
            {
               _loc5_.push(_loc6_[int(_loc6_.length*Math.random())]);
            }
            _loc7_++;
         }
         return _loc5_;
      }

      private static var hypemik:Dictionary = new Dictionary();

      public static function syguj(param1:BitmapData) : Vector.<uint> {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vector.<uint> = hypemik[param1];
         if(_loc2_==null)
         {
            _loc2_=wave(param1);
            hypemik[param1]=_loc2_;
         }
         return _loc2_;
      }

      private static function wave(param1:BitmapData) : Vector.<uint> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc5_:uint = 0;
         var _loc2_:Vector.<uint> = new Vector.<uint>();
         var _loc3_:* = 0;
         while(_loc3_<param1.width)
         {
            _loc4_=0;
            while(_loc4_<param1.height)
            {
               _loc5_=param1.getPixel32(_loc3_,_loc4_);
               if((_loc5_&4.27819008E9)==0)
               {
               }
               else
               {
                  _loc2_.push(_loc5_);
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
   }
[/CLASS]
}