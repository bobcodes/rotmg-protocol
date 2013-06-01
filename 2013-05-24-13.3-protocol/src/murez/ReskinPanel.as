package murez
{
   import vaqob.Panel;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import tulunyno.Hugyqufyq;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.KeyboardEvent;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.game.GameSprite;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;


   public class ReskinPanel extends Panel
   {
      public function ReskinPanel(param1:GameSprite=null) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         this.nep.add(this.zeg);
         return;
      }

      private const title:Lufub = this.ladifol();

      private const button:Dogyqijec = this.pykutud();

      private const nep:Hugyqufyq = new Zojygese(this.button,MouseEvent.CLICK);

      public const reskin:Hugyqufyq = new Hugyqufyq();

      private function zeg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.reskin.dispatch();
         return;
      }

      private function ladifol() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(18).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.setStringBuilder(new Sire().setParams(I18nKeys.ficysu));
         addChild(_loc1_);
         return _loc1_;
      }

      private function pykutud() : Dogyqijec {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dogyqijec = new Dogyqijec(16,I18nKeys.lagadonik);
         _loc1_.textChanged.addOnce(this.cykunevan);
         addChild(_loc1_);
         return _loc1_;
      }

      private function cykunevan() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.button.x=WIDTH/2-this.button.width/2;
         this.button.y=HEIGHT-this.button.height-4;
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            this.reskin.dispatch();
         }
         return;
      }
   }

}