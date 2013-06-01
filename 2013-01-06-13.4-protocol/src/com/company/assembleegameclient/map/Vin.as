package com.company.assembleegameclient.map
{
[CLASS588]   import flash.utils.Dictionary;


   public class Vin extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const zedij:Dictionary = new Dictionary();

      public static var ronifyva:Dictionary = new Dictionary();

      public static function dyzicy(param1:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         for each (_loc2_ in param1.Region)
         {
            _loc3_=int(_loc2_.@type);
            zedij[_loc3_]=_loc2_;
            ronifyva[String(_loc2_.@id)]=_loc3_;
         }
         return;
      }

      public static function peboda(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = zedij[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return String(_loc2_.@id);
      }

      public static function getColor(param1:int) : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = zedij[param1];
         if(_loc2_==null)
         {
            return 0;
         }
         return uint(_loc2_.Color);
      }
   }
[/CLASS]
}