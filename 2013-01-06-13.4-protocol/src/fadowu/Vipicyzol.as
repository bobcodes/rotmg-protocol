package fadowu
{
[CLASS1502]   import flash.utils.IDataOutput;


   public class Vipicyzol extends Jelo
   {
      public function Vipicyzol(param1:uint, param2:Function) {
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
         return formatToString("GOTOACK","time_");
      }
   }
[/CLASS]
}