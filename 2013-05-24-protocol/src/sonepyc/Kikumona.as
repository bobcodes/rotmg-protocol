package sonepyc
{
   import flash.utils.IDataOutput;


   public class Kikumona extends OutgoingOnlyNetworkMessage
   {
      public function Kikumona(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var bulletId_:uint;

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.bulletId_);
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("PLAYERHIT","bulletId_","objectId_");
      }
   }

}