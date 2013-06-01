package sonepyc
{
   import cypujavop.Wakudava;
   import flash.utils.IDataOutput;


   public class Gulemo extends OutgoingOnlyNetworkMessage
   {
      public function Gulemo(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.startingPos_=new Wakudava();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var bulletId_:uint;

      public var containerType_:int;

      public var startingPos_:Wakudava;

      public var angle_:Number;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         param1.writeByte(this.bulletId_);
         param1.writeShort(this.containerType_);
         this.startingPos_.writeToOutput(param1);
         param1.writeFloat(this.angle_);
         return;
      }

      override public function toString() : String {
         return formatToString("PLAYERSHOOT","time_","bulletId_","containerType_","startingPos_","angle_");
      }
   }

}