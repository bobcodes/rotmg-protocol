package wipivyv
{
   import flash.utils.IDataInput;


   public class Vubehunin extends Tezypama
   {
      public function Vubehunin(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var result_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.result_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("INVRESULT","result_");
      }
   }

}