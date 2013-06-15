package dasefezy
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class Moceq extends Object
   {
      public function Moceq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var objectId_:int;

      public var siketo:int;

      public var objectType_:int;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.objectId_=param1.readInt();
         this.siketo=param1.readUnsignedByte();
         this.objectType_=param1.readShort();
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.objectId_);
         param1.writeByte(this.siketo);
         param1.writeShort(this.objectType_);
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "objectId_: "+this.objectId_+" slotId_: "+this.siketo+" objectType_: "+this.objectType_;
      }
   }

}