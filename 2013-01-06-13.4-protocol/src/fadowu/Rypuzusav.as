package fadowu
{
[CLASS1519]   import flash.utils.IDataOutput;


   public class Rypuzusav extends Jelo
   {
      public function Rypuzusav(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.text_=new String();
         super(param1,param2);
         return;
      }

      public var text_:String;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeUTF(this.text_);
         return;
      }

      override public function toString() : String {
         return formatToString("PLAYERTEXT","text_");
      }
   }
[/CLASS]
}