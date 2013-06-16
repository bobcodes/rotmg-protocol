package firo
{
   import dasefezy.RotmgPoint;
   import dasefezy.Moceq;
   import flash.utils.IDataOutput;


   public class Kihivy extends Jicogu
   {
      public function Kihivy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.position_=new RotmgPoint();
         this.slotObject1_=new Moceq();
         this.slotObject2_=new Moceq();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:RotmgPoint;

      public var slotObject1_:Moceq;

      public var slotObject2_:Moceq;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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

}