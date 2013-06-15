package firo
{
   import flash.utils.IDataOutput;


   public class Penytur extends Jicogu
   {
      public function Penytur(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var ruzytaly:uint;

      public var powa:uint;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeByte(this.ruzytaly);
         param1.writeInt(this.powa);
         return;
      }
   }

}