package fadowu
{
[CLASS1431]   import flash.utils.IDataOutput;


   public class Luwimy extends Jelo
   {
      public function Luwimy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var conditionEffect_:uint;

      public var conditionDuration_:Number;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.conditionEffect_);
         param1.writeFloat(this.conditionDuration_);
         return;
      }

      override public function toString() : String {
         return formatToString("SETCONDITION","conditionEffect_","conditionDuration_");
      }
   }
[/CLASS]
}