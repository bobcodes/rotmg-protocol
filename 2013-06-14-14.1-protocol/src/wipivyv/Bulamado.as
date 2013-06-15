package wipivyv
{
   import flash.utils.IDataInput;


   public class Bulamado extends Tezypama
   {
      public function Bulamado(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var ownerId_:int;

      public var soundId_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ownerId_=param1.readInt();
         this.soundId_=param1.readUnsignedByte();
         return;
      }

      override public function toString() : String {
         return formatToString("PLAYSOUND","ownerId_","soundId_");
      }
   }

}