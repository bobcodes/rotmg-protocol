package sonepyc
{
   import cypujavop.Bocuve;
   import flash.utils.IDataOutput;


   public class Gojuw extends OutgoingOnlyNetworkMessage
   {
      public function Gojuw(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.slotObject_=new Bocuve();
         super(param1,param2);
         return;
      }

      public var slotObject_:Bocuve;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.slotObject_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("INVDROP","slotObject_");
      }
   }

}