package quqe
{
   import cypujavop.Wakudava;
   import flash.utils.IDataInput;


   public class Mizyza extends Tego
   {
      public function Mizyza(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.pos_=new Wakudava();
         super(param1,param2);
         return;
      }

      public var pos_:Wakudava;

      public var radius_:Number;

      public var damage_:int;

      public var effect_:int;

      public var duration_:Number;

      public var origType_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pos_.parseFromInput(param1);
         this.radius_=param1.readFloat();
         this.damage_=param1.readUnsignedShort();
         this.effect_=param1.readUnsignedByte();
         this.duration_=param1.readFloat();
         this.origType_=param1.readUnsignedShort();
         return;
      }

      override public function toString() : String {
         return formatToString("AOE","pos_","radius_","damage_","effect_","duration_","origType_");
      }
   }

}