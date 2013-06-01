package fadowu
{
[CLASS1509]   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;


   public class Zyfej extends Jelo
   {
      public function Zyfej(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.buildVersion_=new String();
         this.guid_=new String();
         this.password_=new String();
         this.secret_=new String();
         this.key_=new ByteArray();
         this.zekovow=new String();
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

      public var zekovow:String;

      public var cotize:String = "";

      public var jygeduva:String = "";

      public var zybar:String = "";

      public var rom:String = "";

      public var lygogac:String = "";

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
         param1.writeInt(this.zekovow.length);
         param1.writeUTFBytes(this.zekovow);
         param1.writeUTF(this.cotize);
         param1.writeUTF(this.jygeduva);
         param1.writeUTF(this.zybar);
         param1.writeUTF(this.rom);
         param1.writeUTF(this.lygogac);
         return;
      }

      override public function toString() : String {
         return formatToString("HELLO","buildVersion_","gameId_","guid_","password_","secret_");
      }
   }
[/CLASS]
}