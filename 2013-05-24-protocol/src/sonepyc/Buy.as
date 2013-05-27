package sonepyc
{
   import flash.utils.IDataOutput;


   public class Buy extends OutgoingOnlyNetworkMessage
   {
      public function Buy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("BUY","objectId_");
      }
   }

}