package vaned
{
[CLASS437]   import cejyva.Dialog;
   import haqakel.Kefyfa;


   public class ProductionNoServersDialogFactory extends Object implements Wehipyj
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ProductionNoServersDialogFactory() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const forums_link:String = "<font color=\"#7777EE\"><a href=\"http://forums.wildshadow.com/\">forums.wildshadow.com</a></font>";

      private static const byke:String = "/offLine";

      public function biw() : Dialog {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dialog = new Dialog(Kefyfa.cavinen,"",null,null,byke);
         _loc1_.wan.setHTML(true);
         _loc1_.rezynobik(Kefyfa.cuk,{forums_link:forums_link});
         return _loc1_;
      }
   }
[/CLASS]
}