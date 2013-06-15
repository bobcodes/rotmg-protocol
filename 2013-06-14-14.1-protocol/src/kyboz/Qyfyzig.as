package kyboz
{
   import vysob.Dialog;


   public class Qyfyzig extends Object implements Qogevazof
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qyfyzig() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const maki:String = "There are currently no testing servers available. Please play on <font color=\"#7777EE\"><a href=\"http://www.realmofthemadgod.com/\">www.realmofthemadgod.com</a></font>.";

      private static const TITLE:String = "No Testing Servers";

      private static const dipah:String = "/noTestingServers";

      public function qogirahi() : Dialog {
         return new Dialog(TITLE,maki,null,null,dipah);
      }
   }

}