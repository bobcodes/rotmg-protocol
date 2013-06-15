package com.company.assembleegameclient.map
{
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.Bedypy;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Qemujy extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qemujy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const zupucuwum:Dictionary = new Dictionary();

      public static const ziq:Dictionary = new Dictionary();

      private static var tymefawu:Dictionary = new Dictionary();

      public static const fyri:Dictionary = new Dictionary();

      public static var nezuwy:Dictionary = new Dictionary();

      public static var metocu:Gyn;

      public static function weniti(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         for each (_loc2_ in param1.Ground)
         {
            _loc3_=int(_loc2_.@type);
            zupucuwum[_loc3_]=new Gyn(_loc2_);
            ziq[_loc3_]=_loc2_;
            fyri[_loc3_]=new Bedypy(_loc2_);
            nezuwy[String(_loc2_.@id)]=_loc3_;
         }
         metocu=zupucuwum[255];
         return;
      }

      public static function ryqovol(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Gyn = zupucuwum[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return _loc2_.id_;
      }

      public static function getBitmapData(param1:int, param2:int=0) : BitmapData {
         return fyri[param1].getTexture(param2);
      }

      public static function getColor(param1:int) : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc3_:uint = 0;
         var _loc4_:BitmapData = null;
         if(!tymefawu.hasOwnProperty(param1))
         {
            _loc2_=ziq[param1];
            if(_loc2_.hasOwnProperty("Color"))
            {
               _loc3_=uint(_loc2_.Color);
            }
            else
            {
               _loc4_=getBitmapData(param1);
               _loc3_=BitmapUtil.jemirus(_loc4_);
            }
            tymefawu[param1]=_loc3_;
         }
         return tymefawu[param1];
      }
   }

}