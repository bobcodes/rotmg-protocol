package aaa
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataInput;


   public class MapInfoMsg extends Daqu
   {
      public function MapInfoMsg(param1:uint, param2:Function) {
         this.clientXML_=new Vector.<String>();
         this.extraXML_=new Vector.<String>();
         super(param1,param2);
         return;
      }

      public var width_:int;

      public var height_:int;

      public var name_:String;

      public var momebujot:String;

      public var dem:int;

      public var fp_:uint;

      public var background_:int;

      public var allowPlayerTeleport_:Boolean;

      public var showDisplays_:Boolean;

      public var clientXML_:Vector.<String>;

      public var extraXML_:Vector.<String>;

      override public function parseFromInput(param1:IDataInput) : void {
         this.nat(param1);
         this.lahero(param1);
         return;
      }

      private function nat(param1:IDataInput) : void {
         this.width_=param1.readInt();
         this.height_=param1.readInt();
         this.name_=param1.readUTF();
         this.momebujot=param1.readUTF();
         this.fp_=param1.readUnsignedInt();
         this.background_=param1.readInt();
         this.dem=param1.readInt();
         this.allowPlayerTeleport_=param1.readBoolean();
         this.showDisplays_=param1.readBoolean();
         return;
      }

      private function lahero(param1:IDataInput) : void {
         var numOfStrings:* = 0;
         var currentStringNum:* = 0;
         var numOfStringBytes:* = 0;
         numOfStrings=param1.readShort();
         this.clientXML_.length=0;
         currentStringNum=0;
         while(currentStringNum<numOfStrings)
         {
            numOfStringBytes=param1.readInt();
            this.clientXML_.push(param1.readUTFBytes(numOfStringBytes));
            currentStringNum++;
         }
         numOfStrings=param1.readShort();
         this.extraXML_.length=0;
         currentStringNum=0;
         while(currentStringNum<numOfStrings)
         {
            numOfStringBytes=param1.readInt();
            this.extraXML_.push(param1.readUTFBytes(numOfStringBytes));
            currentStringNum++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("MAPINFO","width_","height_","name_","fp_","background_","allowPlayerTeleport_","showDisplays_","clientXML_","extraXML_");
      }
   }
[/CLASS]
}