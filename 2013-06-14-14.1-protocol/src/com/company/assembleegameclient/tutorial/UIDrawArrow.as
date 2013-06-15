package com.company.assembleegameclient.tutorial
{
   import flash.geom.Point;
   import flash.display.Graphics;
   import com.company.util.PointUtil;
   import com.company.util.ConversionUtil;


   public class UIDrawArrow extends Object
   {
      public function UIDrawArrow(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         var _loc2_:Array = ConversionUtil.benygale(param1);
         this.p0_=_loc2_[0];
         this.p1_=_loc2_[1];
         this.color_=uint(param1.@color);
         return;
      }

      public var p0_:Point;

      public var p1_:Point;

      public var color_:uint;

      public const zefivojim:int = 500;

      public function draw(param1:int, param2:Graphics, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:Point = null;
         var _loc4_:Point = new Point();
         if(param3<this.zefivojim)
         {
            _loc4_.x=this.p0_.x+(this.p1_.x-this.p0_.x)*param3/this.zefivojim;
            _loc4_.y=this.p0_.y+(this.p1_.y-this.p0_.y)*param3/this.zefivojim;
         }
         else
         {
            _loc4_.x=this.p1_.x;
            _loc4_.y=this.p1_.y;
         }
         param2.lineStyle(param1,this.color_);
         param2.moveTo(this.p0_.x,this.p0_.y);
         param2.lineTo(_loc4_.x,_loc4_.y);
         var _loc5_:Number = PointUtil.qezokunah(_loc4_,this.p0_);
         _loc6_=PointUtil.syres(_loc4_,_loc5_+Math.PI/8,30);
         param2.lineTo(_loc6_.x,_loc6_.y);
         _loc6_=PointUtil.syres(_loc4_,_loc5_-Math.PI/8,30);
         param2.moveTo(_loc4_.x,_loc4_.y);
         param2.lineTo(_loc6_.x,_loc6_.y);
         return;
      }
   }

}