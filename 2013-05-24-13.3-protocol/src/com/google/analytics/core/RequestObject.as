package com.google.analytics.core
{
   import flash.utils.getTimer;
   import flash.net.URLRequest;


   public class RequestObject extends Object
   {
      public function RequestObject(param1:URLRequest) {
         super();
         start=getTimer();
         this.request=param1;
         return;
      }

      public function hasCompleted() : Boolean {
         return end>0;
      }

      public var start:int;

      public function toString() : String {
         var _loc1_:Array = [];
         _loc1_.push("duration: "+duration+"ms");
         _loc1_.push("url: "+request.url);
         return "{ "+_loc1_.join(", ")+" }";
      }

      public function complete() : void {
         end=getTimer();
         return;
      }

      public var end:int;

      public function get duration() : int {
         if(!hasCompleted())
         {
            return 0;
         }
         return end-start;
      }

      public var request:URLRequest;
   }

}