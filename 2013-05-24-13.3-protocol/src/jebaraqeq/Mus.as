package jebaraqeq
{
   import flash.utils.Dictionary;


   public class Mus extends Object
   {
      public function Mus() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const gemu:Dictionary = new Dictionary(false);

      public function jatesyryh(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gemu[param1]=true;
         return;
      }

      public function release(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         delete this.gemu[[param1]];
         return;
      }

      public function flush() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         for (_loc1_ in this.gemu)
         {
            delete this.gemu[[_loc1_]];
         }
         return;
      }
   }

}