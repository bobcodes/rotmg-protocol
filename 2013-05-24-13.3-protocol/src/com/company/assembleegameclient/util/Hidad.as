package com.company.assembleegameclient.util
{
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;


   public class Hidad extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hidad() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var soroq:Dictionary = new Dictionary();

      public static function mapego(param1:Class) : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<Object> = soroq[param1];
         if(_loc2_==null)
         {
            _loc2_=new Vector.<Object>();
            soroq[param1]=_loc2_;
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

      public static function kukedowef(param1:*, param2:Object) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vector.<Object> = soroq[param1];
         if(_loc3_==null)
         {
            _loc3_=new Vector.<Object>();
            soroq[param1]=_loc3_;
         }
         _loc3_.push(param2);
         return;
      }

      public static function getObject(param1:*) : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vector.<Object> = soroq[param1];
         if(!(_loc2_==null)&&_loc2_.length>0)
         {
            return _loc2_.pop();
         }
         return null;
      }

      public static function dump(param1:*) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         delete soroq[[param1]];
         return;
      }

      public static function dub(param1:Object) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Class = Object(param1).constructor;
         var _loc3_:Vector.<Object> = soroq[_loc2_];
         if(_loc3_==null)
         {
            _loc3_=new Vector.<Object>();
            soroq[_loc2_]=_loc3_;
         }
         _loc3_.push(param1);
         return;
      }
   }

}