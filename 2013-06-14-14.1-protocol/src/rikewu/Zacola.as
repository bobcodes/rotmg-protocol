package rikewu
{
   import flash.utils.Dictionary;


   public class Zacola extends Object
   {
      public function Zacola(param1:*, param2:Boolean=false) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.kes=param2;
         this.hed=param1;
         return;
      }

      private var dohozuse;

      private var kes:Boolean;

      public function get hed() : * {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = undefined;
         if(this.kes)
         {
            return this.dohozuse;
         }
         if(!(this.dohozuse hasNext _loc2_))
         {
            return null;
         }
         _loc1_=nextName(_loc2_,_loc3_);
         return _loc1_;
      }

      public function set hed(param1:*) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kes)
         {
            this.dohozuse=param1;
         }
         else
         {
            this.dohozuse=new Dictionary(true);
            this.dohozuse[param1]=null;
         }
         return;
      }

      public function get strong() : Boolean {
         return this.kes;
      }
   }

}