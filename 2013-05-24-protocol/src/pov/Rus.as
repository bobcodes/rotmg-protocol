package pov
{
   import flash.events.Event;
   import kogyc.Server;
   import flash.utils.ByteArray;


   public class Rus extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rus(param1:Server, param2:int, param3:Boolean, param4:int, param5:int, param6:ByteArray) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(RECONNECT);
         this.server_=param1;
         this.gameId_=param2;
         this.tacujov=param3;
         this.charId_=param4;
         this.keyTime_=param5;
         this.key_=param6;
         return;
      }

      public static const RECONNECT:String = "RECONNECT_EVENT";

      public var server_:Server;

      public var gameId_:int;

      public var tacujov:Boolean;

      public var charId_:int;

      public var keyTime_:int;

      public var key_:ByteArray;

      override public function clone() : Event {
         return new Rus(this.server_,this.gameId_,this.tacujov,this.charId_,this.keyTime_,this.key_);
      }

      override public function toString() : String {
         return formatToString(RECONNECT,"server_","gameId_","charId_","keyTime_","key_");
      }
   }

}