package com.company.assembleegameclient.objects
{
[CLASS470]   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Loqedobiq extends Object
   {
      public function Loqedobiq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function zovy(param1:String, param2:int) : BitmapData {
         return AssetLibrary.zovy(param1,param2);
      }

      public function getTexture(param1:int, param2:int) : BitmapData {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:BitmapData = null;
         var _loc3_:BitmapData = ObjectLibrary.getBitmapData(param1);
         if(_loc3_)
         {
            _loc4_=(param2-TextureRedrawer.nac)/_loc3_.width;
            _loc5_=ObjectLibrary.getRedrawnTextureFromType(param1,100,true,false,_loc4_);
            return _loc5_;
         }
         return new BitmapData(param2,param2);
      }
   }
[/CLASS]
}