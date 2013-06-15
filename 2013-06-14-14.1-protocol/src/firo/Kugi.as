package firo
{
   import flash.utils.IDataOutput;


   public class Kugi extends Jicogu
   {
      public function Kugi(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

}