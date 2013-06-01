package mywyvuryw
{
[CLASS1522]   import flash.utils.IDataInput;


   public class Tabesine extends Daqu
   {
      public function Tabesine(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var bulletId_:uint;

      public var ownerId_:int;

      public var containerType_:int;

      public var angle_:Number;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bulletId_=param1.readUnsignedByte();
         this.ownerId_=param1.readInt();
         this.containerType_=param1.readShort();
         this.angle_=param1.readFloat();
         return;
      }

      override public function toString() : String {
         return formatToString("ALLYSHOOT","bulletId_","ownerId_","containerType_","angle_");
      }
   }
[/CLASS]
}