package mywyvuryw
{
[CLASS1485]   import flash.utils.IDataInput;


   public class Jamuk extends Daqu
   {
      public function Jamuk(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var serial_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.serial_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("PING","serial_");
      }
   }
[/CLASS]
}