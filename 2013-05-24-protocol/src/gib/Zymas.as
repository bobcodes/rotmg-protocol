package gib
{
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.game.Nukomesih;
   import flash.events.MouseEvent;
   import aaa.rotmg.i18n.I18nKeys;


   public class Zymas extends Frame
   {
      public function Zymas(param1:Nukomesih, param2:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(I18nKeys.saham,I18nKeys.toryryqos,I18nKeys.jono,"/chooseName");
         this.qizys=param1;
         this.wuzivav=param2;
         this.kyga=new Wejat(I18nKeys.lipyqyb,false);
         this.kyga.inputText_.restrict="A-Za-z";
         var _loc3_:* = 10;
         this.kyga.inputText_.maxChars=_loc3_;
         jupywota(this.kyga);
         syzicodag(I18nKeys.lyquna,{maxChars:_loc3_});
         syzicodag(I18nKeys.pif);
         syzicodag(I18nKeys.jiziqyt);
         lodab.addEventListener(MouseEvent.CLICK,this.onCancel);
         dal.addEventListener(MouseEvent.CLICK,this.pakes);
         return;
      }

      public const cancel:Hugyqufyq = new Hugyqufyq();

      public const choose:Hugyqufyq = new Hugyqufyq(String);

      public var qizys:Nukomesih;

      public var wuzivav:Boolean;

      private var kyga:Wejat;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function pakes(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.choose.dispatch(this.kyga.text());
         disable();
         return;
      }

      public function hivuma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyga.hivuma(param1);
         return;
      }
   }

}