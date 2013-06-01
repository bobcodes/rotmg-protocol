package fadowu
{
[CLASS1501]   import flash.utils.IDataOutput;


   public class Dojilyn extends Jelo
   {
      public function Dojilyn(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var name_:String;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeUTF(this.name_);
         return;
      }

      override public function toString() : String {
         return formatToString("REQUESTTRADE","name_");
      }
   }
[/CLASS]
}