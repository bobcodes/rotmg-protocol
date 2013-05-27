package com.company.util
{


   public class Random extends Object
   {
      public function Random(param1:uint=1) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.seed=param1;
         return;
      }

      public static function jikumede() : uint {
         return Math.round(Math.random()*(uint.MAX_VALUE-1)+1);
      }

      public var seed:uint;

      public function mecapipo() : uint {
         return this.vavy();
      }

      public function mylyzeg() : Number {
         return this.vavy()/2147483647;
      }

      public function lewopi(param1:Number=0.0, param2:Number=1.0) : Number {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Number = this.vavy()/2147483647;
         var _loc4_:Number = this.vavy()/2147483647;
         var _loc5_:Number = Math.sqrt(-2*Math.log(_loc3_))*Math.cos(2*_loc4_*Math.PI);
         return param1+_loc5_*param2;
      }

      public function zowolyt(param1:uint, param2:uint) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1==param2?param1:param1+this.vavy()%(param2-param1);
      }

      public function hora(param1:Number, param2:Number) : Number {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1+(param2-param1)*this.mylyzeg();
      }

      private function vavy() : uint {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         _loc2_=16807*(this.seed&65535);
         _loc1_=16807*(this.seed>>16);
         _loc2_=_loc2_+((_loc1_&32767)<<16);
         _loc2_=_loc2_+(_loc1_>>15);
         if(_loc2_>2147483647)
         {
            _loc2_=_loc2_-2147483647;
         }
         return this.seed=_loc2_;
      }
   }

}