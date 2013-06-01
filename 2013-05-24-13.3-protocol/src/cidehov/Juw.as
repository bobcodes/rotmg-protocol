package cidehov
{
   import com.google.analytics.GATracker;
   import flash.display.Stage;
   import com.company.googleanalytics.GA;


   public class Juw extends Object
   {
      public function Juw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var tracker:GATracker;

      public function init(param1:Stage, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.tracker=new GATracker(param1,param2);
         GA.setTracker(this.tracker);
         return;
      }

      public function trackEvent(param1:String, param2:String, param3:String, param4:Number) : Boolean {
         return this.tracker.trackEvent(param1,param2,param3,param4);
      }

      public function jijofylo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tracker.trackPageview(param1);
         return;
      }
   }

}