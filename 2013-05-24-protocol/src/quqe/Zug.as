package quqe
{
   import flash.utils.IDataInput;


   public class Zug extends IncomingOnlyNetworkMessage
   {
      public function Zug(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var result_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.result_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("INVRESULT","result_");
      }
   }

}