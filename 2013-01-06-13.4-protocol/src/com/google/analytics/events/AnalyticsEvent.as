package com.google.analytics.events
{
[CLASS1573]   import flash.events.Event;
   import com.google.analytics.AnalyticsTracker;


   public class AnalyticsEvent extends Event
   {
      public function AnalyticsEvent(param1:String, param2:AnalyticsTracker, param3:Boolean=false, param4:Boolean=false) {
         super(param1,param3,param4);
         this.tracker=param2;
         return;
      }

      public static const READY:String = "ready";

      public var tracker:AnalyticsTracker;

      override public function clone() : Event {
         return new AnalyticsEvent(type,tracker,bubbles,cancelable);
      }
   }
[/CLASS]
}