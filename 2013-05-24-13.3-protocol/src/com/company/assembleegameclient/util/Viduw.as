package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.Cetol;


   public class Viduw extends Object
   {
      public function Viduw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.butymyres=new Vector.<Biloqu>();
         super();
         return;
      }

      public var butymyres:Vector.<Biloqu>;

      public function addFromBitmapData(param1:BitmapData, param2:BitmapData, param3:int, param4:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:Cetol = new Cetol();
         _loc5_.addFromBitmapData(param1,param3,param4);
         var _loc6_:Cetol = null;
         if(param2!=null)
         {
            _loc6_=new Cetol();
            _loc6_.addFromBitmapData(param2,param3,param4);
         }
         var _loc7_:* = 0;
         while(_loc7_<_loc5_.butymyres.length)
         {
            this.butymyres.push(new Biloqu(_loc5_.butymyres[_loc7_],_loc6_==null?null:_loc6_.butymyres[_loc7_]));
            _loc7_++;
         }
         return;
      }

      public function zokesycam(param1:Biloqu, param2:int, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.addFromBitmapData(param1.image_,param1.mask_,param2,param3);
         return;
      }
   }

}