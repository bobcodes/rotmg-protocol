package sonepyc
{
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;


   public class Tef extends OutgoingOnlyNetworkMessage
   {
      public function Tef(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
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

      public var gameId_:int = 0;

      public var guid_:String;

      public var password_:String;

      public var secret_:String;

      public var keyTime_:int = 0;

      public var key_:ByteArray;

      public var sofabe:String;

      public var vukyluz:String = "";

      public var soq:String = "";

      public var metulocy:String = "";

      public var bicydyn:String = "";

      public var kofimupo:String = "";

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeUTF(this.buildVersion_);
         param1.writeInt(this.gameId_);
         param1.writeUTF(this.guid_);
         param1.writeUTF(this.password_);
         param1.writeUTF(this.secret_);
         param1.writeInt(this.keyTime_);
         param1.writeShort(this.key_.length);
         param1.writeBytes(this.key_);
         param1.writeInt(this.sofabe.length);
         param1.writeUTFBytes(this.sofabe);
         param1.writeUTF(this.vukyluz);
         param1.writeUTF(this.soq);
         param1.writeUTF(this.metulocy);
         param1.writeUTF(this.bicydyn);
         param1.writeUTF(this.kofimupo);
         return;
      }

      override public function toString() : String {
         return formatToString("HELLO","buildVersion_","gameId_","guid_","password_","secret_");
      }
   }

}