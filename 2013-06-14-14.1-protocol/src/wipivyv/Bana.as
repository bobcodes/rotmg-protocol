package wipivyv
{
   import dasefezy.Rimukiz;
   import flash.utils.IDataInput;


   public class Bana extends Tezypama
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Bana(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pos1_=new Rimukiz();
         this.pos2_=new Rimukiz();
         super(param1,param2);
         return;
      }

      public static const lilatep:int = 0;

      public static const piriduvu:int = 1;

      public static const faky:int = 2;

      public static const vuvorova:int = 3;

      public static const bonor:int = 4;

      public static const rema:int = 5;

      public static const kuk:int = 6;

      public static const qatimam:int = 7;

      public static const jif:int = 8;

      public static const sul:int = 9;

      public static const qupi:int = 10;

      public static const lijer:int = 11;

      public static const vagyhi:int = 12;

      public static const tyninydo:int = 13;

      public static const matijilys:int = 14;

      public static const byjihaka:int = 15;

      public static const gyduv:int = 16;

      public static const halujoci:int = 17;

      public static const gum:int = 18;

      public static const dazoluv:int = 19;

      public var effectType_:uint;

      public var targetObjectId_:int;

      public var pos1_:Rimukiz;

      public var pos2_:Rimukiz;

      public var color_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.effectType_=param1.readUnsignedByte();
         this.targetObjectId_=param1.readInt();
         this.pos1_.parseFromInput(param1);
         this.pos2_.parseFromInput(param1);
         this.color_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("SHOW_EFFECT","effectType_","targetObjectId_","pos1_","pos2_","color_");
      }
   }

}