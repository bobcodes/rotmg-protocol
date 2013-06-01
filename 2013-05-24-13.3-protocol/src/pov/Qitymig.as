package pov
{
   import flash.events.Event;
   import quqe.Bowe;


   public class Qitymig extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qitymig(param1:Bowe) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(NAMERESULTEVENT);
         this.potonak=param1;
         return;
      }

      public static const NAMERESULTEVENT:String = "NAMERESULTEVENT";

      public var potonak:Bowe;
   }

}