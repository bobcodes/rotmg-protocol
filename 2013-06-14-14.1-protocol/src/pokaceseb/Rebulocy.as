package pokaceseb
{
   import typoc.Layout;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Rebulocy extends Object implements Layout
   {
      public function Rebulocy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var padding:int = 0;

      public function sowoz() : int {
         return this.padding;
      }

      public function wysycoviw(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.padding=param1;
         return;
      }

      public function layout(param1:Vector.<DisplayObject>, param2:int=0) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:DisplayObject = null;
         var _loc3_:int = param2;
         var _loc4_:int = param1.length;
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc6_=param1[_loc5_];
            _loc6_.x=_loc3_;
            _loc3_=_loc3_+(_loc6_.width+this.padding);
            _loc5_++;
         }
         return;
      }
   }

}