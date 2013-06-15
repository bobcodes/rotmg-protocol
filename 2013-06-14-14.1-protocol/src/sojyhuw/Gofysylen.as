package sojyhuw
{
   import wipivyv.Tezypama;
   import flash.utils.IDataInput;


   public class Gofysylen extends Tezypama
   {
      public function Gofysylen(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var cost:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cost=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("ARENADEATH","cost");
      }
   }

}