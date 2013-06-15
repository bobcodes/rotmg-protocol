package gapafyco
{
   import wipivyv.Tezypama;
   import flash.utils.IDataInput;


   public class Cijeqih extends Tezypama
   {
      public function Cijeqih(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var petName:String;

      public var qotyla:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.petName=param1.readUTF();
         this.qotyla=param1.readInt();
         return;
      }
   }

}