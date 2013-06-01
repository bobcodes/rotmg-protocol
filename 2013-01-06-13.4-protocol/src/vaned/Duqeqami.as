package vaned
{
[CLASS426]   import cejyva.Dialog;


   public class Duqeqami extends Object implements Wehipyj
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Duqeqami() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const wapylym:String = "There are currently no testing servers available. Please play on <font color=\"#7777EE\"><a href=\"http://www.realmofthemadgod.com/\">www.realmofthemadgod.com</a></font>.";

      private static const TITLE:String = "No Testing Servers";

      private static const byke:String = "/noTestingServers";

      public function biw() : Dialog {
         return new Dialog(TITLE,wapylym,null,null,byke);
      }
   }
[/CLASS]
}