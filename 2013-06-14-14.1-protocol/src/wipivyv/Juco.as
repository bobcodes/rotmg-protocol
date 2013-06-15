package wipivyv
{
   import flash.utils.IDataInput;


   public class Juco extends Tezypama
   {
      public function Juco(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var message:String;

      public var color_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.message=param1.readUTF();
         this.color_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("NOTIFICATION","objectId_","message","color_");
      }
   }

}