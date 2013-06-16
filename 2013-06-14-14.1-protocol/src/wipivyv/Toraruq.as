package wipivyv
{
   import dasefezy.RotmgPoint;
   import flash.utils.IDataInput;


   public class Toraruq extends Tezypama
   {
      public function Toraruq(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.startingPos_=new RotmgPoint();
         super(param1,param2);
         return;
      }

      public var bulletId_:uint;

      public var ownerId_:int;

      public var containerType_:int;

      public var startingPos_:RotmgPoint;

      public var angle_:Number;

      public var damage_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bulletId_=param1.readUnsignedByte();
         this.ownerId_=param1.readInt();
         this.containerType_=param1.readInt();
         this.startingPos_.parseFromInput(param1);
         this.angle_=param1.readFloat();
         this.damage_=param1.readShort();
         return;
      }

      override public function toString() : String {
         return formatToString("SHOOT","bulletId_","ownerId_","containerType_","startingPos_","angle_","damage_");
      }
   }

}