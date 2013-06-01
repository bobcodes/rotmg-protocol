package fadowu
{
[CLASS1490]   import jyz.Tyji;
   import __AS3__.vec.Vector;
   import jyz.Rehudicov;
   import flash.utils.IDataOutput;


   public class Ganaq extends Jelo
   {
      public function Ganaq(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.newPosition_=new Tyji();
         this.records_=new Vector.<Rehudicov>();
         super(param1,param2);
         return;
      }

      public var tickId_:int;

      public var time_:int;

      public var newPosition_:Tyji;

      public var records_:Vector.<Rehudicov>;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.writeInt(this.tickId_);
         param1.writeInt(this.time_);
         this.newPosition_.writeToOutput(param1);
         param1.writeShort(this.records_.length);
         var _loc2_:* = 0;
         while(_loc2_<this.records_.length)
         {
            this.records_[_loc2_].writeToOutput(param1);
            _loc2_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("MOVE","tickId_","time_","newPosition_","records_");
      }
   }
[/CLASS]
}