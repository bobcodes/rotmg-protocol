package mywyvuryw
{
[CLASS1499]   import jyz.Tyji;
   import flash.utils.IDataInput;


   public class Zezylufif extends Daqu
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zezylufif(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.pos1_=new Tyji();
         this.pos2_=new Tyji();
         super(param1,param2);
         return;
      }

      public static const jagaqir:int = 0;

      public static const saseloz:int = 1;

      public static const palejuq:int = 2;

      public static const sydoqiz:int = 3;

      public static const muwi:int = 4;

      public static const lopaworu:int = 5;

      public static const gizat:int = 6;

      public static const qimu:int = 7;

      public static const lyhem:int = 8;

      public static const tudiri:int = 9;

      public static const hyho:int = 10;

      public static const wekavuv:int = 11;

      public static const ziqiqowu:int = 12;

      public static const jas:int = 13;

      public static const rafysij:int = 14;

      public static const rupygop:int = 15;

      public static const podybawy:int = 16;

      public static const hotoposu:int = 17;

      public static const jekuvus:int = 18;

      public static const kyrugobed:int = 19;

      public var effectType_:uint;

      public var targetObjectId_:int;

      public var pos1_:Tyji;

      public var pos2_:Tyji;

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
[/CLASS]
}