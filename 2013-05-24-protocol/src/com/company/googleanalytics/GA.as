package com.company.googleanalytics
{
   import com.google.analytics.GATracker;


   public class GA extends Object
   {
      public function GA() {
         super();
         throw new Error("Don\'t instance this class");
      }

      private static var tracker:GATracker = null;

      public static function global() : GATracker {
         return tracker;
      }

      public static function setTracker(param1:GATracker) : void {
         GA.tracker=param1;
         return;
      }
   }

}