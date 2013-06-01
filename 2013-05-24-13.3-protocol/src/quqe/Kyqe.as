package quqe
{
   import flash.utils.IDataInput;


   public class Kyqe extends IncomingOnlyNetworkMessage
   {
      public function Kyqe(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var message:String;

      public var color_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.message=param1.readUTF();
         this.color_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("NOTIFICATION","objectId_","message","color_");
      }
   }

}