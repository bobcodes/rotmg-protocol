package cypujavop
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class Bocuve extends Object
   {
      public function Bocuve() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var objectId_:int;

      public var byzezil:int;

      public var objectType_:int;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.byzezil=param1.readUnsignedByte();
         this.objectType_=param1.readShort();
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.objectId_);
         param1.writeByte(this.byzezil);
         param1.writeShort(this.objectType_);
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "objectId_: "+this.objectId_+" slotId_: "+this.byzezil+" objectType_: "+this.objectType_;
      }
   }

}