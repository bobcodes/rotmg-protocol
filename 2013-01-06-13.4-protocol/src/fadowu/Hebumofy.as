package fadowu
{
[CLASS1508]   import jyz.Cijala;
   import jyz.Tyji;
   import flash.utils.IDataOutput;


   public class Hebumofy extends Jelo
   {
      public function Hebumofy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.slotObject_=new Cijala();
         this.itemUsePos_=new Tyji();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var slotObject_:Cijala;

      public var itemUsePos_:Tyji;

      public var useType_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         this.slotObject_.writeToOutput(param1);
         this.itemUsePos_.writeToOutput(param1);
         param1.writeByte(this.useType_);
         return;
      }

      override public function toString() : String {
         return formatToString("USEITEM","slotObject_","itemUsePos_","useType_");
      }
   }
[/CLASS]
}