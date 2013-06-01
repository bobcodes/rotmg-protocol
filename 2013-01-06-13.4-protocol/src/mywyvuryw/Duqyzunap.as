package mywyvuryw
{
[CLASS1462]   import flash.utils.IDataInput;


   public class Duqyzunap extends Daqu
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Duqyzunap(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public static const volig:int = -1;

      public static const hegef:int = 0;

      public static const cuny:int = 1;

      public static const kovukyq:int = 2;

      public static const hofutyfe:int = 3;

      public static const suhyb:int = 4;

      public static const tinuwyku:int = 5;

      public static const sowelig:int = 6;

      public static const towet:int = 7;

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
[/CLASS]
}