package fadowu
{
[CLASS1487]   import flash.utils.IDataOutput;


   public class Teleport extends Jelo
   {
      public function Teleport(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("TELEPORT","objectId_");
      }
   }
[/CLASS]
}