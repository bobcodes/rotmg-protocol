package com.company.util
{


   public class Zyzucomec extends Object implements Zyvogajyl
   {
      public function Zyzucomec(param1:Array) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.numisume=param1;
         this.rovavu=0;
         return;
      }

      private var numisume:Array;

      private var rovavu:int;

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rovavu=0;
         return;
      }

      public function next() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.numisume[this.rovavu++];
      }

      public function qinyv() : Boolean {
         return this.rovavu<this.numisume.length;
      }
   }

}