package quqe
{
   import flash.utils.IDataInput;


   public class Zaluh extends IncomingOnlyNetworkMessage
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zaluh(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public static const vyqehewo:int = 0;

      public static const hirecygyj:int = 1;

      public var code_:int;

      public var description_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.code_=param1.readInt();
         this.description_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("TRADEDONE","code_","description_");
      }
   }

}