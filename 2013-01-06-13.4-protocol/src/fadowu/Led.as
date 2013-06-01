package fadowu
{
[CLASS1517]   import flash.utils.IDataOutput;


   public class Led extends Jelo
   {
      public function Led(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var bulletId_:uint;

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeByte(this.bulletId_);
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("PLAYERHIT","bulletId_","objectId_");
      }
   }
[/CLASS]
}