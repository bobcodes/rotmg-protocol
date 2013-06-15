package donaqyzas
{
   import flash.utils.Dictionary;


   public class Nutig extends Object
   {
      public function Nutig() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const lohy:Dictionary = new Dictionary(false);

      public function topelan(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lohy[param1]=true;
         return;
      }

      public function release(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         GlobalNotificationActionte this.lohy[[param1]];
         return;
      }

      public function flush() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Object = null;
         for (_loc1_ in this.lohy)
         {
            GlobalNotificationActionte this.lohy[[_loc1_]];
         }
         return;
      }
   }

}