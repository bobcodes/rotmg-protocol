package com.company.util
{
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.filters.BitmapFilter;
   import flash.geom.Point;


   public class Zet extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zet() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var pyz:Dictionary = new Dictionary();

      public static function juwyc(param1:BitmapData, param2:ColorTransform) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         var _loc4_:Object = pyz[param1];
         if(_loc4_!=null)
         {
            _loc3_=_loc4_[param2];
         }
         else
         {
            _loc4_=new Object();
            pyz[param1]=_loc4_;
         }
         if(_loc3_==null)
         {
            _loc3_=param1.clone();
            _loc3_.colorTransform(_loc3_.rect,param2);
            _loc4_[param2]=_loc3_;
         }
         return _loc3_;
      }

      public static function soduve(param1:BitmapData, param2:BitmapFilter) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         var _loc4_:Object = pyz[param1];
         if(_loc4_!=null)
         {
            _loc3_=_loc4_[param2];
         }
         else
         {
            _loc4_=new Object();
            pyz[param1]=_loc4_;
         }
         if(_loc3_==null)
         {
            _loc3_=param1.clone();
            _loc3_.applyFilter(_loc3_,_loc3_.rect,new Point(),param2);
            _loc4_[param2]=_loc3_;
         }
         return _loc3_;
      }

      public static function waliwaci(param1:BitmapData, param2:Number) : BitmapData {
         var _loc3_:int = int(param2*100);
         var _loc4_:ColorTransform = new ColorTransform(1,1,1,_loc3_/100);
         return juwyc(param1,_loc4_);
      }

      public static function clear() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:Object = null;
         var _loc2_:BitmapData = null;
         for each (_loc1_ in pyz)
         {
            for each (_loc2_ in _loc1_)
            {
               _loc2_.dispose();
            }
         }
         pyz=new Dictionary();
         return;
      }
   }

}