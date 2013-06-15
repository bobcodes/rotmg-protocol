package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.Fufudol;


   public class Zijuq extends Object
   {
      public function Zijuq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gisydi=new Vector.<Kebinuhi>();
         super();
         return;
      }

      public var gisydi:Vector.<Kebinuhi>;

      public function addFromBitmapData(param1:BitmapData, param2:BitmapData, param3:int, param4:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:Fufudol = new Fufudol();
         _loc5_.addFromBitmapData(param1,param3,param4);
         var _loc6_:Fufudol = null;
         if(param2!=null)
         {
            _loc6_=new Fufudol();
            _loc6_.addFromBitmapData(param2,param3,param4);
         }
         var _loc7_:* = 0;
         while(_loc7_<_loc5_.gisydi.length)
         {
            this.gisydi.push(new Kebinuhi(_loc5_.gisydi[_loc7_],_loc6_==null?null:_loc6_.gisydi[_loc7_]));
            _loc7_++;
         }
         return;
      }

      public function wojunofyv(param1:Kebinuhi, param2:int, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.addFromBitmapData(param1.image_,param1.mask_,param2,param3);
         return;
      }
   }

}