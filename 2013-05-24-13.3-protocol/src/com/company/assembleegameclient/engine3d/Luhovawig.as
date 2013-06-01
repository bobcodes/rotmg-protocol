package com.company.assembleegameclient.engine3d
{
   import flash.geom.Vector3D;


   public class Luhovawig extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Luhovawig() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const pihakase:Vector3D = qadanil();

      public static function zycekaj(param1:Vector3D, param2:Number) : Number {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Number = Math.max(0,param1.dotProduct(Luhovawig.pihakase));
         return param2+(1-param2)*_loc3_;
      }

      private static function qadanil() : Vector3D {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector3D = new Vector3D(1,3,2);
         _loc1_.normalize();
         return _loc1_;
      }
   }

}