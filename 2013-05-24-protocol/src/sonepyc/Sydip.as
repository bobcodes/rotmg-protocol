package sonepyc
{
   import cypujavop.Wakudava;
   import flash.utils.IDataOutput;


   public class Sydip extends OutgoingOnlyNetworkMessage
   {
      public function Sydip(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.position_=new Wakudava();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:Wakudava;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.time_);
         this.position_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("AOEACK","time_","position_");
      }
   }

}