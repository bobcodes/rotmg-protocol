package com.company.assembleegameclient.map
{
[CLASS587]   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.Dabufyhut;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Lakum extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lakum() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const teqot:Dictionary = new Dictionary();

      public static const zedij:Dictionary = new Dictionary();

      private static var mizy:Dictionary = new Dictionary();

      public static const kusuj:Dictionary = new Dictionary();

      public static var ronifyva:Dictionary = new Dictionary();

      public static var gebyjyri:Deja;

      public static function dyzicy(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         for each (_loc2_ in param1.Ground)
         {
            _loc3_=int(_loc2_.@type);
            teqot[_loc3_]=new Deja(_loc2_);
            zedij[_loc3_]=_loc2_;
            kusuj[_loc3_]=new Dabufyhut(_loc2_);
            ronifyva[String(_loc2_.@id)]=_loc3_;
         }
         gebyjyri=teqot[255];
         return;
      }

      public static function peboda(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Deja = teqot[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return _loc2_.id_;
      }

      public static function getBitmapData(param1:int, param2:int=0) : BitmapData {
         return kusuj[param1].getTexture(param2);
      }

      public static function getColor(param1:int) : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         var _loc3_:uint = 0;
         var _loc4_:BitmapData = null;
         if(!mizy.hasOwnProperty(param1))
         {
            _loc2_=zedij[param1];
            if(_loc2_.hasOwnProperty("Color"))
            {
               _loc3_=uint(_loc2_.Color);
            }
            else
            {
               _loc4_=getBitmapData(param1);
               _loc3_=BitmapUtil.samav(_loc4_);
            }
            mizy[param1]=_loc3_;
         }
         return mizy[param1];
      }
   }
[/CLASS]
}