package cypujavop
{
   import aaa.rotmg.i18n.I18nKeys;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class StatData extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function StatData() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const zotijo:int = 0;

      public static const lamoge:int = 1;

      public static const dok:int = 2;

      public static const kakuboho:int = 3;

      public static const lyjejiku:int = 4;

      public static const wozuj:int = 5;

      public static const coqe:int = 6;

      public static const nipilera:int = 7;

      public static const tyq:int = 20;

      public static const jizusom:int = 21;

      public static const myw:int = 22;

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

      public static const jatafudu:int = 26;

      public static const qubapedy:int = 27;

      public static const joj:int = 28;

      public static const riqyv:int = 29;

      public static const giwuro:int = 30;

      public static const nedyku:int = 31;

      public static const TEX1_STAT:int = 32;

      public static const TEX2_STAT:int = 33;

      public static const pijezi:int = 34;

      public static const zymyk:int = 35;

      public static const warabi:int = 36;

      public static const kykudata:int = 37;

      public static const vosam:int = 38;

      public static const ridos:int = 39;

      public static const benutepu:int = 40;

      public static const jelyqowir:int = 41;

      public static const tukej:int = 42;

      public static const rejyr:int = 43;

      public static const lif:int = 44;

      public static const qagene:int = 45;

      public static const mec:int = 46;

      public static const hyruhob:int = 47;

      public static const fiture:int = 48;

      public static const tepeva:int = 49;

      public static const gekoke:int = 50;

      public static const lafelorif:int = 51;

      public static const bes:int = 52;

      public static const hijyqeba:int = 53;

      public static const jadizu:int = 54;

      public static const pojo:int = 55;

      public static const zoqimony:int = 56;

      public static const solalaw:int = 57;

      public static const hezumo:int = 58;

      public static const qiqe:int = 59;

      public static const fele:int = 60;

      public static const copyp:int = 61;

      public static const pigujiza:int = 62;

      public static const laqeliko:int = 63;

      public static const jogepe:int = 64;

      public static const gyzave:int = 65;

      public static const netapiz:int = 66;

      public static const divodipoh:int = 67;

      public static const fizucyneq:int = 68;

      public static const nybyvylys:int = 69;

      public static const gof:int = 70;

      public static const BACKPACK_0_STAT:int = 71;

      public static const BACKPACK_1_STAT:int = 72;

      public static const BACKPACK_2_STAT:int = 73;

      public static const BACKPACK_3_STAT:int = 74;

      public static const BACKPACK_4_STAT:int = 75;

      public static const BACKPACK_5_STAT:int = 76;

      public static const BACKPACK_6_STAT:int = 77;

      public static const BACKPACK_7_STAT:int = 78;

      public static const zewo:int = 79;

      public static const dosikusy:int = 80;

      public static const noz:int = 81;

      public static const wacapym:int = 82;

      public static const zupuwikyv:int = 83;

      public static const sewurivoc:int = 84;

      public static const cityqew:int = 85;

      public static const madihyqen:int = 86;

      public static const purefiki:int = 87;

      public static const nybofeb:int = 88;

      public static const qiregezy:int = 89;

      public static const zegizo:int = 90;

      public static const pona:int = 91;

      public static const nini:int = 92;

      public static const ceqara:int = 93;

      public static const facyle:int = 94;

      public static const nakeh:int = 95;

      public static function jacypana(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1)
         {
            case zotijo:
               return I18nKeys.tugunu;
            case lamoge:
               return I18nKeys.fiwus;
            case dok:
               return I18nKeys.diz;
            case kakuboho:
               return I18nKeys.siv;
            case lyjejiku:
               return I18nKeys.feput;
            case coqe:
               return I18nKeys.nutynely;
            case nipilera:
               return I18nKeys.runugujuf;
            case tyq:
               return I18nKeys.qof;
            case jizusom:
               return I18nKeys.dyqijazu;
            case myw:
               return I18nKeys.gif;
            case jatafudu:
               return I18nKeys.dawiz;
            case qubapedy:
               return I18nKeys.bacydyhih;
            case joj:
               return I18nKeys.lusude;
            default:
               return I18nKeys.lav;
         }
      }

      public var masazulu:uint = 0;

      public var tiz:int;

      public var fiposyk:String;

      public function titi() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         switch(this.masazulu)
         {
            case nedyku:
            case pigujiza:
            case wacapym:
               return true;
            default:
               return false;
         }
      }

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.masazulu=param1.readUnsignedByte();
         if(!this.titi())
         {
            this.tiz=param1.readInt();
         }
         else
         {
            this.fiposyk=param1.readUTF();
         }
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.masazulu);
         if(!this.titi())
         {
            param1.writeInt(this.tiz);
         }
         else
         {
            param1.writeUTF(this.fiposyk);
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.titi())
         {
            return "["+this.masazulu+": "+this.tiz+"]";
         }
         return "["+this.masazulu+": \""+this.fiposyk+"\"]";
      }
   }

}