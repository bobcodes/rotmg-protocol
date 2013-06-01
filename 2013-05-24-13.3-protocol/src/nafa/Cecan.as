package nafa
{
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import com.company.util.IntPoint;


   class Cecan extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Cecan(param1:Vector.<IntPoint>) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(TILES_EVENT);
         this.tiles_=param1;
         return;
      }

      public static const TILES_EVENT:String = "TILES_EVENT";

      public var tiles_:Vector.<IntPoint>;
   }

}