package com.company.assembleegameclient.appengine
{
   import com.company.assembleegameclient.util.Wagoq;


   public class Lycuhej extends Object
   {
      public function Lycuhej(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.sedybyta=param1;
         return;
      }

      public var sedybyta:XML;

      public function bestLevel() : int {
         return this.sedybyta.BestLevel;
      }

      public function gat() : int {
         return this.sedybyta.BestFame;
      }

      public function numStars() : int {
         return Wagoq.numStars(int(this.sedybyta.BestFame));
      }
   }

}