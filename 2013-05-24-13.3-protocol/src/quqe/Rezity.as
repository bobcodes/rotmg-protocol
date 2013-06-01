package quqe
{
   import flash.utils.IDataInput;


   public class Rezity extends IncomingOnlyNetworkMessage
   {
      public function Rezity(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var charId_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.charId_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("CREATE_SUCCESS","objectId_","charId_");
      }
   }

}