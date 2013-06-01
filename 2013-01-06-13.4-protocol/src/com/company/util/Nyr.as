package com.company.util
{
[CLASS1615]

   public class Nyr extends Object implements Sakejemu
   {
      public function Nyr(param1:Array) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.fekojesy=param1;
         this.gelufyfo=0;
         return;
      }

      private var fekojesy:Array;

      private var gelufyfo:int;

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gelufyfo=0;
         return;
      }

      public function next() : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.fekojesy[this.gelufyfo++];
      }

      public function talunury() : Boolean {
         return this.gelufyfo<this.fekojesy.length;
      }
   }
[/CLASS]
}