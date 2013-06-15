package firo
{
   import flash.utils.IDataOutput;


   public class Nyfalobu extends Jicogu
   {
      public function Nyfalobu(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
         return formatToString("GOTOACK","time_");
      }
   }

}