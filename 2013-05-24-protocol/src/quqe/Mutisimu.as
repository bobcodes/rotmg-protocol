package quqe
{
   import flash.utils.IDataInput;


   public class Mutisimu extends IncomingOnlyNetworkMessage
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Mutisimu(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public static const mezena:int = -1;

      public static const tokav:int = 0;

      public static const farizyqac:int = 1;

      public static const zudyzoko:int = 2;

      public static const nywusop:int = 3;

      public static const sanaku:int = 4;

      public static const butagibo:int = 5;

      public static const qimysemu:int = 6;

      public static const havylif:int = 7;

      public var result_:int;

      public var resultString_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.result_=param1.readInt();
         this.resultString_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("BUYRESULT","result_","resultString_");
      }
   }

}