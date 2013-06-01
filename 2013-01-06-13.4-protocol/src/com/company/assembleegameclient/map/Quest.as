package com.company.assembleegameclient.map
{
[CLASS1149]   import flash.utils.getTimer;
   import com.company.assembleegameclient.objects.GameObject;


   public class Quest extends Object
   {
      public function Quest(param1:Map) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.map_=param1;
         return;
      }

      public var map_:Map;

      public var objectId_:int = -1;

      private var buholy:int = 0;

      private var loloduqok:int = 0;

      public function setObject(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.objectId_==-1&&!(param1==-1))
         {
            this.buholy=getTimer()+4000;
            this.loloduqok=this.buholy+2000;
         }
         this.objectId_=param1;
         return;
      }

      public function completed() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buholy=getTimer()+15000-Math.random()*10000;
         this.loloduqok=this.buholy+2000;
         return;
      }

      public function getObject(param1:int) : GameObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<this.buholy)
         {
            return null;
         }
         return this.map_.goDict_[this.objectId_];
      }

      public function isNew(param1:int) : Boolean {
         return param1<this.loloduqok;
      }
   }
[/CLASS]
}