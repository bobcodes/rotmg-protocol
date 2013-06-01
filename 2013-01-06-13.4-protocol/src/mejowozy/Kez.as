package mejowozy
{
[CLASS579]

   public class Kez extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kez() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const teqot:Object = {};

      public static function dyzicy(param1:XML) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         for each (_loc2_ in param1.Particle)
         {
            teqot[_loc2_.@id]=new Netevyqaw(_loc2_);
         }
         return;
      }
   }
[/CLASS]
}