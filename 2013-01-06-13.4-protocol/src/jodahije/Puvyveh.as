package jodahije
{
[CLASS1103]   import flash.events.Event;
   import wyjimigo.Server;
   import flash.utils.ByteArray;


   public class Puvyveh extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Puvyveh(param1:Server, param2:int, param3:Boolean, param4:int, param5:int, param6:ByteArray) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(RECONNECT);
         this.server_=param1;
         this.gameId_=param2;
         this.kasyda=param3;
         this.charId_=param4;
         this.keyTime_=param5;
         this.key_=param6;
         return;
      }

      public static const RECONNECT:String = "RECONNECT_EVENT";

      public var server_:Server;

      public var gameId_:int;

      public var kasyda:Boolean;

      public var charId_:int;

      public var keyTime_:int;

      public var key_:ByteArray;

      override public function clone() : Event {
         return new Puvyveh(this.server_,this.gameId_,this.kasyda,this.charId_,this.keyTime_,this.key_);
      }

      override public function toString() : String {
         return formatToString(RECONNECT,"server_","gameId_","charId_","keyTime_","key_");
      }
   }
[/CLASS]
}