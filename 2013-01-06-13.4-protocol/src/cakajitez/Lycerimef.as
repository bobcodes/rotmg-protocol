package cakajitez
{
[CLASS1899]   import flash.utils.Dictionary;


   public class Lycerimef extends Object
   {
      public function Lycerimef(param1:*, param2:Boolean=false) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.zujojo=param2;
         this.huke=param1;
         return;
      }

      private var qyhyrufah;

      private var zujojo:Boolean;

      public function get huke() : * {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = undefined;
         if(this.zujojo)
         {
            return this.qyhyrufah;
         }
         if(!(this.qyhyrufah hasNext _loc2_))
         {
            return null;
         }
         _loc1_=nextName(_loc2_,_loc3_);
         return _loc1_;
      }

      public function set huke(param1:*) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.zujojo)
         {
            this.qyhyrufah=param1;
         }
         else
         {
            this.qyhyrufah=new Dictionary(true);
            this.qyhyrufah[param1]=null;
         }
         return;
      }

      public function get strong() : Boolean {
         return this.zujojo;
      }
   }
[/CLASS]
}