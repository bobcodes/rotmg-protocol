package noniq
{
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import com.company.util.IntPoint;


   class Resynuf extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Resynuf(param1:Vector.<IntPoint>) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(TILES_EVENT);
         this.tiles_=param1;
         return;
      }

      public static const TILES_EVENT:String = "TILES_EVENT";

      public var tiles_:Vector.<IntPoint>;
   }

}