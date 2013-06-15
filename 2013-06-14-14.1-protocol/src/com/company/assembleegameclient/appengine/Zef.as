package com.company.assembleegameclient.appengine
{
   import com.company.assembleegameclient.util.Cinihel;


   public class Zef extends Object
   {
      public function Zef(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.zyry=param1;
         return;
      }

      public var zyry:XML;

      public function bestLevel() : int {
         return this.zyry.BestLevel;
      }

      public function lysatul() : int {
         return this.zyry.BestFame;
      }

      public function numStars() : int {
         return Cinihel.numStars(int(this.zyry.BestFame));
      }
   }

}