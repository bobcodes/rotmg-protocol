package com.company.assembleegameclient.util
{
[CLASS1409]   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;


   public class Deqipe extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Deqipe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var wiwoqyvat:Dictionary = new Dictionary();

      public static function wesijah(param1:Class) : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vector.<Object> = wiwoqyvat[param1];
         if(_loc2_==null)
         {
            _loc2_=new Vector.<Object>();
            wiwoqyvat[param1]=_loc2_;
         }
         else
         {
            if(_loc2_.length>0)
            {
               return _loc2_.pop();
            }
         }
         return new param1();
      }

      public static function dirod(param1:*, param2:Object) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<Object> = wiwoqyvat[param1];
         if(_loc3_==null)
         {
            _loc3_=new Vector.<Object>();
            wiwoqyvat[param1]=_loc3_;
         }
         _loc3_.push(param2);
         return;
      }

      public static function getObject(param1:*) : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<Object> = wiwoqyvat[param1];
         if(!(_loc2_==null)&&_loc2_.length>0)
         {
            return _loc2_.pop();
         }
         return null;
      }

      public static function dump(param1:*) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete wiwoqyvat[[param1]];
         return;
      }

      public static function hasa(param1:Object) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Class = Object(param1).constructor;
         var _loc3_:Vector.<Object> = wiwoqyvat[_loc2_];
         if(_loc3_==null)
         {
            _loc3_=new Vector.<Object>();
            wiwoqyvat[_loc2_]=_loc3_;
         }
         _loc3_.push(param1);
         return;
      }
   }
[/CLASS]
}