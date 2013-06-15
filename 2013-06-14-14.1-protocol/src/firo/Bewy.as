package firo
{
   import flash.utils.IDataOutput;


   public class Bewy extends Jicogu
   {
      public function Bewy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var name_:String;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeUTF(this.name_);
         return;
      }

      override public function toString() : String {
         return formatToString("CHOOSENAME","name_");
      }
   }

}