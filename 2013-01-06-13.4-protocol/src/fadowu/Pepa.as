package fadowu
{
[CLASS940]   import flash.utils.IDataOutput;


   public class Pepa extends Jelo
   {
      public function Pepa(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var fybudun:uint;

      public var negyv:uint;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.fybudun);
         param1.writeInt(this.negyv);
         return;
      }
   }
[/CLASS]
}