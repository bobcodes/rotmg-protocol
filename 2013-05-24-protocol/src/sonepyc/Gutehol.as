package sonepyc
{
   import flash.utils.IDataOutput;


   public class Gutehol extends OutgoingOnlyNetworkMessage
   {
      public function Gutehol(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var pakytu:uint;

      public var gud:uint;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeByte(this.pakytu);
         param1.writeInt(this.gud);
         return;
      }
   }

}