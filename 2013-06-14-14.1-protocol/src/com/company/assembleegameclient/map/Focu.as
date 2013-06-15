package com.company.assembleegameclient.map
{
   import flash.utils.Dictionary;


   public class Focu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Focu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const ziq:Dictionary = new Dictionary();

      public static var nezuwy:Dictionary = new Dictionary();

      public static function weniti(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         for each (_loc2_ in param1.Region)
         {
            _loc3_=int(_loc2_.@type);
            ziq[_loc3_]=_loc2_;
            nezuwy[String(_loc2_.@id)]=_loc3_;
         }
         return;
      }

      public static function ryqovol(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = ziq[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return String(_loc2_.@id);
      }

      public static function getColor(param1:int) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = ziq[param1];
         if(_loc2_==null)
         {
            return 0;
         }
         return uint(_loc2_.Color);
      }
   }

}