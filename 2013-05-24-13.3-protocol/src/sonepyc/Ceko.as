package sonepyc
{
   import cypujavop.Wakudava;
   import cypujavop.Bocuve;
   import flash.utils.IDataOutput;


   public class Ceko extends OutgoingOnlyNetworkMessage
   {
      public function Ceko(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.position_=new Wakudava();
         this.slotObject1_=new Bocuve();
         this.slotObject2_=new Bocuve();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:Wakudava;

      public var slotObject1_:Bocuve;

      public var slotObject2_:Bocuve;

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

}