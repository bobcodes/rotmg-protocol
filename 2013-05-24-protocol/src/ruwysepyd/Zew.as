package ruwysepyd
{
   import nas.Dialog;
   import tulunyno.Hugyqufyq;
   import aaa.rotmg.i18n.I18nKeys;
   import gyzesuqu.Zojygese;


   public class Zew extends Dialog
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(I18nKeys.jevyby,I18nKeys.tywotaca,I18nKeys.toryryqos,I18nKeys.nehazi,rid);
         this.cancel=new Zojygese(this,LEFT_BUTTON);
         this.geziwyv=new Zojygese(this,RIGHT_BUTTON);
         return;
      }

      private static const rid:String = "/notEnoughGold";

      public var cancel:Hugyqufyq;

      public var geziwyv:Hugyqufyq;
   }

}