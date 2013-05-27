package com.company.assembleegameclient.map
{
   import flash.utils.Dictionary;


   public class Vehulumes extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vehulumes() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const tem:Dictionary = new Dictionary();

      public static var tumu:Dictionary = new Dictionary();

      public static function vyce(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         for each (_loc2_ in param1.Region)
         {
            _loc3_=int(_loc2_.@type);
            tem[_loc3_]=_loc2_;
            tumu[String(_loc2_.@id)]=_loc3_;
         }
         return;
      }

      public static function pelek(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = tem[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return String(_loc2_.@id);
      }

      public static function getColor(param1:int) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = tem[param1];
         if(_loc2_==null)
         {
            return 0;
         }
         return uint(_loc2_.Color);
      }
   }

}