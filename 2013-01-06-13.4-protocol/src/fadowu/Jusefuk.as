package fadowu
{
[CLASS1479]   import jyz.Tyji;
   import jyz.Cijala;
   import flash.utils.IDataOutput;


   public class Jusefuk extends Jelo
   {
      public function Jusefuk(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.position_=new Tyji();
         this.slotObject1_=new Cijala();
         this.slotObject2_=new Cijala();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:Tyji;

      public var slotObject1_:Cijala;

      public var slotObject2_:Cijala;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         this.position_.writeToOutput(param1);
         this.slotObject1_.writeToOutput(param1);
         this.slotObject2_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("INVSWAP","time_","position_","slotObject1_","slotObject2_");
      }
   }
[/CLASS]
}