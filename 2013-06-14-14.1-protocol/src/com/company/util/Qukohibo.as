package com.company.util
{


   public class Qukohibo extends Object implements Vos
   {
      public function Qukohibo(param1:Array) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.reqadu=param1;
         this.wehehusy=0;
         return;
      }

      private var reqadu:Array;

      private var wehehusy:int;

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wehehusy=0;
         return;
      }

      public function next() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.reqadu[this.wehehusy++];
      }

      public function vaduzuke() : Boolean {
         return this.wehehusy<this.reqadu.length;
      }
   }

}