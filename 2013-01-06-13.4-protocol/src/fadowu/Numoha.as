package fadowu
{
[CLASS1430]   import flash.utils.IDataOutput;


   public class Numoha extends Jelo
   {
      public function Numoha(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
[/CLASS]
}