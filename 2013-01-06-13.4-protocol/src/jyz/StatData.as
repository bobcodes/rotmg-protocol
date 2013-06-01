package jyz
{
[CLASS1296]   import haqakel.Kefyfa;
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

      public static const bory:int = 0;

      public static const fag:int = 1;

      public static const lybamo:int = 2;

      public static const wyjaci:int = 3;

      public static const golifikik:int = 4;

      public static const ros:int = 5;

      public static const gus:int = 6;

      public static const mety:int = 7;

      public static const wugo:int = 20;

      public static const wit:int = 21;

      public static const fizo:int = 22;

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

      public static const nocabu:int = 26;

      public static const vepa:int = 27;

      public static const lowosoqev:int = 28;

      public static const mazuzeso:int = 29;

      public static const rib:int = 30;

      public static const tepawytej:int = 31;

      public static const TEX1_STAT:int = 32;

      public static const TEX2_STAT:int = 33;

      public static const sufaqahu:int = 34;

      public static const qipemume:int = 35;

      public static const girivymi:int = 36;

      public static const dywe:int = 37;

      public static const vakaboh:int = 38;

      public static const wuhyq:int = 39;

      public static const cybyjy:int = 40;

      public static const neno:int = 41;

      public static const bamif:int = 42;

      public static const qumypecer:int = 43;

      public static const kapozi:int = 44;

      public static const das:int = 45;

      public static const fuq:int = 46;

      public static const sijevive:int = 47;

      public static const gitujy:int = 48;

      public static const zudir:int = 49;

      public static const kyqabo:int = 50;

      public static const wipyto:int = 51;

      public static const pedecyg:int = 52;

      public static const lyga:int = 53;

      public static const limohe:int = 54;

      public static const nerykeraz:int = 55;

      public static const cabimobyf:int = 56;

      public static const vacyne:int = 57;

      public static const cufinoq:int = 58;

      public static const fir:int = 59;

      public static const luge:int = 60;

      public static const mynogaqug:int = 61;

      public static const kugol:int = 62;

      public static const rekehomu:int = 63;

      public static const kyv:int = 64;

      public static const remyhe:int = 65;

      public static const vynuk:int = 66;

      public static const quhy:int = 67;

      public static const cunuzeqew:int = 68;

      public static const sukuf:int = 69;

      public static const hudomyh:int = 70;

      public static const BACKPACK_0_STAT:int = 71;

      public static const BACKPACK_1_STAT:int = 72;

      public static const BACKPACK_2_STAT:int = 73;

      public static const BACKPACK_3_STAT:int = 74;

      public static const BACKPACK_4_STAT:int = 75;

      public static const BACKPACK_5_STAT:int = 76;

      public static const BACKPACK_6_STAT:int = 77;

      public static const BACKPACK_7_STAT:int = 78;

      public static const cih:int = 79;

      public static const kalawu:int = 80;

      public static const sakipeme:int = 81;

      public static const riluc:int = 82;

      public static const zekavewyc:int = 83;

      public static const gov:int = 84;

      public static const wyvamo:int = 85;

      public static const kugebowoj:int = 86;

      public static const zigaluhe:int = 87;

      public static const hocig:int = 88;

      public static const cawize:int = 89;

      public static const wajobyfy:int = 90;

      public static const puzoj:int = 91;

      public static const jebyma:int = 92;

      public static const guje:int = 93;

      public static const jogeruf:int = 94;

      public static const husyhupan:int = 95;

      public static function lyz(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case bory:
               return Kefyfa.kugeter;
            case fag:
               return Kefyfa.hosu;
            case lybamo:
               return Kefyfa.tenivo;
            case wyjaci:
               return Kefyfa.cepupimuv;
            case golifikik:
               return Kefyfa.dulu;
            case gus:
               return Kefyfa.syzeq;
            case mety:
               return Kefyfa.vuqog;
            case wugo:
               return Kefyfa.myg;
            case wit:
               return Kefyfa.pivo;
            case fizo:
               return Kefyfa.vorymita;
            case nocabu:
               return Kefyfa.seqyh;
            case vepa:
               return Kefyfa.cegysotoc;
            case lowosoqev:
               return Kefyfa.qumuqahu;
            default:
               return Kefyfa.tijalopy;
         }
      }

      public var pocujotaz:uint = 0;

      public var zuj:int;

      public var dijy:String;

      public function bepub() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         switch(null)
         {
            case tepawytej:
            case kugol:
            case riluc:
               return true;
            default:
               return false;
         }
      }

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pocujotaz=param1.readUnsignedByte();
         if(!this.bepub())
         {
            this.zuj=param1.readInt();
         }
         else
         {
            this.dijy=param1.readUTF();
         }
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeByte(this.pocujotaz);
         if(!this.bepub())
         {
            param1.writeInt(this.zuj);
         }
         else
         {
            param1.writeUTF(this.dijy);
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.bepub())
         {
            return "["+this.pocujotaz+": "+this.zuj+"]";
         }
         return "["+this.pocujotaz+": \""+this.dijy+"\"]";
      }
   }
[/CLASS]
}