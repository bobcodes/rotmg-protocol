package com.company.assembleegameclient.engine3d
{
   import __AS3__.vec.Vector;


   public class Qava extends Object
   {
      public function Qava(param1:Hivehihil, param2:Vector.<int>, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.sozyk=param1;
         this.jimezukut=param2;
         this.piqin=param3;
         return;
      }

      public static function bynuqome(param1:Qava, param2:Qava) : Number {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = Number.MIN_VALUE;
         _loc4_=0;
         while(_loc4_<param1.jimezukut.length)
         {
            _loc3_=param2.sozyk.vL_[param1.jimezukut[_loc4_]*3+2];
            _loc5_=_loc3_<_loc5_?_loc3_:_loc5_;
            _loc6_=_loc3_>_loc6_?_loc3_:_loc6_;
            _loc4_++;
         }
         var _loc7_:Number = Number.MAX_VALUE;
         var _loc8_:Number = Number.MIN_VALUE;
         _loc4_=0;
         while(_loc4_<param2.jimezukut.length)
         {
            _loc3_=param2.sozyk.vL_[param2.jimezukut[_loc4_]*3+2];
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

      public var sozyk:Hivehihil;

      public var jimezukut:Vector.<int>;

      public var piqin:Boolean;
   }

}