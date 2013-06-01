package voryzijow
{
   import voto.Nemo;


   public final class Surodimes extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Surodimes() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const cag:String = "localhost";

      public static const luhosusa:String = "private";

      public static const habuby:String = "dev";

      public static const duke:String = "testing";

      public static const pesidari:String = "prodtest";

      public static const baby:String = "production";

      private static const hidunode:RegExp = new RegExp("[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}");

      public function jeluf(param1:String) : Nemo {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.cefykuvazo(param1)?Nemo.codyjyj:this.qacumysy(param1);
      }

      private function cefykuvazo(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1.match(hidunode)==null);
      }

      private function qacumysy(param1:String) : Nemo {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(param1)
         {
            case cag:
               return Nemo.cag;
            case luhosusa:
               return Nemo.luhosusa;
            case habuby:
               return Nemo.habuby;
            case duke:
               return Nemo.duke;
            case pesidari:
               return Nemo.pesidari;
            case baby:
               return Nemo.baby;
            default:
               return null;
         }
      }
   }

}