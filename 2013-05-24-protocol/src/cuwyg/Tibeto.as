package cuwyg
{
   import aaa.rotmg.net.Server;
   import flash.utils.ByteArray;


   public class Tibeto extends Object
   {
      public function Tibeto() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var server:Server;

      public var whereToSendPlayer:int;

      public var needsToCreateNewChar:Boolean;

      public var charId:int;

      public var keyTime:int;

      public var key:ByteArray;

      public var myto:Boolean;
   }

}