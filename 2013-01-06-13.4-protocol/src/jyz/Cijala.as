package jyz
{
[CLASS942]   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class Cijala extends Object
   {
      public function Cijala() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var objectId_:int;

      public var lypuwyt:int;

      public var objectType_:int;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.lypuwyt=param1.readUnsignedByte();
         this.objectType_=param1.readShort();
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.objectId_);
         param1.writeByte(this.lypuwyt);
         param1.writeShort(this.objectType_);
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "objectId_: "+this.objectId_+" slotId_: "+this.lypuwyt+" objectType_: "+this.objectType_;
      }
   }
[/CLASS]
}