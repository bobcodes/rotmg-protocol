package hine
{
[CLASS1652]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.utils.getTimer;
   import flash.geom.Rectangle;


   public class Bityn extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Bityn(param1:Vector.<DisplayObject>, param2:int, param3:int, param4:Boolean) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.topyribu=param2;
         this.levojy=param3;
         this.list=param1;
         this.count=param1.length;
         this.guwuqyr=getTimer();
         this.fufosac=param4;
         this.fazi();
         this.zuqicu();
         return;
      }

      private static const gazosaqac:uint = 20000;

      private var topyribu:int;

      private var list:Vector.<DisplayObject>;

      private var count:uint;

      private var levojy:uint;

      private var guwuqyr:uint;

      private var fufosac:Boolean;

      public function lely() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return getTimer()>this.guwuqyr+gazosaqac||(this.fufosac);
      }

      private function fazi() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:DisplayObject = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<this.count)
         {
            _loc3_=this.list[_loc2_];
            _loc4_=_loc3_.getRect(_loc3_);
            _loc3_.x=_loc1_;
            _loc3_.y=(this.levojy-_loc4_.height)*0.5-this.levojy;
            if(_loc1_+_loc4_.width>this.topyribu)
            {
               _loc3_.x=0;
               _loc1_=0;
               _loc5_=0;
               while(_loc5_<_loc2_)
               {
                  this.list[_loc5_].y=this.list[_loc5_].y-this.levojy;
                  _loc5_++;
               }
            }
            _loc1_=_loc1_+_loc4_.width;
            _loc2_++;
         }
         return;
      }

      private function zuqicu() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:DisplayObject = null;
         for each (_loc1_ in this.list)
         {
            addChild(_loc1_);
         }
         return;
      }
   }
[/CLASS]
}