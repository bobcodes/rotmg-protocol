package sonepyc
{
   import flash.utils.IDataOutput;


   public class Cubigyga extends OutgoingOnlyNetworkMessage
   {
      public function Cubigyga(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      override public function writeToOutput(param1:IDataOutput) : void {
         return;
      }

      override public function toString() : String {
         return formatToString("ESCAPE");
      }
   }

}