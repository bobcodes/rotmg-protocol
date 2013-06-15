package com.company.assembleegameclient.util
{
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Sur extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sur() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var qahamuguv:Dictionary = new Dictionary();

      public static function kobuluqoz(param1:int, param2:BitmapData, param3:Number, param4:uint) : Vector.<uint> {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:Vector.<uint> = qahamuguv[param1];
         if(_loc5_!=null)
         {
            return _loc5_;
         }
         _loc5_=new Vector.<uint>();
         var _loc6_:Vector.<uint> = sinoh(param2);
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

      private static var cewygiho:Dictionary = new Dictionary();

      public static function sinoh(param1:BitmapData) : Vector.<uint> {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<uint> = cewygiho[param1];
         if(_loc2_==null)
         {
            _loc2_=cikiwyg(param1);
            cewygiho[param1]=_loc2_;
         }
         return _loc2_;
      }

      private static function cikiwyg(param1:BitmapData) : Vector.<uint> {
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

}