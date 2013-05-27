package quqe
{
   import flash.utils.IDataInput;


   public class Hecy extends IncomingOnlyNetworkMessage
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hecy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public static const juqecata:int = 4;

      public static const vijykek:int = 5;

      public static const cifyfos:int = 6;

      public var errorId_:int;

      public var errorDescription_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errorId_=param1.readInt();
         this.errorDescription_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("FAILURE","errorId_","errorDescription_");
      }
   }

}