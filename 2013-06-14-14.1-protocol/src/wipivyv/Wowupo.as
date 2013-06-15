package wipivyv
{
   import flash.utils.IDataInput;


   public class Wowupo extends Tezypama
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wowupo(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public static const giw:int = 0;

      public static const lyridedug:int = 1;

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