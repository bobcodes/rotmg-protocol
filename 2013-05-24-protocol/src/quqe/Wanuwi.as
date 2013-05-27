package quqe
{
   import flash.utils.IDataInput;


   public class Wanuwi extends Tego
   {
      public function Wanuwi(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var type:int;

      public var text:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.type=param1.readInt();
         this.text=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("GLOBAL_NOTIFICATION","type","text");
      }
   }

}