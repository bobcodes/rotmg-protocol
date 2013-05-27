package ruwysepyd
{
   import nas.Dialog;
   import tulunyno.Hugyqufyq;
   import aaa.rotmg.i18n.I18nKeys;
   import gyzesuqu.Zojygese;


   public class ChooseNameRegisterDialog extends Dialog
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ChooseNameRegisterDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(I18nKeys.rosasif,I18nKeys.hobug,I18nKeys.zicymujo,I18nKeys.porypeb,rid);
         this.cancel=new Zojygese(this,LEFT_BUTTON);
         this.register=new Zojygese(this,RIGHT_BUTTON);
         return;
      }

      private static const rid:String = "/chooseNameNeedRegister";

      public var cancel:Hugyqufyq;

      public var register:Hugyqufyq;
   }

}