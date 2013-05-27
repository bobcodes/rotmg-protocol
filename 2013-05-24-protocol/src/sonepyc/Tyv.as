package sonepyc
{
   import flash.utils.IDataOutput;


   public class Tyv extends OutgoingOnlyNetworkMessage
   {
      public function Tyv(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var time_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.time_);
         return;
      }

      override public function toString() : String {
         return formatToString("SHOOTACK","time_");
      }
   }

}