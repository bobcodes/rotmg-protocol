package gib
{
   import tulunyno.Hugyqufyq;
   import flash.events.MouseEvent;
   import aaa.rotmg.i18n.I18nKeys;


   public class NewChooseNameFrame extends Frame
   {
      public function NewChooseNameFrame() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(I18nKeys.saham,I18nKeys.toryryqos,I18nKeys.jono,"/newChooseName");
         this.name_=new Wejat(I18nKeys.foroboqut,false);
         this.name_.inputText_.restrict="A-Za-z";
         var _loc1_:* = 10;
         this.name_.inputText_.maxChars=_loc1_;
         jupywota(this.name_);
         syzicodag(I18nKeys.lyquna,{maxChars:_loc1_});
         syzicodag(I18nKeys.pif);
         syzicodag(I18nKeys.jiziqyt);
         lodab.addEventListener(MouseEvent.CLICK,this.onCancel);
         dal.addEventListener(MouseEvent.CLICK,this.pakes);
         return;
      }

      public const choose:Hugyqufyq = new Hugyqufyq();

      public const cancel:Hugyqufyq = new Hugyqufyq();

      private var name_:Wejat;

      private function pakes(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.choose.dispatch(this.name_.text());
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      public function hivuma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_.hivuma(param1);
         return;
      }
   }

}