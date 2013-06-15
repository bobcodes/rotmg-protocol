package firo
{
   import dasefezy.Rimukiz;
   import __AS3__.vec.Vector;
   import dasefezy.Fucyz;
   import flash.utils.IDataOutput;


   public class Pavinol extends Jicogu
   {
      public function Pavinol(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.newPosition_=new Rimukiz();
         this.records_=new Vector.<Fucyz>();
         super(param1,param2);
         return;
      }

      public var tickId_:int;

      public var time_:int;

      public var newPosition_:Rimukiz;

      public var records_:Vector.<Fucyz>;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
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

}