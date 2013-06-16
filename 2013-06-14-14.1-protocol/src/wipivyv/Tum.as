package wipivyv
{
   import dasefezy.RotmgPoint;
   import flash.utils.IDataInput;


   public class Tum extends Tezypama
   {
      public function Tum(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pos_=new RotmgPoint();
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var pos_:RotmgPoint;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.objectId_=param1.readInt();
         this.pos_.parseFromInput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("GOTO","objectId_","pos_");
      }
   }

}