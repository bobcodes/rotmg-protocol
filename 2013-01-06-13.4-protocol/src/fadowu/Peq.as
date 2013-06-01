package fadowu
{
[CLASS1518]   import jyz.Cijala;
   import flash.utils.IDataOutput;


   public class Peq extends Jelo
   {
      public function Peq(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.slotObject_=new Cijala();
         super(param1,param2);
         return;
      }

      public var slotObject_:Cijala;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.slotObject_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("INVDROP","slotObject_");
      }
   }
[/CLASS]
}