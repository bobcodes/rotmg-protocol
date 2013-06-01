package com.company.assembleegameclient.util
{
[CLASS1303]   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.Zymusyhi;


   public class Fupyw extends Object
   {
      public function Fupyw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qulu=new Vector.<Gejugut>();
         super();
         return;
      }

      public var qulu:Vector.<Gejugut>;

      public function addFromBitmapData(param1:BitmapData, param2:BitmapData, param3:int, param4:int) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:Zymusyhi = new Zymusyhi();
         _loc5_.addFromBitmapData(param1,param3,param4);
         var _loc6_:Zymusyhi = null;
         if(param2!=null)
         {
            _loc6_=new Zymusyhi();
            _loc6_.addFromBitmapData(param2,param3,param4);
         }
         var _loc7_:* = 0;
         while(_loc7_<_loc5_.qulu.length)
         {
            this.qulu.push(new Gejugut(_loc5_.qulu[_loc7_],_loc6_==null?null:_loc6_.qulu[_loc7_]));
            _loc7_++;
         }
         return;
      }

      public function colup(param1:Gejugut, param2:int, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.addFromBitmapData(param1.image_,param1.mask_,param2,param3);
         return;
      }
   }
[/CLASS]
}