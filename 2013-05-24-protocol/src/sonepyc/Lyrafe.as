package sonepyc
{
   import flash.utils.IDataOutput;


   public class Lyrafe extends OutgoingOnlyNetworkMessage
   {
      public function Lyrafe(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var charId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.charId_);
         return;
      }

      override public function toString() : String {
         return formatToString("LOAD","charId_");
      }
   }

}