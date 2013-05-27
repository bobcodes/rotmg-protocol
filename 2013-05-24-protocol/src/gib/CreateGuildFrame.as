package gib
{
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.events.MouseEvent;
   import pov.Wyta;
   import aaa.rotmg.i18n.I18nKeys;


   public class CreateGuildFrame extends Frame
   {
      public function CreateGuildFrame(param1:GameSprite) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(I18nKeys.gukolymy,I18nKeys.toryryqos,I18nKeys.hasidu,"/createGuild");
         this.gs_=param1;
         this.name_=new Wejat(I18nKeys.gady,false);
         this.name_.inputText_.restrict="A-Za-z ";
         var _loc2_:* = 20;
         this.name_.inputText_.maxChars=_loc2_;
         jupywota(this.name_);
         syzicodag(I18nKeys.lyquna,{maxChars:_loc2_});
         syzicodag(I18nKeys.pif);
         syzicodag(I18nKeys.wuhi);
         lodab.addEventListener(MouseEvent.CLICK,this.onCancel);
         dal.addEventListener(MouseEvent.CLICK,this.gazyvabim);
         return;
      }

      public const close:Hugyqufyq = new Hugyqufyq();

      private var name_:Wejat;

      private var gs_:GameSprite;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close.dispatch();
         return;
      }

      private function gazyvabim(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.addEventListener(Wyta.zat,this.quhi);
         this.gs_.gsc_.createGuild(this.name_.text());
         disable();
         return;
      }

      private function quhi(param1:Wyta) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.removeEventListener(Wyta.zat,this.quhi);
         if(param1.success_)
         {
            this.close.dispatch();
         }
         else
         {
            this.name_.hivuma(param1.sogedowa,param1.jyjakuqub);
            pinyry();
         }
         return;
      }
   }

}