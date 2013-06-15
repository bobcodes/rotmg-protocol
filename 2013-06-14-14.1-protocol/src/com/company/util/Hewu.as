package com.company.util
{


   public class Hewu extends Object
   {
      public function Hewu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var subukiruh:String;

      private const jahufeqi:Array = ["January","February","March","April","May","June","July","August","September","October","November","December"];

      public function qyhakimis(param1:Date) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.subukiruh;
         _loc2_=_loc2_.replace("D",param1.date);
         _loc2_=_loc2_.replace("YYYY",param1.fullYear);
         _loc2_=_loc2_.replace("MMMM",this.jahufeqi[param1.month]);
         return _loc2_;
      }
   }

}