package wipivyv
{
   import flash.utils.IDataInput;


   public class Fek extends Tezypama
   {
      public function Fek(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var name_:String;

      public var value_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_=param1.readUTF();
         this.value_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("CLIENTSTAT","name_","value_");
      }
   }

}