package kat
{
   import flash.display.Sprite;
   import aaa.rotmg.i18n.I18nKeys;
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.util.offer.Offers;
   import nasokuqa.Myky;
   import gib.Frame;
   import gib.Zamiparal;
   import gib.Cipyta;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.events.MouseEvent;
   import __AS3__.vec.Vector;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.util.Repipi;
   import flash.display.Shape;
   import com.company.assembleegameclient.util.offer.Offer;


   public class MoneyFrame extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function MoneyFrame() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.buyNow=new Hugyqufyq(Offer,String);
         this.cancel=new Hugyqufyq();
         return;
      }

      private static const TITLE:String = I18nKeys.wubeluci;

      private static const LEFT_BUTTON:String = "";

      private static const RIGHT_BUTTON:String = I18nKeys.rygigyf;

      private static const vuhotigoc:String = "/money";

      private static const metafule:String = I18nKeys.vusury;

      private static const gufijazi:String = I18nKeys.bynivycyt;

      private static const mebuhycu:String = I18nKeys.hakilam;

      private static const WIDTH:int = 550;

      public var buyNow:Hugyqufyq;

      public var cancel:Hugyqufyq;

      private var mynuroqyl:Offers;

      private var config:Myky;

      private var qypicuc:Frame;

      private var tekotog:Zamiparal;

      private var rulujavyt:Cipyta;

      private var rasemara:Dogyqijec;

      public function initialize(param1:Offers, param2:Myky) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.mynuroqyl=param1;
         this.config=param2;
         this.qypicuc=new Frame(TITLE,LEFT_BUTTON,RIGHT_BUTTON,vuhotigoc,WIDTH);
         this.kazicajub();
         this.gulu();
         this.qypicuc.dal.addEventListener(MouseEvent.CLICK,this.onCancel);
         addChild(this.qypicuc);
         return;
      }

      public function nuhu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nyzamyho();
         this.qypicuc.zew(metafule);
         this.qypicuc.depemeno(this.tekotog);
         this.qypicuc.pujiwe(14);
         this.mop(8355711,536,2,10);
         this.qypicuc.pujiwe(6);
         return;
      }

      private function nyzamyho() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vector.<String> = this.cap();
         this.tekotog=new Zamiparal(_loc1_);
         this.tekotog.setSelected(UserConfig.data_.paymentMethod);
         return;
      }

      private function cap() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Repipi = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each (_loc2_ in Repipi.myz)
         {
            _loc1_.push(_loc2_.label_);
         }
         return _loc1_;
      }

      private function mop(param1:int, param2:int, param3:int, param4:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Shape = new Shape();
         _loc5_.graphics.beginFill(param1);
         _loc5_.graphics.drawRect(param4,0,param2-param4*2,param3);
         _loc5_.graphics.endFill();
         this.qypicuc.pik(_loc5_,0);
         return;
      }

      private function kazicajub() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rulujavyt=new Cipyta(this.mynuroqyl,this.config);
         this.rulujavyt.nutawic(this.config.nutawic());
         this.qypicuc.zew(gufijazi);
         this.qypicuc.pik(this.rulujavyt);
         return;
      }

      public function gulu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rasemara=new Dogyqijec(16,mebuhycu);
         this.rasemara.addEventListener(MouseEvent.CLICK,this.jinil);
         this.rasemara.x=8;
         this.rasemara.y=this.qypicuc.h_-52;
         this.qypicuc.addChild(this.rasemara);
         return;
      }

      protected function jinil(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.qypicuc.disable();
         var _loc2_:Offer = this.rulujavyt.rakuqy().offer;
         var _loc3_:String = this.tekotog?this.tekotog.zega():null;
         this.buyNow.dispatch(_loc2_,(_loc3_)||(""));
         return;
      }

      protected function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.focus=stage;
         this.cancel.dispatch();
         return;
      }
   }

}