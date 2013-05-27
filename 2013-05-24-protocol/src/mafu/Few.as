package mafu
{
   import flash.display.Sprite;
   import kat.Jyhyk;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import sakugyt.Tiqigawul;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObject;
   import nec.Nara;


   public class Few extends Sprite implements Jyhyk
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Few() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.nekesakob();
         this.bige();
         return;
      }

      private static const lacasoka:int = 18;

      private var zyqilo:Hugyqufyq;

      public function get login() : Hugyqufyq {
         return this.zyqilo;
      }

      private var nimawip:Hugyqufyq;

      public function get register() : Hugyqufyq {
         return this.nimawip;
      }

      private var userName:String = "";

      private var bugi:Boolean;

      private var qubifowin:Lufub;

      private var daqiry:Tiqigawul;

      private var jowal:Tiqigawul;

      private function nekesakob() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.higyly();
         this.hujatav();
         this.huhavi();
         return;
      }

      private function bige() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zyqilo=new Zojygese(this.jowal,MouseEvent.CLICK);
         this.nimawip=new Zojygese(this.daqiry,MouseEvent.CLICK);
         return;
      }

      private function higyly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qubifowin=this.sifequc();
         this.qubifowin.setStringBuilder(new Sire().setParams(I18nKeys.hyzup));
         return;
      }

      private function sifequc() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub();
         _loc1_.setAutoSize(TextFieldAutoSize.RIGHT);
         _loc1_.setSize(lacasoka).setColor(11776947);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         return _loc1_;
      }

      private function hujatav() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jowal=new Tiqigawul(I18nKeys.qoc,lacasoka,false);
         this.jowal.setAutoSize(TextFieldAutoSize.RIGHT);
         return;
      }

      private function huhavi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.daqiry=new Tiqigawul(I18nKeys.ninyfoku,lacasoka,false);
         this.daqiry.setAutoSize(TextFieldAutoSize.RIGHT);
         return;
      }

      private function cawyduny() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub();
         _loc1_.setColor(11776947).setAutoSize(TextFieldAutoSize.RIGHT).setSize(lacasoka);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         _loc1_.setStringBuilder(new Nara(" - "));
         return _loc1_;
      }

      public function tepefufe(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userName=param1;
         this.bugi=param2;
         this.nunalibu();
         return;
      }

      private function nunalibu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lymib();
         if(this.bugi)
         {
            this.zakybaso();
         }
         else
         {
            this.venuge();
         }
         return;
      }

      private function lymib() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(numChildren)
         {
            removeChildAt(0);
         }
         return;
      }

      private function zakybaso() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qubifowin.setStringBuilder(new Sire().setParams(I18nKeys.farihow,{userName:this.userName}));
         this.jowal.hifyvapy(I18nKeys.mitylo);
         this.domodu(this.qubifowin,this.jowal);
         return;
      }

      private function venuge() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qubifowin.setStringBuilder(new Sire().setParams(I18nKeys.hyzup,{userName:this.userName}));
         this.jowal.hifyvapy(I18nKeys.qoc);
         this.domodu(this.qubifowin,this.cawyduny(),this.daqiry,this.cawyduny(),this.jowal);
         return;
      }

      private function domodu(... rest) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:DisplayObject = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         for each (_loc2_ in rest)
         {
            addChild(_loc2_);
         }
         _loc3_=0;
         _loc4_=rest.length;
         while(_loc4_--)
         {
            _loc5_=rest[_loc4_];
            _loc5_.x=_loc3_;
            _loc3_=_loc3_-_loc5_.width;
         }
         return;
      }
   }

}