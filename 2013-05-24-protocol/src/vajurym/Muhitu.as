package vajurym
{
   import flash.utils.Dictionary;


   public class Muhitu extends Object
   {
      public function Muhitu(param1:*, param2:Boolean=false) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.camivupuh=param2;
         this.firycynus=param1;
         return;
      }

      private var luqy;

      private var camivupuh:Boolean;

      public function get firycynus() : * {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = undefined;
         if(this.camivupuh)
         {
            return this.luqy;
         }
         if(!(this.luqy hasNext _loc2_))
         {
            return null;
         }
         _loc1_=nextName(_loc2_,_loc3_);
         return _loc1_;
      }

      public function set firycynus(param1:*) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.camivupuh)
         {
            this.luqy=param1;
         }
         else
         {
            this.luqy=new Dictionary(true);
            this.luqy[param1]=null;
         }
         return;
      }

      public function get strong() : Boolean {
         return this.camivupuh;
      }
   }

}