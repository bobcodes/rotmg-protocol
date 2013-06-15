package wipivyv
{
   import flash.utils.IDataInput;


   public class Cesovudas extends Tezypama
   {
      public function Cesovudas(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var serial_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.serial_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("PING","serial_");
      }
   }

}