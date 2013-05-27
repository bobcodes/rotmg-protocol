package quqe
{
   import flash.utils.IDataInput;


   public class Velywel extends Tego
   {
      public function Velywel(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var name_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("TRADEREQUESTED","name_");
      }
   }

}