package com.company.assembleegameclient.engine3d
{
[CLASS1832]   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;


   public class Wyjejygik extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wyjejygik(param1:Vector3D=null, param2:Vector3D=null, param3:Vector3D=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         if(!(param1==null)&&!(param2==null)&&!(param3==null))
         {
            this.tyjodog=new Vector3D();
            nugub(param1,param2,param3,this.tyjodog);
            this.hozysakyn=-this.tyjodog.dotProduct(param1);
         }
         return;
      }

      public static function nugub(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc5_:Number = param2.x-param1.x;
         var _loc6_:Number = param2.y-param1.y;
         var _loc7_:Number = param2.z-param1.z;
         var _loc8_:Number = param3.x-param1.x;
         var _loc9_:Number = param3.y-param1.y;
         var _loc10_:Number = param3.z-param1.z;
         param4.x=_loc6_*_loc10_-_loc7_*_loc9_;
         param4.y=_loc7_*_loc8_-_loc5_*_loc10_;
         param4.z=_loc5_*_loc9_-_loc6_*_loc8_;
         param4.normalize();
         return;
      }

      public static function syrogyked(param1:Vector.<Number>, param2:Vector3D) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:Number = param1[3]-param1[0];
         var _loc4_:Number = param1[4]-param1[1];
         var _loc5_:Number = param1[5]-param1[2];
         var _loc6_:Number = param1[6]-param1[0];
         var _loc7_:Number = param1[7]-param1[1];
         var _loc8_:Number = param1[8]-param1[2];
         param2.x=_loc4_*_loc8_-_loc5_*_loc7_;
         param2.y=_loc5_*_loc6_-_loc3_*_loc8_;
         param2.z=_loc3_*_loc7_-_loc4_*_loc6_;
         param2.normalize();
         return;
      }

      public static const NONE:int = 0;

      public static const cifydu:int = 1;

      public static const juqu:int = 2;

      public static const vybazeqom:int = 3;

      public var tyjodog:Vector3D;

      public var hozysakyn:Number;

      public function wyw(param1:Vector3D) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = this.tyjodog.dotProduct(param1)+this.hozysakyn;
         if(_loc2_>0.001)
         {
            return cifydu;
         }
         if(_loc2_<-0.001)
         {
            return juqu;
         }
         return vybazeqom;
      }

      public function cigulaz(param1:Line3D) : Number {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = -this.hozysakyn-this.tyjodog.x*param1.v0_.x-this.tyjodog.y*param1.v0_.y-this.tyjodog.z*param1.v0_.z;
         var _loc3_:Number = this.tyjodog.x*(param1.v1_.x-param1.v0_.x)+this.tyjodog.y*(param1.v1_.y-param1.v0_.y)+this.tyjodog.z*(param1.v1_.z-param1.v0_.z);
         if(_loc3_==0)
         {
            return NaN;
         }
         return _loc2_/_loc3_;
      }

      public function kiduf(param1:Number, param2:Number) : Number {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return -(this.hozysakyn+this.tyjodog.x*param1+this.tyjodog.y*param2)/this.tyjodog.z;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "Plane(n = "+this.tyjodog+", d = "+this.hozysakyn+")";
      }
   }
[/CLASS]
}