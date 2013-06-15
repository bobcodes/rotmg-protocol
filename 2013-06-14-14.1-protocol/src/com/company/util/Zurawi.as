package com.company.util
{
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.filters.BitmapFilter;
   import flash.geom.Point;


   public class Zurawi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zurawi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var sigaz:Dictionary = new Dictionary();

      public static function kymyr(param1:BitmapData, param2:ColorTransform) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         var _loc4_:Object = sigaz[param1];
         if(_loc4_!=null)
         {
            _loc3_=_loc4_[param2];
         }
         else
         {
            _loc4_=new Object();
            sigaz[param1]=_loc4_;
         }
         if(_loc3_==null)
         {
            _loc3_=param1.clone();
            _loc3_.colorTransform(_loc3_.rect,param2);
            _loc4_[param2]=_loc3_;
         }
         return _loc3_;
      }

      public static function hohizukip(param1:BitmapData, param2:BitmapFilter) : BitmapData {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:BitmapData = null;
         var _loc4_:Object = sigaz[param1];
         if(_loc4_!=null)
         {
            _loc3_=_loc4_[param2];
         }
         else
         {
            _loc4_=new Object();
            sigaz[param1]=_loc4_;
         }
         if(_loc3_==null)
         {
            _loc3_=param1.clone();
            _loc3_.applyFilter(_loc3_,_loc3_.rect,new Point(),param2);
            _loc4_[param2]=_loc3_;
         }
         return _loc3_;
      }

      public static function fef(param1:BitmapData, param2:Number) : BitmapData {
         var _loc3_:int = int(param2*100);
         var _loc4_:ColorTransform = new ColorTransform(1,1,1,_loc3_/100);
         return kymyr(param1,_loc4_);
      }

      public static function clear() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:Object = null;
         var _loc2_:BitmapData = null;
         for each (_loc1_ in sigaz)
         {
            for each (_loc2_ in _loc1_)
            {
               _loc2_.dispose();
            }
         }
         sigaz=new Dictionary();
         return;
      }
   }

}