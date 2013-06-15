package huv
{
   import flash.events.Event;
   import jovurora.Server;
   import flash.utils.ByteArray;


   public class Barisyz extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Barisyz(param1:Server, param2:int, param3:Boolean, param4:int, param5:int, param6:ByteArray, param7:Boolean) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         super(RECONNECT);
         this.server_=param1;
         this.gameId_=param2;
         this.sivakykad=param3;
         this.charId_=param4;
         this.keyTime_=param5;
         this.key_=param6;
         this.isFromArena_=param7;
         return;
      }

      public static const RECONNECT:String = "RECONNECT_EVENT";

      public var server_:Server;

      public var gameId_:int;

      public var sivakykad:Boolean;

      public var charId_:int;

      public var keyTime_:int;

      public var key_:ByteArray;

      public var isFromArena_:Boolean;

      override public function clone() : Event {
         return new Barisyz(this.server_,this.gameId_,this.sivakykad,this.charId_,this.keyTime_,this.key_,this.isFromArena_);
      }

      override public function toString() : String {
         return formatToString(RECONNECT,"server_","gameId_","charId_","keyTime_","key_","isFromArena_");
      }
   }

}