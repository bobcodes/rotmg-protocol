package pufupav
{


   public class Vuqidytep extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vuqidytep() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const zupucuwum:Object = {};

      public static function weniti(param1:XML) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         for each (_loc2_ in param1.Particle)
         {
            zupucuwum[_loc2_.@id]=new Gunafi(_loc2_);
         }
         return;
      }
   }

}