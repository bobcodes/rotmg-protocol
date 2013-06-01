package fomykuq
{
[CLASS142]   import flash.utils.Dictionary;


   public class Cykuq extends Object
   {
      public function Cykuq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const kugebu:Dictionary = new Dictionary(false);

      public function lysacy(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kugebu[param1]=true;
         return;
      }

      public function release(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete this.kugebu[[param1]];
         return;
      }

      public function flush() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Object = null;
         for (_loc1_ in this.kugebu)
         {
            delete this.kugebu[[_loc1_]];
         }
         return;
      }
   }
[/CLASS]
}