package quqe
{
   import flash.utils.IDataInput;


   public class Gut extends IncomingOnlyNetworkMessage
   {
      public function Gut(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.objectId_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("QUESTOBJID","objectId_");
      }
   }

}