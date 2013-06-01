package fadowu
{
[CLASS1454]   import flash.utils.IDataOutput;


   public class Gorunowus extends Jelo
   {
      public function Gorunowus(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var bulletId_:uint;

      public var targetId_:int;

      public var kill_:Boolean;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.time_);
         param1.writeByte(this.bulletId_);
         param1.writeInt(this.targetId_);
         param1.writeBoolean(this.kill_);
         return;
      }

      override public function toString() : String {
         return formatToString("ENEMYHIT","time_","bulletId_","targetId_","kill_");
      }
   }
[/CLASS]
}