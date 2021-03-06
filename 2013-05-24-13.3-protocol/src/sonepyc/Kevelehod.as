package sonepyc
{
   import flash.utils.IDataOutput;


   public class Kevelehod extends OutgoingOnlyNetworkMessage
   {
      public function Kevelehod(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var accountListId_:int;

      public var add_:Boolean;

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.accountListId_);
         param1.writeBoolean(this.add_);
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("EDITACCOUNTLIST","accountListId_","add_","objectId_");
      }
   }

}