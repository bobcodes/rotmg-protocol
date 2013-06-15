package com.company.assembleegameclient.engine3d
{
   import flash.geom.Vector3D;


   public class Furigin extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Furigin() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const miz:Vector3D = funiqygy();

      public static function budizidup(param1:Vector3D, param2:Number) : Number {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Number = Math.max(0,param1.dotProduct(Furigin.miz));
         return param2+(1-param2)*_loc3_;
      }

      private static function funiqygy() : Vector3D {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector3D = new Vector3D(1,3,2);
         _loc1_.normalize();
         return _loc1_;
      }
   }

}