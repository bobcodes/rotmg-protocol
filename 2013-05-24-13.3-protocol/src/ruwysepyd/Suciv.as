package ruwysepyd
{
   import qov.Kalefu;
   import hotewa.Baqifa;
   import raqu.Calogu;
   import raqu.Wolugyty;
   import sasacen.Cisobysu;
   import jiha.Cemy;
   import wegyluke.Hez;
   import aaa.rotmg.config.GoogleAppConfig;
   import nitotohyk.Zyqyt;
   import kysy.Ducuqa;
   import fom.Kyh;
   import flash.system.Capabilities;
   import aaa.rotmg.ui.ServersScreenUI;
   import sebehesa.Komukuho;
   import nafa.Vahoz;
   import flash.events.Event;


   public class Suciv extends Kalefu
   {
      public function Suciv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:TitleView;

      public var muwi:Baqifa;

      public var zogytuso:Calogu;

      public var bykiry:Wolugyty;

      public var vugyjuq:Cisobysu;

      public var qid:Cemy;

      public var naval:Hez;

      public var setup:GoogleAppConfig;

      public var dom:Zyqyt;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hoqiju.add(this.bogyjow);
         this.view.initialize(this.tazewo());
         this.view.gohikop.add(this.tycywab);
         this.view.mucihunuk.add(this.fybe);
         this.view.keliqac.add(this.fahumofu);
         this.view.zajudol.add(this.zaweryr);
         this.view.myvovisy.add(this.wogaju);
         this.view.duhupibeg(this.setup.dyb());
         return;
      }

      private function bogyjow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      private function wogaju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.dispatch(new Ducuqa());
         return;
      }

      private function tazewo() : Kyh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kyh = new Kyh();
         _loc1_.pesigemut=Capabilities.playerType=="Desktop";
         _loc1_.kuzuqi=this.muwi.kuzuqi();
         _loc1_.piwo=this.setup.getBuildDisplayLabel();
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gohikop.remove(this.tycywab);
         this.view.mucihunuk.remove(this.fybe);
         this.view.keliqac.remove(this.fahumofu);
         this.view.zajudol.remove(this.zaweryr);
         this.view.hoqiju.remove(this.bogyjow);
         return;
      }

      private function tycywab() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vugyjuq.dispatch();
         return;
      }

      private function fybe() : void {
         this.zogytuso.dispatch(new ServersScreenUI());
         return;
      }

      private function fahumofu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qid.dispatch(false);
         return;
      }

      private function zaweryr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.dispatch(new Komukuho());
         return;
      }

      private function jih() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogytuso.dispatch(new Vahoz());
         return;
      }

      private function veqawesoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         dispatch(new Event("APP_CLOSE_EVENT"));
         return;
      }
   }

}