package wipivyv
{
   import flash.utils.IDataInput;


   public class Matydufun extends Tezypama
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Matydufun(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public static const cukiquhuc:int = 4;

      public static const mery:int = 5;

      public static const ravorigof:int = 6;

      public var errorId_:int;

      public var errorDescription_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.errorId_=param1.readInt();
         this.errorDescription_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("FAILURE","errorId_","errorDescription_");
      }
   }

}