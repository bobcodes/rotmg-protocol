package sojyhuw
{
   import wipivyv.Tezypama;
   import flash.utils.IDataInput;


   public class Marej extends Tezypama
   {
      public function Marej(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var currentRuntime:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.currentRuntime=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("IMMINENTARENAWAVE","currentRuntime");
      }
   }

}