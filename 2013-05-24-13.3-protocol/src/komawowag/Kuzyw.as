package komawowag
{
   import flash.events.Event;


   public class Kuzyw extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kuzyw(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      public static const ERROR:String = "error";

      public static const dyqycazuz:String = "preInitialize";

      public static const hyga:String = "initialize";

      public static const veqiqo:String = "postInitialize";

      public static const tujuv:String = "preSuspend";

      public static const vani:String = "suspend";

      public static const lisibomuw:String = "postSuspend";

      public static const biwudo:String = "preResume";

      public static const gacopo:String = "resume";

      public static const nir:String = "postResume";

      public static const bupiq:String = "preDestroy";

      public static const dunijozet:String = "destroy";

      public static const qitaqihy:String = "postDestroy";

      public var error:Error;

      override public function clone() : Event {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kuzyw = new Kuzyw(type);
         _loc1_.error=this.error;
         return _loc1_;
      }
   }

}