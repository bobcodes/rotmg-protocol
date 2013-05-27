package rilyq
{
   import nas.Dialog;


   public class Ryd extends Object implements Fen
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Ryd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const cyreniqyq:String = "There are currently no testing servers available. Please play on <font color=\"#7777EE\"><a href=\"http://www.realmofthemadgod.com/\">www.realmofthemadgod.com</a></font>.";

      private static const TITLE:String = "No Testing Servers";

      private static const vuhotigoc:String = "/noTestingServers";

      public function detuloca() : Dialog {
         return new Dialog(TITLE,cyreniqyq,null,null,vuhotigoc);
      }
   }

}