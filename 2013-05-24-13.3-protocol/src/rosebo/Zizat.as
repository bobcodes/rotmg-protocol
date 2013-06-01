package rosebo
{
   import __AS3__.vec.Vector;


   final class Zizat extends Object
   {
      function Zizat() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.jifav=new Vector.<String>();
         this.index=0;
         return;
      }

      private var jifav:Vector.<String>;

      private var index:int;

      public function add(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.index=this.jifav.push(param1);
         return;
      }

      public function get length() : int {
         return this.jifav.length;
      }

      public function wuhebef() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.index>0?this.jifav[--this.index]:"";
      }

      public function tapu() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.index<this.jifav.length-1?this.jifav[++this.index]:"";
      }
   }

}