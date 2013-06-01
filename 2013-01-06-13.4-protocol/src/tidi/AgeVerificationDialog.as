package tidi
{
[CLASS451]   import cejyva.Dialog;
   import depyw.DateField;
   import pudev.Capitu;
   import tinava.Dab;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.parameters.Parameters;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class AgeVerificationDialog extends Dialog
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function AgeVerificationDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(Kefyfa.kawequzo,"",Kefyfa.qate,Kefyfa.fibufo,"/ageVerificationDialog");
         addEventListener(Dialog.LEFT_BUTTON,this.onCancel);
         addEventListener(Dialog.RIGHT_BUTTON,this.byzijyq);
         return;
      }

      private static const WIDTH:int = 300;

      private const vegef:String = "AgeVerificationDialog.tooYoung";

      private const gocezas:String = "AgeVerificationDialog.invalidBirthDate";

      private var kehepum:DateField;

      private var gajokem:Capitu;

      private const qawe:uint = 13;

      public const wulovy:Dab = new Dab(Boolean);

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyvice();
         this.mipuguc();
         return;
      }

      private function fyvice() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ripyqejif();
         this.sozavo();
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         cebyriby.pushArgs(this.kehepum.nifohetac());
         box_.addChild(this.kehepum);
         box_.addChild(this.gajokem);
         return;
      }

      override protected function initText(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         wan=new Capitu().setSize(14).setColor(11776947);
         wan.setTextWidth(WIDTH-40);
         wan.x=20;
         wan.setMultiLine(true).setWordWrap(true).setHTML(true);
         wan.setAutoSize(TextFieldAutoSize.LEFT);
         wan.mouseEnabled=true;
         wan.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         this.rike();
         return;
      }

      private function rike() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.wuz+"\" target=\"_blank\">";
         var _loc2_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.gegu+"\" target=\"_blank\">";
         var _loc3_:* = "</a></font>";
         wan.setStringBuilder(new Zufi().setParams("AgeVerificationDialog.text",
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kehepum.y=wan.getBounds(box_).bottom+8;
         this.kehepum.x=20;
         this.gajokem.y=this.kehepum.y+this.kehepum.height+8;
         this.gajokem.x=20;
         return;
      }

      private function ripyqejif() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kehepum=new DateField();
         this.kehepum.setTitle(Kefyfa.keb);
         return;
      }

      private function sozavo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gajokem=new Capitu().setSize(12).setColor(16549442);
         this.gajokem.setMultiLine(true);
         this.gajokem.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wulovy.dispatch(false);
         return;
      }

      private function byzijyq(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = false;
         var _loc2_:uint = this.masyk();
         var _loc4_:* = "";
         if(!this.kehepum.losomuwi())
         {
            _loc4_=this.gocezas;
            _loc3_=true;
         }
         else
         {
            if(_loc2_<this.qawe&&!_loc3_)
            {
               _loc4_=this.vegef;
               _loc3_=true;
            }
            else
            {
               _loc4_="";
               _loc3_=false;
               this.wulovy.dispatch(true);
            }
         }
         this.gajokem.setStringBuilder(new Zufi().setParams(_loc4_));
         this.kehepum.mibaqe(_loc3_);
         zesypapob();
         return;
      }

      private function masyk() : uint {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Date = new Date(this.folim());
         var _loc2_:Date = new Date();
         var _loc3_:uint = Number(_loc2_.fullYear)-Number(_loc1_.fullYear);
         if(_loc1_.month>_loc2_.month||_loc1_.month==_loc2_.month&&_loc1_.date>_loc2_.date)
         {
            _loc3_--;
         }
         return _loc3_;
      }

      private function folim() : Number {
         return Date.parse(this.kehepum.gawoju());
      }
   }
[/CLASS]
}