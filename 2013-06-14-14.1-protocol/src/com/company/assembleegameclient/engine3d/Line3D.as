package com.company.assembleegameclient.engine3d
{
   import flash.geom.Vector3D;


   public class Line3D extends Object
   {
      public function Line3D(param1:Vector3D, param2:Vector3D) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.v0_=param1;
         this.v1_=param2;
         return;
      }

      public static function muqik() : Boolean {
         return UnitTest.run();
      }

      public var v0_:Vector3D;

      public var v1_:Vector3D;

      public function puvi(param1:Line3D) : int {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:Number = (param1.v1_.y-param1.v0_.y)*(this.v1_.x-this.v0_.x)-(param1.v1_.x-param1.v0_.x)*(this.v1_.y-this.v0_.y);
         if(_loc2_<0.001&&_loc2_>-0.001)
         {
            return Order.quja;
         }
         var _loc3_:Number = (param1.v1_.x-param1.v0_.x)*(this.v0_.y-param1.v0_.y)-(param1.v1_.y-param1.v0_.y)*(this.v0_.x-param1.v0_.x);
         var _loc4_:Number = (this.v1_.x-this.v0_.x)*(this.v0_.y-param1.v0_.y)-(this.v1_.y-this.v0_.y)*(this.v0_.x-param1.v0_.x);
         if(_loc3_<0.001&&_loc3_>-0.001&&_loc4_<0.001&&_loc4_>-0.001)
         {
            return Order.quja;
         }
         var _loc5_:Number = _loc3_/_loc2_;
         var _loc6_:Number = _loc4_/_loc2_;
         if(_loc5_>1||_loc5_<0||_loc6_>1||_loc6_<0)
         {
            return Order.quja;
         }
         var _loc7_:Number = this.v0_.z+_loc5_*(this.v1_.z-this.v0_.z)-param1.v0_.z+_loc6_*(param1.v1_.z-param1.v0_.z);
         if(_loc7_<0.001&&_loc7_>-0.001)
         {
            return Order.quja;
         }
         if(_loc7_>0)
         {
            return Order.wopomota;
         }
         return Order.tubyzut;
      }

      public function tesy(param1:Number) : Vector3D {
         return new Vector3D(this.v0_.x+(this.v1_.x-this.v0_.x)*param1,this.v0_.y+(this.v1_.y-this.v0_.y)*param1,this.v0_.z+(this.v1_.z-this.v0_.z)*param1);
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "("+this.v0_+", "+this.v1_+")";
      }
   }

}   import com.company.assembleegameclient.engine3d.Line3D;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.engine3d.Order;


   class UnitTest extends Object
   {
      function UnitTest() {
         super();
         return;
      }

      private static function testCrossZ() : Boolean {
         var _loc1_:Line3D = new Line3D(new Vector3D(0,0,0),new Vector3D(0,100,0));
         var _loc2_:Line3D = new Line3D(new Vector3D(10,0,10),new Vector3D(-10,100,-100));
         if(_loc1_.puvi(_loc2_)!=Order.wopomota)
         {
            return false;
         }
         if(_loc2_.puvi(_loc1_)!=Order.tubyzut)
         {
            return false;
         }
         _loc1_=new Line3D(new Vector3D(1,1,200),new Vector3D(6,6,200));
         _loc2_=new Line3D(new Vector3D(3,1,-100),new Vector3D(1,3,-100));
         if(_loc1_.puvi(_loc2_)!=Order.wopomota)
         {
            return false;
         }
         if(_loc2_.puvi(_loc1_)!=Order.tubyzut)
         {
            return false;
         }
         return true;
      }

      public static function run() : Boolean {
         if(!testCrossZ())
         {
            return false;
         }
         return true;
      }
   }
