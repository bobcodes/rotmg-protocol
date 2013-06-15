package firo
{
   import dasefezy.Rimukiz;
   import flash.utils.IDataOutput;


   public class Jul extends Jicogu
   {
      public function Jul(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.startingPos_=new Rimukiz();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var bulletId_:uint;

      public var containerType_:int;

      public var startingPos_:Rimukiz;

      public var angle_:Number;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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