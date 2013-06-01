package naj
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import gib.Frame;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import nec.Nara;
   import flash.events.MouseEvent;


   public class KabamAccountDetailDialog extends Sprite
   {
      public function KabamAccountDetailDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.gow=new Hugyqufyq();
         return;
      }

      public var gow:Hugyqufyq;

      private var gep:Lufub;

      private var vuviry:Lufub;

      public function tepefufe(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Frame = new Frame(I18nKeys.jyme,"",I18nKeys.witepeve,"/currentKabamLogin");
         addChild(_loc2_);
         this.gep=new Lufub().setSize(18).setColor(11776947);
         this.gep.setBold(true);
         this.gep.setStringBuilder(new Sire().setParams(I18nKeys.povu));
         this.gep.filters=[new DropShadowFilter(0,0,0)];
         this.gep.y=_loc2_.h_-60;
         this.gep.x=17;
         _loc2_.addChild(this.gep);
         this.vuviry=new Lufub().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
         this.vuviry.setStringBuilder(new Nara(param1));
         this.vuviry.y=_loc2_.h_-30;
         this.vuviry.x=17;
         _loc2_.addChild(this.vuviry);
         _loc2_.h_=_loc2_.h_+88;
         _loc2_.w_=_loc2_.w_+60;
         _loc2_.dal.addEventListener(MouseEvent.CLICK,this.wefoper);
         return;
      }

      private function wefoper(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gow.dispatch();
         return;
      }
   }

}