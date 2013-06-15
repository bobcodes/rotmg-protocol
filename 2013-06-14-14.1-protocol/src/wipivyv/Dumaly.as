package wipivyv
{
   import flash.utils.IDataInput;


   public class Dumaly extends Tezypama
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dumaly(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public static const joboqig:int = -1;

      public static const coqybemib:int = 0;

      public static const cijys:int = 1;

      public static const noz:int = 2;

      public static const cubup:int = 3;

      public static const cykybiso:int = 4;

      public static const nugytavac:int = 5;

      public static const kiv:int = 6;

      public static const byjuqe:int = 7;

      public var result_:int;

      public var resultString_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.result_=param1.readInt();
         this.resultString_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("BUYRESULT","result_","resultString_");
      }
   }

}