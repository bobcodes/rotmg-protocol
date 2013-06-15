package aaa
{
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;


   public class HelloAction extends Jicogu
   {
      public function HelloAction(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.buildVersion_=new String();
         this.guid_=new String();
         this.password_=new String();
         this.secret_=new String();
         this.key_=new ByteArray();
         this.weviq=new String();
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

      public var weviq:String;

      public var fahaduz:String = "";

      public var kajo:String = "";

      public var futu:String = "";

      public var rarofu:String = "";

      public var nalohu:String = "";

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeUTF(this.buildVersion_);
         param1.writeInt(this.gameId_);
         param1.writeUTF(this.guid_);
         param1.writeUTF(this.password_);
         param1.writeUTF(this.secret_);
         param1.writeInt(this.keyTime_);
         param1.writeShort(this.key_.length);
         param1.writeBytes(this.key_);
         param1.writeInt(this.weviq.length);
         param1.writeUTFBytes(this.weviq);
         param1.writeUTF(this.fahaduz);
         param1.writeUTF(this.kajo);
         param1.writeUTF(this.futu);
         param1.writeUTF(this.rarofu);
         param1.writeUTF(this.nalohu);
         return;
      }

      override public function toString() : String {
         return formatToString("HELLO","buildVersion_","gameId_","guid_","password_","secret_");
      }
   }

}