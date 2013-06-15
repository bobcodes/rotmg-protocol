package mulypagy
{
   import zevyd.Wufoduj;


   public final class Fiponivu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fiponivu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const bac:String = "localhost";

      public static const kapez:String = "private";

      public static const dyviko:String = "dev";

      public static const nobuta:String = "testing";

      public static const juv:String = "prodtest";

      public static const piqyg:String = "production";

      private static const jyfejogym:RegExp = new RegExp("[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}");

      public function jozeguk(param1:String) : Wufoduj {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.bova(param1)?Wufoduj.wowysery:this.kyseba(param1);
      }

      private function bova(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1.match(jyfejogym)==null);
      }

      private function kyseba(param1:String) : Wufoduj {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case bac:
               return Wufoduj.bac;
            case kapez:
               return Wufoduj.kapez;
            case dyviko:
               return Wufoduj.dyviko;
            case nobuta:
               return Wufoduj.nobuta;
            case juv:
               return Wufoduj.juv;
            case piqyg:
               return Wufoduj.piqyg;
            default:
               return null;
         }
      }
   }

}