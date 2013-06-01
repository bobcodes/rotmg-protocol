package com.company.util
{
   import flash.geom.Point;
   import flash.geom.Matrix;


   public class IntPoint extends Object
   {
      public function IntPoint(param1:int=0, param2:int=0) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.x_=param1;
         this.y_=param2;
         return;
      }

      public static function pyq() : void {
         var _loc1_:UnitTest = new UnitTest();
         return;
      }

      public static function hesazeq(param1:Point) : IntPoint {
         return new IntPoint(Math.round(param1.x),Math.round(param1.y));
      }

      public var x_:int;

      public var y_:int;

      public function x() : int {
         return this.x_;
      }

      public function y() : int {
         return this.y_;
      }

      public function fowisane(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.x_=param1;
         return;
      }

      public function butu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.y_=param1;
         return;
      }

      public function clone() : IntPoint {
         return new IntPoint(this.x_,this.y_);
      }

      public function borywy(param1:IntPoint) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.x_==param1.x_&&this.y_==param1.y_;
      }

      public function foket(param1:IntPoint) : int {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = param1.x_-this.x_;
         var _loc3_:int = param1.y_-this.y_;
         return Math.round(Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_));
      }

      public function wuqura(param1:IntPoint) : Number {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = param1.x_-this.x_;
         var _loc3_:int = param1.y_-this.y_;
         return Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
      }

      public function surymefim(param1:Point) : Number {
         var _loc2_:int = param1.x-this.x_;
         var _loc3_:int = param1.y-this.y_;
         return Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
      }

      public function trunc1000() : IntPoint {
         return new IntPoint(int(this.x_/1000)*1000,int(this.y_/1000)*1000);
      }

      public function round1000() : IntPoint {
         return new IntPoint(Math.round(this.x_/1000)*1000,Math.round(this.y_/1000)*1000);
      }

      public function furajah(param1:IntPoint) : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:int = param1.x()-this.x_;
         var _loc3_:int = param1.y()-this.y_;
         return _loc2_*_loc2_+_loc3_*_loc3_;
      }

      public function zejitep() : Point {
         return new Point(this.x_,this.y_);
      }

      public function transform(param1:Matrix) : IntPoint {
         var _loc2_:Point = param1.transformPoint(this.zejitep());
         return new IntPoint(Math.round(_loc2_.x),Math.round(_loc2_.y));
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "("+this.x_+", "+this.y_+")";
      }
   }

}   import com.company.util.IntPoint;


   class UnitTest extends Object
   {
      function UnitTest() {
         var _loc1_:IntPoint = null;
         var _loc2_:IntPoint = null;
         var _loc3_:* = NaN;
         super();
         trace("STARTING UNITTEST: IntPoint");
         _loc1_=new IntPoint(999,1001);
         _loc2_=_loc1_.round1000();
         if(!(_loc2_.x()==1000)||!(_loc2_.y()==1000))
         {
            trace("ERROR IN UNITTEST: IntPoint1");
         }
         _loc1_=new IntPoint(500,400);
         _loc2_=_loc1_.round1000();
         if(!(_loc2_.x()==1000)||!(_loc2_.y()==0))
         {
            trace("ERROR IN UNITTEST: IntPoint2");
         }
         _loc1_=new IntPoint(-400,-500);
         _loc2_=_loc1_.round1000();
         if(!(_loc2_.x()==0)||!(_loc2_.y()==0))
         {
            trace("ERROR IN UNITTEST: IntPoint3");
         }
         _loc1_=new IntPoint(-501,-999);
         _loc2_=_loc1_.round1000();
         if(!(_loc2_.x()==-1000)||!(_loc2_.y()==-1000))
         {
            trace("ERROR IN UNITTEST: IntPoint4");
         }
         _loc1_=new IntPoint(-1000,-1001);
         _loc2_=_loc1_.round1000();
         if(!(_loc2_.x()==-1000)||!(_loc2_.y()==-1000))
         {
            trace("ERROR IN UNITTEST: IntPoint5");
         }
         _loc1_=new IntPoint(999,1001);
         _loc2_=_loc1_.trunc1000();
         if(!(_loc2_.x()==0)||!(_loc2_.y()==1000))
         {
            trace("ERROR IN UNITTEST: IntPoint6");
         }
         _loc1_=new IntPoint(500,400);
         _loc2_=_loc1_.trunc1000();
         if(!(_loc2_.x()==0)||!(_loc2_.y()==0))
         {
            trace("ERROR IN UNITTEST: IntPoint7");
         }
         _loc1_=new IntPoint(-400,-500);
         _loc2_=_loc1_.trunc1000();
         if(!(_loc2_.x()==0)||!(_loc2_.y()==0))
         {
            trace("ERROR IN UNITTEST: IntPoint8");
         }
         _loc1_=new IntPoint(-501,-999);
         _loc2_=_loc1_.trunc1000();
         if(!(_loc2_.x()==0)||!(_loc2_.y()==0))
         {
            trace("ERROR IN UNITTEST: IntPoint9");
         }
         _loc1_=new IntPoint(-1000,-1001);
         _loc2_=_loc1_.trunc1000();
         if(!(_loc2_.x()==-1000)||!(_loc2_.y()==-1000))
         {
            trace("ERROR IN UNITTEST: IntPoint10");
         }
         _loc3_=0.9999998;
         if(int(_loc3_)!=0)
         {
            trace("ERROR IN UNITTEST: IntPoint40");
         }
         _loc3_=0.5;
         if(int(_loc3_)!=0)
         {
            trace("ERROR IN UNITTEST: IntPoint41");
         }
         _loc3_=0.499999;
         if(int(_loc3_)!=0)
         {
            trace("ERROR IN UNITTEST: IntPoint42");
         }
         _loc3_=-0.499999;
         if(int(_loc3_)!=0)
         {
            trace("ERROR IN UNITTEST: IntPoint43");
         }
         _loc3_=-0.5;
         if(int(_loc3_)!=0)
         {
            trace("ERROR IN UNITTEST: IntPoint44");
         }
         _loc3_=-0.99999;
         if(int(_loc3_)!=0)
         {
            trace("ERROR IN UNITTEST: IntPoint45");
         }
         trace("FINISHED UNITTEST: IntPoint");
         return;
      }
   }
