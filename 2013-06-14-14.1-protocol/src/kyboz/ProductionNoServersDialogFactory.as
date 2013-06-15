package kyboz
{
   import vysob.Dialog;
   import komi.Vibemod;


   public class ProductionNoServersDialogFactory extends Object implements Qogevazof
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ProductionNoServersDialogFactory() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const forums_link:String = "<font color=\"#7777EE\"><a href=\"http://forums.wildshadow.com/\">forums.wildshadow.com</a></font>";

      private static const dipah:String = "/offLine";

      public function qogirahi() : Dialog {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dialog = new Dialog(Vibemod.loseqalah,"",null,null,dipah);
         _loc1_.wybibe.setHTML(true);
         _loc1_.vubah(Vibemod.jegusoqi,{forums_link:forums_link});
         return _loc1_;
      }
   }

}