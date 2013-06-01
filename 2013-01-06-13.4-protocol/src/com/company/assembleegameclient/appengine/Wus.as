package com.company.assembleegameclient.appengine
{
[CLASS1059]   import com.company.assembleegameclient.util.Gugi;


   public class Wus extends Object
   {
      public function Wus(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.zonok=param1;
         return;
      }

      public var zonok:XML;

      public function bestLevel() : int {
         return this.zonok.BestLevel;
      }

      public function bukiga() : int {
         return this.zonok.BestFame;
      }

      public function numStars() : int {
         return Gugi.numStars(int(this.zonok.BestFame));
      }
   }
[/CLASS]
}