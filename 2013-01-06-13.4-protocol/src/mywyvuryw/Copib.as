package mywyvuryw
{
[CLASS1460]   import flash.utils.IDataInput;


   public class Copib extends Daqu
   {
      public function Copib(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var name_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("TRADEREQUESTED","name_");
      }
   }
[/CLASS]
}