package com.company.util
{
[CLASS1328]

   public class Qewo extends Object
   {
      public function Qewo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var jedasiveq:String;

      private const zifag:Array = ["January","February","March","April","May","June","July","August","September","October","November","December"];

      public function difinos(param1:Date) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.jedasiveq;
         _loc2_=_loc2_.replace("D",param1.date);
         _loc2_=_loc2_.replace("YYYY",param1.fullYear);
         _loc2_=_loc2_.replace("MMMM",this.zifag[param1.month]);
         return _loc2_;
      }
   }
[/CLASS]
}