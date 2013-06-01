package gukite
{
[CLASS1679]   import __AS3__.vec.Vector;


   final class Bygusaka extends Object
   {
      function Bygusaka() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.del=new Vector.<String>();
         this.index=0;
         return;
      }

      private var del:Vector.<String>;

      private var index:int;

      public function add(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.index=this.del.push(param1);
         return;
      }

      public function get length() : int {
         return this.del.length;
      }

      public function qeg() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.index>0?this.del[--this.index]:"";
      }

      public function vugireced() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.index<this.del.length-1?this.del[++this.index]:"";
      }
   }
[/CLASS]
}