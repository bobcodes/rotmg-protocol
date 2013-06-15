package wenono
{
   import vysob.Dialog;
   import zoqabel.DateField;
   import hivysif.Guzowoja;
   import mukyrosu.Qanyduk;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import aaa.RotmgParameters.RotmgParameters;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.events.Event;


   public class AgeVerificationDialog extends Dialog
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function AgeVerificationDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Vibemod.dusojup,"",Vibemod.sojis,Vibemod.fyrur,"/ageVerificationDialog");
         addEventListener(Dialog.LEFT_BUTTON,this.onCancel);
         addEventListener(Dialog.RIGHT_BUTTON,this.budadyjys);
         return;
      }

      private static const WIDTH:int = 300;

      private const kevoj:String = "AgeVerificationDialog.tooYoung";

      private const kivucava:String = "AgeVerificationDialog.invalidBirthDate";

      private var venuz:DateField;

      private var fasyc:Guzowoja;

      private const qyjanugol:uint = 13;

      public const riz:Qanyduk = new Qanyduk(Boolean);

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hagodepin();
         this.jifajenuj();
         return;
      }

      private function hagodepin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qucy();
         this.kazuzywu();
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         gujas.pushArgs(this.venuz.qukahew());
         box_.addChild(this.venuz);
         box_.addChild(this.fasyc);
         return;
      }

      override protected function initText(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         wybibe=new Guzowoja().setSize(14).setColor(11776947);
         wybibe.setTextWidth(WIDTH-40);
         wybibe.x=20;
         wybibe.setMultiLine(true).setWordWrap(true).setHTML(true);
         wybibe.setAutoSize(TextFieldAutoSize.LEFT);
         wybibe.mouseEnabled=true;
         wybibe.filters=[new DropShadowFilter(0,0,0,1,6,6,1)];
         this.kenadyb();
         return;
      }

      private function kenadyb() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+RotmgParameters.dyda+"\" target=\"_blank\">";
         var _loc2_:* = "<font color=\"#7777EE\"><a href=\""+RotmgParameters.dahyhuw+"\" target=\"_blank\">";
         var _loc3_:* = "</a></font>";
         wybibe.setStringBuilder(new Kybidu().setParams("AgeVerificationDialog.text",
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
         this.venuz.y=wybibe.getBounds(box_).bottom+8;
         this.venuz.x=20;
         this.fasyc.y=this.venuz.y+this.venuz.height+8;
         this.fasyc.x=20;
         return;
      }

      private function qucy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.venuz=new DateField();
         this.venuz.setTitle(Vibemod.zibam);
         return;
      }

      private function kazuzywu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fasyc=new Guzowoja().setSize(12).setColor(16549442);
         this.fasyc.setMultiLine(true);
         this.fasyc.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.riz.dispatch(false);
         return;
      }

      private function budadyjys(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = false;
         var _loc2_:uint = this.boq();
         var _loc4_:* = "";
         if(!this.venuz.dacuceja())
         {
            _loc4_=this.kivucava;
            _loc3_=true;
         }
         else
         {
            if(_loc2_<this.qyjanugol&&!_loc3_)
            {
               _loc4_=this.kevoj;
               _loc3_=true;
            }
            else
            {
               _loc4_="";
               _loc3_=false;
               this.riz.dispatch(true);
            }
         }
         this.fasyc.setStringBuilder(new Kybidu().setParams(_loc4_));
         this.venuz.nis(_loc3_);
         moroz();
         return;
      }

      private function boq() : uint {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Date = new Date(this.felyt());
         var _loc2_:Date = new Date();
         var _loc3_:uint = Number(_loc2_.fullYear)-Number(_loc1_.fullYear);
         if(_loc1_.month>_loc2_.month||_loc1_.month==_loc2_.month&&_loc1_.date>_loc2_.date)
         {
            _loc3_--;
         }
         return _loc3_;
      }

      private function felyt() : Number {
         return Date.parse(this.venuz.bekezu());
      }
   }

}