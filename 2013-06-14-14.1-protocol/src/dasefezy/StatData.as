package dasefezy
{
   import komi.Vibemod;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class StatData extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function StatData() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const jemoni:int = 0;

      public static const tibozimer:int = 1;

      public static const kyg:int = 2;

      public static const lasijo:int = 3;

      public static const nabavaf:int = 4;

      public static const moh:int = 5;

      public static const hofylop:int = 6;

      public static const sitow:int = 7;

      public static const cehysufuw:int = 20;

      public static const pomobudi:int = 21;

      public static const hyqolob:int = 22;

      public static const INVENTORY_0_STAT:int = 8;

      public static const INVENTORY_1_STAT:int = 9;

      public static const INVENTORY_2_STAT:int = 10;

      public static const INVENTORY_3_STAT:int = 11;

      public static const INVENTORY_4_STAT:int = 12;

      public static const INVENTORY_5_STAT:int = 13;

      public static const INVENTORY_6_STAT:int = 14;

      public static const INVENTORY_7_STAT:int = 15;

      public static const INVENTORY_8_STAT:int = 16;

      public static const INVENTORY_9_STAT:int = 17;

      public static const INVENTORY_10_STAT:int = 18;

      public static const INVENTORY_11_STAT:int = 19;

      public static const tebuqa:int = 26;

      public static const zuzyt:int = 27;

      public static const nywowudoz:int = 28;

      public static const nycit:int = 29;

      public static const lopi:int = 30;

      public static const ladisib:int = 31;

      public static const TEX1_STAT:int = 32;

      public static const TEX2_STAT:int = 33;

      public static const vululidi:int = 34;

      public static const dewaf:int = 35;

      public static const jamimufy:int = 36;

      public static const zagycun:int = 37;

      public static const gyjys:int = 38;

      public static const gizafaj:int = 39;

      public static const tumaqo:int = 40;

      public static const jywifoh:int = 41;

      public static const qogaw:int = 42;

      public static const jijufo:int = 43;

      public static const zib:int = 44;

      public static const loho:int = 45;

      public static const cyqakyp:int = 46;

      public static const basef:int = 47;

      public static const rur:int = 48;

      public static const ryfemo:int = 49;

      public static const qicybo:int = 50;

      public static const peda:int = 51;

      public static const wasoqupub:int = 52;

      public static const bigo:int = 53;

      public static const kodad:int = 54;

      public static const zovoho:int = 55;

      public static const cebehikef:int = 56;

      public static const pehecubos:int = 57;

      public static const nycemaq:int = 58;

      public static const ryfyb:int = 59;

      public static const datape:int = 60;

      public static const hido:int = 61;

      public static const legu:int = 62;

      public static const majywycor:int = 63;

      public static const vasomeh:int = 64;

      public static const loviwanob:int = 65;

      public static const mide:int = 66;

      public static const zezotato:int = 67;

      public static const tazypal:int = 68;

      public static const kilydisyj:int = 69;

      public static const zecef:int = 70;

      public static const BACKPACK_0_STAT:int = 71;

      public static const BACKPACK_1_STAT:int = 72;

      public static const BACKPACK_2_STAT:int = 73;

      public static const BACKPACK_3_STAT:int = 74;

      public static const BACKPACK_4_STAT:int = 75;

      public static const BACKPACK_5_STAT:int = 76;

      public static const BACKPACK_6_STAT:int = 77;

      public static const BACKPACK_7_STAT:int = 78;

      public static const haqibov:int = 79;

      public static const vaqivapim:int = 80;

      public static const notowupi:int = 81;

      public static const fiwipyd:int = 82;

      public static const fubitotuc:int = 83;

      public static const tyfevan:int = 84;

      public static const monopupaq:int = 85;

      public static const dyjymaruk:int = 86;

      public static const sepej:int = 87;

      public static const bukyv:int = 88;

      public static const gyqyheqo:int = 89;

      public static const fucur:int = 90;

      public static const nahuvocov:int = 91;

      public static const topu:int = 92;

      public static const nazes:int = 93;

      public static const qytu:int = 94;

      public static const kahy:int = 95;

      public static function lycaz(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case jemoni:
               return Vibemod.kug;
            case tibozimer:
               return Vibemod.nysirahec;
            case kyg:
               return Vibemod.gamipag;
            case lasijo:
               return Vibemod.neso;
            case nabavaf:
               return Vibemod.reqodafes;
            case hofylop:
               return Vibemod.gasosuci;
            case sitow:
               return Vibemod.geto;
            case cehysufuw:
               return Vibemod.pojybyhol;
            case pomobudi:
               return Vibemod.jipogaja;
            case hyqolob:
               return Vibemod.hekekuse;
            case tebuqa:
               return Vibemod.teqamyky;
            case zuzyt:
               return Vibemod.torake;
            case nywowudoz:
               return Vibemod.rugopylid;
            default:
               return Vibemod.ronica;
         }
      }

      public var wyp:uint = 0;

      public var cip:int;

      public var hune:String;

      public function tapo() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         switch(null)
         {
            case ladisib:
            case legu:
            case fiwipyd:
               return true;
            default:
               return false;
         }
      }

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wyp=param1.readUnsignedByte();
         if(!this.tapo())
         {
            this.cip=param1.readInt();
         }
         else
         {
            this.hune=param1.readUTF();
         }
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.wyp);
         if(!this.tapo())
         {
            param1.writeInt(this.cip);
         }
         else
         {
            param1.writeUTF(this.hune);
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.tapo())
         {
            return "["+this.wyp+": "+this.cip+"]";
         }
         return "["+this.wyp+": \""+this.hune+"\"]";
      }
   }

}