package gib
{
   import qov.Kalefu;
   import wegyluke.Cowymute;
   import raqu.Sikywybu;
   import sasacen.Mygotuwo;
   import com.company.assembleegameclient.game.Nukomesih;
   import pov.Qitymig;
   import cidehov.Hyzifiraj;
   import aaa.rotmg.config.UserConfig;


   public class Bojuji extends Kalefu
   {
      public function Bojuji() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Zymas;

      public var closeDialogs:Cowymute;

      public var trackEvent:Sikywybu;

      public var ryqo:Mygotuwo;

      private var qizys:Nukomesih;

      private var name:String;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qizys=this.view.qizys;
         this.view.choose.add(this.pakes);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.choose.remove(this.pakes);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function pakes(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.qizys.addEventListener(Qitymig.NAMERESULTEVENT,this.zepoce);
         this.qizys.gsc_.chooseName(param1);
         this.view.disable();
         return;
      }

      public function zepoce(param1:Qitymig) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qizys.removeEventListener(Qitymig.NAMERESULTEVENT,this.zepoce);
         var _loc2_:Boolean = param1.potonak.success_;
         if(_loc2_)
         {
            this.hobybote();
         }
         else
         {
            this.dypiref(param1.potonak.errorText_);
         }
         return;
      }

      private function hobybote() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.view.wuzivav)
         {
            this.matazoji();
         }
         this.qizys.model.setName(this.name);
         this.closeDialogs.dispatch();
         this.ryqo.dispatch(this.name);
         return;
      }

      private function matazoji() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="credits";
         _loc1_.hiris=this.qizys.model.getConverted()?"buyConverted":"buy";
         _loc1_.label="Name Change";
         _loc1_.value=UserConfig.joky;
         this.trackEvent.dispatch(_loc1_);
         return;
      }

      private function dypiref(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.hivuma(param1);
         this.view.pinyry();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}