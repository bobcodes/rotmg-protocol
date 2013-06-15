package nytifawy
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.utils.getTimer;
   import flash.geom.Rectangle;


   public class Qetejobu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qetejobu(param1:Vector.<DisplayObject>, param2:int, param3:int, param4:Boolean) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.kefocapuc=param2;
         this.mufywo=param3;
         this.list=param1;
         this.count=param1.length;
         this.bawaduby=getTimer();
         this.kype=param4;
         this.fiby();
         this.majywiwah();
         return;
      }

      private static const wuqevum:uint = 20000;

      private var kefocapuc:int;

      private var list:Vector.<DisplayObject>;

      private var count:uint;

      private var mufywo:uint;

      private var bawaduby:uint;

      private var kype:Boolean;

      public function magafehi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return getTimer()>this.bawaduby+wuqevum||(this.kype);
      }

      private function fiby() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
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
            _loc3_.y=(this.mufywo-_loc4_.height)*0.5-this.mufywo;
            if(_loc1_+_loc4_.width>this.kefocapuc)
            {
               _loc3_.x=0;
               _loc1_=0;
               _loc5_=0;
               while(_loc5_<_loc2_)
               {
                  this.list[_loc5_].y=this.list[_loc5_].y-this.mufywo;
                  _loc5_++;
               }
            }
            _loc1_=_loc1_+_loc4_.width;
            _loc2_++;
         }
         return;
      }

      private function majywiwah() : void {
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

}