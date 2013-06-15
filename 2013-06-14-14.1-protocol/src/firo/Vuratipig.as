package firo
{
   import flash.utils.IDataOutput;


   public class Vuratipig extends Jicogu
   {
      public function Vuratipig(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var bulletId_:uint;

      public var objectId_:int;

      public var targetId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.time_);
         param1.writeByte(this.bulletId_);
         param1.writeInt(this.objectId_);
         param1.writeInt(this.targetId_);
         return;
      }

      override public function toString() : String {
         return formatToString("OTHERHIT","time_","bulletId_","objectId_","targetId_");
      }
   }

}