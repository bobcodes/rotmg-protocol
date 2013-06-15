package firo
{
   import flash.utils.IDataOutput;


   public class Zozog extends Jicogu
   {
      public function Zozog(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var time_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         return;
      }

      override public function toString() : String {
         return formatToString("SHOOTACK","time_");
      }
   }

}