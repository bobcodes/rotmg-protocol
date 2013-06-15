package wipivyv
{
   import dasefezy.Rimukiz;
   import flash.utils.IDataInput;


   public class Qibunom extends Tezypama
   {
      public function Qibunom(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pos_=new Rimukiz();
         super(param1,param2);
         return;
      }

      public var pos_:Rimukiz;

      public var radius_:Number;

      public var damage_:int;

      public var effect_:int;

      public var duration_:Number;

      public var origType_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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