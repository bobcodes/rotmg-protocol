package ruwysepyd
{
   import nas.Dialog;
   import johazoq.DateField;
   import movimet.Lufub;
   import tulunyno.Hugyqufyq;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import aaa.rotmg.config.UserConfig;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class AgeVerificationDialog extends Dialog
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function AgeVerificationDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(I18nKeys.nuniw,"",I18nKeys.sacykan,I18nKeys.mebopumil,"/ageVerificationDialog");
         addEventListener(Dialog.LEFT_BUTTON,this.onCancel);
         addEventListener(Dialog.RIGHT_BUTTON,this.rifyco);
         return;
      }

      private static const WIDTH:int = 300;

      private const hap:String = "AgeVerificationDialog.tooYoung";

      private const qite:String = "AgeVerificationDialog.invalidBirthDate";

      private var tejo:DateField;

      private var paduwahiv:Lufub;

      private const dyjig:uint = 13;

      public const byh:Hugyqufyq = new Hugyqufyq(Boolean);

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.baheko();
         this.qohinep();
         return;
      }

      private function baheko() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kitizir();
         this.rukap();
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         nujapo.pushArgs(this.tejo.ratijuje());
         box_.addChild(this.tejo);
         box_.addChild(this.paduwahiv);
         return;
      }

      override protected function initText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         qicoqymuj=new Lufub().setSize(14).setColor(11776947);
         qicoqymuj.setTextWidth(WIDTH-40);
         qicoqymuj.x=20;
         qicoqymuj.setMultiLine(true).setWordWrap(true).setHTML(true);
         qicoqymuj.setAutoSize(TextFieldAutoSize.LEFT);
         qicoqymuj.mouseEnabled=true;
         qicoqymuj.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         this.sonydiw();
         return;
      }

      private function sonydiw() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+UserConfig.dav+"\" target=\"_blank\">";
         var _loc2_:* = "<font color=\"#7777EE\"><a href=\""+UserConfig.behibimik+"\" target=\"_blank\">";
         var _loc3_:* = "</a></font>";
         qicoqymuj.setStringBuilder(new Sire().setParams("AgeVerificationDialog.text",
            {
               tou:_loc1_,
               _tou:_loc3_,
               policy:_loc2_,
               _policy:_loc3_
            }
         ));
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tejo.y=qicoqymuj.getBounds(box_).bottom+8;
         this.tejo.x=20;
         this.paduwahiv.y=this.tejo.y+this.tejo.height+8;
         this.paduwahiv.x=20;
         return;
      }

      private function kitizir() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tejo=new DateField();
         this.tejo.setTitle(I18nKeys.piwy);
         return;
      }

      private function rukap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.paduwahiv=new Lufub().setSize(12).setColor(16549442);
         this.paduwahiv.setMultiLine(true);
         this.paduwahiv.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.byh.dispatch(false);
         return;
      }

      private function rifyco(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = false;
         var _loc2_:uint = this.felyfod();
         var _loc4_:* = "";
         if(!this.tejo.tamufaf())
         {
            _loc4_=this.qite;
            _loc3_=true;
         }
         else
         {
            if(_loc2_<this.dyjig&&!_loc3_)
            {
               _loc4_=this.hap;
               _loc3_=true;
            }
            else
            {
               _loc4_="";
               _loc3_=false;
               this.byh.dispatch(true);
            }
         }
         this.paduwahiv.setStringBuilder(new Sire().setParams(_loc4_));
         this.tejo.pimaq(_loc3_);
         podyvy();
         return;
      }

      private function felyfod() : uint {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Date = new Date(this.mypumo());
         var _loc2_:Date = new Date();
         var _loc3_:uint = Number(_loc2_.fullYear)-Number(_loc1_.fullYear);
         if(_loc1_.month>_loc2_.month||_loc1_.month==_loc2_.month&&_loc1_.date>_loc2_.date)
         {
            _loc3_--;
         }
         return _loc3_;
      }

      private function mypumo() : Number {
         return Date.parse(this.tejo.gurupin());
      }
   }

}