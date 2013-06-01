package ceny
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.utils.getTimer;
   import flash.geom.Rectangle;


   public class Hom extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hom(param1:Vector.<DisplayObject>, param2:int, param3:int, param4:Boolean) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.zadino=param2;
         this.pufe=param3;
         this.list=param1;
         this.count=param1.length;
         this.jicytoko=getTimer();
         this.vyh=param4;
         this.fehyte();
         this.wybeci();
         return;
      }

      private static const likovuzeg:uint = 20000;

      private var zadino:int;

      private var list:Vector.<DisplayObject>;

      private var count:uint;

      private var pufe:uint;

      private var jicytoko:uint;

      private var vyh:Boolean;

      public function saka() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return getTimer()>this.jicytoko+likovuzeg||(this.vyh);
      }

      private function fehyte() : void {
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
            _loc3_.y=(this.pufe-_loc4_.height)*0.5-this.pufe;
            if(_loc1_+_loc4_.width>this.zadino)
            {
               _loc3_.x=0;
               _loc1_=0;
               _loc5_=0;
               while(_loc5_<_loc2_)
               {
                  this.list[_loc5_].y=this.list[_loc5_].y-this.pufe;
                  _loc5_++;
               }
            }
            _loc1_=_loc1_+_loc4_.width;
            _loc2_++;
         }
         return;
      }

      private function wybeci() : void {
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