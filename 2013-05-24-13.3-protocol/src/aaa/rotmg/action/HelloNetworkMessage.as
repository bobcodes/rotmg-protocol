package aaa.rotmg.action
{
   import aaa.rotmg.net.OutgoingOnlyNetworkMessage;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;


   public class HelloNetworkMessage extends OutgoingOnlyNetworkMessage
   {
      public function HelloNetworkMessage(param1:uint, param2:Function) {
         this.buildVersion_=new String();
         this.guid_=new String();
         this.password_=new String();
         this.secret_=new String();
         this.key_=new ByteArray();
         this.sofabe=new String();
         super(param1,param2);
         return;
      }

      public var buildVersion_:String;

      public var _whereToSendPlayer:int = 0;

      public var guid_:String;

      public var password_:String;

      public var secret_:String;

      public var keyTime_:int = 0;

      public var key_:ByteArray;

      public var sofabe:String;

      public var rotmgUrlLibParamEntryPoint:String = "";

      public var gameNet:String = "";

      public var metulocy:String = "";

      public var getPlayPlatform:String = "";

      public var kofimupo:String = "";

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeUTF(this.buildVersion_);
         param1.writeInt(this._whereToSendPlayer);
         param1.writeUTF(this.guid_);
         param1.writeUTF(this.password_);
         param1.writeUTF(this.secret_);
         param1.writeInt(this.keyTime_);
         param1.writeShort(this.key_.length);
         param1.writeBytes(this.key_);
         param1.writeInt(this.sofabe.length);
         param1.writeUTFBytes(this.sofabe);
         param1.writeUTF(this.rotmgUrlLibParamEntryPoint);
         param1.writeUTF(this.gameNet);
         param1.writeUTF(this.metulocy);
         param1.writeUTF(this.getPlayPlatform);
         param1.writeUTF(this.kofimupo);
         return;
      }

      override public function toString() : String {
         return formatToString("HELLO","buildVersion_","gameId_","guid_","password_","secret_");
      }
   }

}