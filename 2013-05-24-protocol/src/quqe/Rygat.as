package quqe
{
   import flash.utils.IDataInput;


   public class Rygat extends Tego
   {
      public function Rygat(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var name_:String;

      public var value_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name_=param1.readUTF();
         this.value_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("CLIENTSTAT","name_","value_");
      }
   }

}