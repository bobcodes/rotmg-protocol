package com.company.util
{


   public class Nyfez extends Object
   {
      public function Nyfez() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zyjususyp:String;

      private const tole:Array = ["January","February","March","April","May","June","July","August","September","October","November","December"];

      public function mupiqecyn(param1:Date) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = this.zyjususyp;
         _loc2_=_loc2_.replace("D",param1.date);
         _loc2_=_loc2_.replace("YYYY",param1.fullYear);
         _loc2_=_loc2_.replace("MMMM",this.tole[param1.month]);
         return _loc2_;
      }
   }

}