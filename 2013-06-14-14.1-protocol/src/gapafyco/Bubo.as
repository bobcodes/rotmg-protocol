package gapafyco
{
   import wipivyv.Tezypama;
   import flash.utils.IDataInput;


   public class Bubo extends Tezypama
   {
      public function Bubo(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var zezana:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zezana=param1.readInt();
         return;
      }
   }

}