package firo
{
   import dasefezy.Moceq;
   import dasefezy.Rimukiz;
   import flash.utils.IDataOutput;


   public class Pul extends Jicogu
   {
      public function Pul(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.slotObject_=new Moceq();
         this.itemUsePos_=new Rimukiz();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var slotObject_:Moceq;

      public var itemUsePos_:Rimukiz;

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

}