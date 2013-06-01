package com.company.assembleegameclient.engine3d
{
[CLASS1308]   import __AS3__.vec.Vector;


   public class Kevyref extends Object
   {
      public function Kevyref(param1:Pyhotuni, param2:Vector.<int>, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.kitahady=param1;
         this.cibo=param2;
         this.kokozoj=param3;
         return;
      }

      public static function zedonog(param1:Kevyref, param2:Kevyref) : Number {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = Number.MIN_VALUE;
         _loc4_=0;
         while(_loc4_<param1.cibo.length)
         {
            _loc3_=param2.kitahady.vL_[param1.cibo[_loc4_]*3+2];
            _loc5_=_loc3_<_loc5_?_loc3_:_loc5_;
            _loc6_=_loc3_>_loc6_?_loc3_:_loc6_;
            _loc4_++;
         }
         var _loc7_:Number = Number.MAX_VALUE;
         var _loc8_:Number = Number.MIN_VALUE;
         _loc4_=0;
         while(_loc4_<param2.cibo.length)
         {
            _loc3_=param2.kitahady.vL_[param2.cibo[_loc4_]*3+2];
            _loc7_=_loc3_<_loc7_?_loc3_:_loc7_;
            _loc8_=_loc3_>_loc8_?_loc3_:_loc8_;
            _loc4_++;
         }
         if(_loc7_>_loc5_)
         {
            return -1;
         }
         if(_loc7_<_loc5_)
         {
            return 1;
         }
         if(_loc8_>_loc6_)
         {
            return -1;
         }
         if(_loc8_<_loc6_)
         {
            return 1;
         }
         return 0;
      }

      public var kitahady:Pyhotuni;

      public var cibo:Vector.<int>;

      public var kokozoj:Boolean;
   }
[/CLASS]
}