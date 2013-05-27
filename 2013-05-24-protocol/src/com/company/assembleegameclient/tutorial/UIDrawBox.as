package com.company.assembleegameclient.tutorial
{
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.Graphics;
   import com.company.util.ConversionUtil;


   public class UIDrawBox extends Object
   {
      public function UIDrawBox(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.rect_=ConversionUtil.dolezatih(param1);
         this.color_=uint(param1.@color);
         return;
      }

      public var rect_:Rectangle;

      public var color_:uint;

      public const nymuf:int = 500;

      public const qohusovu:Point = new Point(250,200);

      public function draw(param1:int, param2:Graphics, param3:int) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = this.rect_.width-param1;
         var _loc7_:Number = this.rect_.height-param1;
         if(param3<this.nymuf)
         {
            _loc4_=this.qohusovu.x+(this.rect_.x-this.qohusovu.x)*param3/this.nymuf;
            _loc5_=this.qohusovu.y+(this.rect_.y-this.qohusovu.y)*param3/this.nymuf;
            _loc6_=_loc6_*param3/this.nymuf;
            _loc7_=_loc7_*param3/this.nymuf;
         }
         else
         {
            _loc4_=this.rect_.x+param1/2;
            _loc5_=this.rect_.y+param1/2;
         }
         param2.lineStyle(param1,this.color_);
         param2.drawRect(_loc4_,_loc5_,_loc6_,_loc7_);
         return;
      }
   }

}