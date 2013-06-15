package kaw
{
   import __AS3__.vec.Vector;


   final class Pecomas extends Object
   {
      function Pecomas() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.jirah=new Vector.<String>();
         this.index=0;
         return;
      }

      private var jirah:Vector.<String>;

      private var index:int;

      public function add(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.index=this.jirah.push(param1);
         return;
      }

      public function get length() : int {
         return this.jirah.length;
      }

      public function ryvy() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.index>0?this.jirah[--this.index]:"";
      }

      public function bumubat() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.index<this.jirah.length-1?this.jirah[++this.index]:"";
      }
   }

}