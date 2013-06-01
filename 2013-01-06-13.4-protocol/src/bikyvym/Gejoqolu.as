package bikyvym
{
[CLASS850]   import flash.events.Event;


   public class Gejoqolu extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gejoqolu(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      public static const ERROR:String = "error";

      public static const rokuzahy:String = "preInitialize";

      public static const nyhyginul:String = "initialize";

      public static const lideb:String = "postInitialize";

      public static const ducuw:String = "preSuspend";

      public static const hopelih:String = "suspend";

      public static const gohogy:String = "postSuspend";

      public static const cafuve:String = "preResume";

      public static const ninuc:String = "resume";

      public static const nedim:String = "postResume";

      public static const powohidab:String = "preDestroy";

      public static const wywihaw:String = "destroy";

      public static const nemudywy:String = "postDestroy";

      public var error:Error;

      override public function clone() : Event {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gejoqolu = new Gejoqolu(type);
         _loc1_.error=this.error;
         return _loc1_;
      }
   }
[/CLASS]
}