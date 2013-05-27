package sonepyc
{
   import flash.utils.IDataOutput;


   public class Lobywo extends OutgoingOnlyNetworkMessage
   {
      public function Lobywo(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var conditionEffect_:uint;

      public var conditionDuration_:Number;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeByte(this.conditionEffect_);
         param1.writeFloat(this.conditionDuration_);
         return;
      }

      override public function toString() : String {
         return formatToString("SETCONDITION","conditionEffect_","conditionDuration_");
      }
   }

}