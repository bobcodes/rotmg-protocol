package quqe
{
   import cypujavop.Wakudava;
   import flash.utils.IDataInput;


   public class Taw extends Tego
   {
      public function Taw(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.startingPos_=new Wakudava();
         super(param1,param2);
         return;
      }

      public var bulletId_:uint;

      public var ownerId_:int;

      public var containerType_:int;

      public var startingPos_:Wakudava;

      public var angle_:Number;

      public var damage_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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