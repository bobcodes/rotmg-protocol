package coh
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import tulunyno.Dovihyz;
   import zoroc.Vugusyqik;
   import flash.events.MouseEvent;
   import qucuqesif.Rasoqymi;
   import qucuqesif.Qemo;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import ruwysepyd.Junefolef;
   import povopito.Ryduwi;
   import gyzesuqu.Tybabukyr;


   public class Dote extends Sprite
   {
      public function Dote(param1:Vugusyqik, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.qocuseho=param1;
         this.nipa=param2;
         this.luvote=new Tybabukyr(this,MouseEvent.MOUSE_OVER).add(this.duby);
         this.textColor=param1.sejudejol()?11776947:6710886;
         this.ribipucow();
         this.zezideco();
         param1.tygyfizop.add(this.qyluqale);
         return;
      }

      public const cybat:Hugyqufyq = new Hugyqufyq(Ryduwi);

      public var botidi:Lufub;

      private var luvote:Dovihyz;

      private var kazymube:Lufub;

      private var qocuseho:Vugusyqik;

      private var nipa:int;

      private var textColor:int;

      private var tooltip:Wajifapa;

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qocuseho.tygyfizop.remove(this.qyluqale);
         return;
      }

      private function qyluqale(param1:Vugusyqik) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ribivepu();
         return;
      }

      private function duby(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tooltip=new Wajifapa(this.qocuseho);
         this.tooltip.saqazuqebu(this);
         this.cybat.dispatch(this.tooltip);
         return;
      }

      private function zezideco() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.beginFill(this.textColor);
         graphics.drawCircle(0,-5,1.5);
         return;
      }

      private function ribipucow() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.buzilaf();
         if(this.qocuseho.sejudejol())
         {
            this.byfulu();
         }
         return;
      }

      private function byfulu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.botidi=Rasoqymi.tefyko(this.textColor,13,true);
         addChild(this.botidi);
         this.vivi();
         this.ribivepu();
         return;
      }

      private function ribivepu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.botidi)
         {
            this.botidi.setStringBuilder(new Sire().setParams(this.punobikih(this.qocuseho),{level:this.qocuseho.level}));
         }
         return;
      }

      private function buzilaf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kazymube=Rasoqymi.tefyko(this.textColor,13,true);
         this.kazymube.setStringBuilder(new Sire().setParams(this.qocuseho.name));
         this.kazymube.x=3;
         addChild(this.kazymube);
         return;
      }

      private function punobikih(param1:Vugusyqik) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1.level<Qemo.jefiqeqi?I18nKeys.bumaw:I18nKeys.roras;
      }

      private function vivi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.botidi.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.botidi.x=this.nipa-this.botidi.width;
         return;
      }
   }

}