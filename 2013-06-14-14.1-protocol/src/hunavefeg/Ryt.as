package hunavefeg
{
   import flash.events.Event;


   public class Ryt extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Ryt(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      public static const ERROR:String = "error";

      public static const negujig:String = "preInitialize";

      public static const favupun:String = "initialize";

      public static const bymeveh:String = "postInitialize";

      public static const hyjesot:String = "preSuspend";

      public static const fep:String = "suspend";

      public static const bocomak:String = "postSuspend";

      public static const qiqiv:String = "preResume";

      public static const tuketurac:String = "resume";

      public static const lefi:String = "postResume";

      public static const zod:String = "preDestroy";

      public static const liw:String = "destroy";

      public static const fijefupy:String = "postDestroy";

      public var error:Error;

      override public function clone() : Event {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Ryt = new Ryt(type);
         _loc1_.error=this.error;
         return _loc1_;
      }
   }

}