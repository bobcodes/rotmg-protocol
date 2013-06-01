package kat
{
   import nas.Dialog;
   import tulunyno.Hugyqufyq;
   import aaa.rotmg.i18n.I18nKeys;
   import gyzesuqu.Zojygese;


   public class Puqyfebal extends Dialog
   {
      public function Puqyfebal(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(I18nKeys.rosasif,param1,I18nKeys.zicymujo,I18nKeys.porypeb,"/needRegister");
         this.cancel=new Zojygese(this,LEFT_BUTTON);
         this.register=new Zojygese(this,RIGHT_BUTTON);
         return;
      }

      public var cancel:Hugyqufyq;

      public var register:Hugyqufyq;
   }

}