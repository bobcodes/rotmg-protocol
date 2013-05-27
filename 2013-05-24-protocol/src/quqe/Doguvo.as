package quqe
{
   import cypujavop.Wakudava;
   import flash.utils.IDataInput;


   public class Doguvo extends Tego
   {
      public function Doguvo(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.startingPos_=new Wakudava();
         super(param1,param2);
         return;
      }

      public var bulletId_:uint;

      public var ownerId_:int;

      public var bulletType_:int;

      public var startingPos_:Wakudava;

      public var angle_:Number;

      public var damage_:int;

      public var numShots_:int;

      public var angleInc_:Number;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bulletId_=param1.readUnsignedByte();
         this.ownerId_=param1.readInt();
         this.bulletType_=param1.readUnsignedByte();
         this.startingPos_.parseFromInput(param1);
         this.angle_=param1.readFloat();
         this.damage_=param1.readShort();
         if(param1.bytesAvailable>0)
         {
            this.numShots_=param1.readUnsignedByte();
            this.angleInc_=param1.readFloat();
         }
         else
         {
            this.numShots_=1;
            this.angleInc_=0;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("SHOOT","bulletId_","ownerId_","bulletType_","startingPos_","angle_","damage_","numShots_","angleInc_");
      }
   }

}