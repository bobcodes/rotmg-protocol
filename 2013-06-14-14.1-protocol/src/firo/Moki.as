package firo
{
   import flash.utils.IDataOutput;


   public class Moki extends Jicogu
   {
      public function Moki(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
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