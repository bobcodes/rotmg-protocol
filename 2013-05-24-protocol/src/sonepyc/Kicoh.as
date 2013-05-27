package sonepyc
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataOutput;


   public class Kicoh extends OutgoingOnlyNetworkMessage
   {
      public function Kicoh(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.offer_=new Vector.<Boolean>();
         super(param1,param2);
         return;
      }

      public var offer_:Vector.<Boolean>;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.writeShort(this.offer_.length);
         var _loc2_:* = 0;
         while(_loc2_<this.offer_.length)
         {
            param1.writeBoolean(this.offer_[_loc2_]);
            _loc2_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("CHANGETRADE","offer_");
      }
   }

}