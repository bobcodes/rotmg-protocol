package com.company.util
{
[CLASS872]   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.filters.BitmapFilter;
   import flash.geom.Point;


   public class Dyzonoto extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dyzonoto() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var nuwuzu:Dictionary = new Dictionary();

      public static function zategokog(param1:BitmapData, param2:ColorTransform) : BitmapData {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:BitmapData = null;
         var _loc4_:Object = nuwuzu[param1];
         if(_loc4_!=null)
         {
            _loc3_=_loc4_[param2];
         }
         else
         {
            _loc4_=new Object();
            nuwuzu[param1]=_loc4_;
         }
         if(_loc3_==null)
         {
            _loc3_=param1.clone();
            _loc3_.colorTransform(_loc3_.rect,param2);
            _loc4_[param2]=_loc3_;
         }
         return _loc3_;
      }

      public static function naqucovu(param1:BitmapData, param2:BitmapFilter) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         var _loc4_:Object = nuwuzu[param1];
         if(_loc4_!=null)
         {
            _loc3_=_loc4_[param2];
         }
         else
         {
            _loc4_=new Object();
            nuwuzu[param1]=_loc4_;
         }
         if(_loc3_==null)
         {
            _loc3_=param1.clone();
            _loc3_.applyFilter(_loc3_,_loc3_.rect,new Point(),param2);
            _loc4_[param2]=_loc3_;
         }
         return _loc3_;
      }

      public static function bacog(param1:BitmapData, param2:Number) : BitmapData {
         var _loc3_:int = int(param2*100);
         var _loc4_:ColorTransform = new ColorTransform(1,1,1,_loc3_/100);
         return zategokog(param1,_loc4_);
      }

      public static function clear() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:Object = null;
         var _loc2_:BitmapData = null;
         for each (_loc1_ in nuwuzu)
         {
            for each (_loc2_ in _loc1_)
            {
               _loc2_.dispose();
            }
         }
         nuwuzu=new Dictionary();
         return;
      }
   }
[/CLASS]
}