package sonepyc
{
   import flash.utils.IDataOutput;


   public class Woh extends OutgoingOnlyNetworkMessage
   {
      public function Woh(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var serial_:int;

      public var time_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.serial_);
         param1.writeInt(this.time_);
         return;
      }

      override public function toString() : String {
         return formatToString("PONG","serial_","time_");
      }
   }

}