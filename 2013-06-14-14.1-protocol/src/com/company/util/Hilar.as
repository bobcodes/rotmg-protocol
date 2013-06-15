package com.company.util
{


   public class Hilar extends Object
   {
      public function Hilar() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.clear();
         return;
      }

      public var wov:Number;

      public var hijuzal:Number;

      public var qemojifo:Number;

      public var bokeji:Number;

      public function add(param1:Number, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1<this.wov)
         {
            this.wov=param1;
         }
         if(param2<this.hijuzal)
         {
            this.hijuzal=param2;
         }
         if(param1>this.qemojifo)
         {
            this.qemojifo=param1;
         }
         if(param2>this.bokeji)
         {
            this.bokeji=param2;
         }
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wov=Number.MAX_VALUE;
         this.hijuzal=Number.MAX_VALUE;
         this.qemojifo=Number.MIN_VALUE;
         this.bokeji=Number.MIN_VALUE;
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "min:("+this.wov+", "+this.hijuzal+") max:("+this.qemojifo+", "+this.bokeji+")";
      }
   }

}