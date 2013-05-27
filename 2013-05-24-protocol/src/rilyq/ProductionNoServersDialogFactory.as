package rilyq
{
   import nas.Dialog;
   import aaa.rotmg.i18n.I18nKeys;


   public class ProductionNoServersDialogFactory extends Object implements Fen
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ProductionNoServersDialogFactory() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const forums_link:String = "<font color=\"#7777EE\"><a href=\"http://forums.wildshadow.com/\">forums.wildshadow.com</a></font>";

      private static const vuhotigoc:String = "/offLine";

      public function detuloca() : Dialog {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dialog = new Dialog(I18nKeys.leq,"",null,null,vuhotigoc);
         _loc1_.qicoqymuj.setHTML(true);
         _loc1_.bipefybo(I18nKeys.vyfo,{forums_link:forums_link});
         return _loc1_;
      }
   }

}