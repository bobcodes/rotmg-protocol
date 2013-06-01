package quqe
{
   import cypujavop.Wakudava;
   import flash.utils.IDataInput;


   public class Zopomepu extends IncomingOnlyNetworkMessage
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zopomepu(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pos1_=new Wakudava();
         this.pos2_=new Wakudava();
         super(param1,param2);
         return;
      }

      public static const vafy:int = 0;

      public static const zupypeqyp:int = 1;

      public static const jigukobe:int = 2;

      public static const dovuzedo:int = 3;

      public static const boqo:int = 4;

      public static const sebivok:int = 5;

      public static const mohugazy:int = 6;

      public static const patul:int = 7;

      public static const gitaj:int = 8;

      public static const cal:int = 9;

      public static const lagyjiryn:int = 10;

      public static const fyq:int = 11;

      public static const tebyr:int = 12;

      public static const qori:int = 13;

      public static const lupi:int = 14;

      public static const lusyru:int = 15;

      public static const tycolo:int = 16;

      public static const muhero:int = 17;

      public static const wagiliz:int = 18;

      public static const qinozepo:int = 19;

      public var effectType_:uint;

      public var targetObjectId_:int;

      public var pos1_:Wakudava;

      public var pos2_:Wakudava;

      public var color_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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