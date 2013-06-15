package zukinigor
{
   import firo.Jicogu;
   import flash.utils.IDataOutput;


   public class Lazapy extends Jicogu
   {
      public function Lazapy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var currency:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.currency);
         return;
      }

      override public function toString() : String {
         return formatToString("ENTER_ARENA","currency");
      }
   }

}