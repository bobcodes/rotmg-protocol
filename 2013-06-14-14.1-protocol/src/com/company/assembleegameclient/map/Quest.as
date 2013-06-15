package com.company.assembleegameclient.map
{
   import flash.utils.getTimer;
   import com.company.assembleegameclient.objects.GameObject;


   public class Quest extends Object
   {
      public function Quest(param1:Map) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.map_=param1;
         return;
      }

      public var map_:Map;

      public var objectId_:int = -1;

      private var rijum:int = 0;

      private var qemaj:int = 0;

      public function setObject(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.objectId_==-1&&!(param1==-1))
         {
            this.rijum=getTimer()+4000;
            this.qemaj=this.rijum+2000;
         }
         this.objectId_=param1;
         return;
      }

      public function completed() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rijum=getTimer()+15000-Math.random()*10000;
         this.qemaj=this.rijum+2000;
         return;
      }

      public function getObject(param1:int) : GameObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<this.rijum)
         {
            return null;
         }
         return this.map_.goDict_[this.objectId_];
      }

      public function isNew(param1:int) : Boolean {
         return param1<this.qemaj;
      }
   }

}