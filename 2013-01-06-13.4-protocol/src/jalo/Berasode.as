package jalo
{
[CLASS221]   import minobyb.Pycilylu;


   public final class Berasode extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Berasode() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const hyt:String = "localhost";

      public static const jiqapo:String = "private";

      public static const zesof:String = "dev";

      public static const wybebic:String = "testing";

      public static const sybufim:String = "prodtest";

      public static const vusif:String = "production";

      private static const nis:RegExp = new RegExp("[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}");

      public function surusul(param1:String) : Pycilylu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.byresodof(param1)?Pycilylu.zyzap:this.hecolibe(param1);
      }

      private function byresodof(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1.match(nis)==null);
      }

      private function hecolibe(param1:String) : Pycilylu {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case hyt:
               return Pycilylu.hyt;
            case jiqapo:
               return Pycilylu.jiqapo;
            case zesof:
               return Pycilylu.zesof;
            case wybebic:
               return Pycilylu.wybebic;
            case sybufim:
               return Pycilylu.sybufim;
            case vusif:
               return Pycilylu.vusif;
            default:
               return null;
         }
      }
   }
[/CLASS]
}