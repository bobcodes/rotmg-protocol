package fadowu
{
[CLASS1505]   import flash.utils.IDataOutput;


   public class Bazu extends Jelo
   {
      public function Bazu(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
         return formatToString("CREATEGUILD","name_");
      }
   }
[/CLASS]
}