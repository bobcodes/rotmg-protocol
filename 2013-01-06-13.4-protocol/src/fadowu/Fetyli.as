package fadowu
{
[CLASS1496]   import flash.utils.IDataOutput;


   public class Fetyli extends Jelo
   {
      public function Fetyli(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var bulletId_:uint;

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         param1.writeByte(this.bulletId_);
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("SQUAREHIT","time_","bulletId_","objectId_");
      }
   }
[/CLASS]
}