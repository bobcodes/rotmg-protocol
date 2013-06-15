package sefylew
{
   import flash.display.Sprite;
   import komi.Vibemod;
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.util.offer.Offers;
   import kylelimib.Cygusupu;
   import zekeqa.Frame;
   import zekeqa.Siz;
   import zekeqa.Zuv;
   import com.company.assembleegameclient.ui.Tivinu;
   import flash.events.MouseEvent;
   import __AS3__.vec.Vector;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.util.Tiguziro;
   import flash.display.Shape;
   import com.company.assembleegameclient.util.offer.Offer;


   public class MoneyFrame extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function MoneyFrame() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.buyNow=new Qanyduk(Offer,String);
         this.cancel=new Qanyduk();
         return;
      }

      private static const TITLE:String = Vibemod.ditawit;

      private static const LEFT_BUTTON:String = "";

      private static const RIGHT_BUTTON:String = Vibemod.geremawoc;

      private static const dipah:String = "/money";

      private static const hyvy:String = Vibemod.vuhumocem;

      private static const bucahiles:String = Vibemod.ActionMapperAbstract;

      private static const nicizi:String = Vibemod.mecaw;

      private static const WIDTH:int = 550;

      public var buyNow:Qanyduk;

      public var cancel:Qanyduk;

      private var puputazes:Offers;

      private var config:Cygusupu;

      private var cukabej:Frame;

      private var papu:Siz;

      private var wawuzis:Zuv;

      private var lugot:Tivinu;

      public function initialize(param1:Offers, param2:Cygusupu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.puputazes=param1;
         this.config=param2;
         this.cukabej=new Frame(TITLE,LEFT_BUTTON,RIGHT_BUTTON,dipah,WIDTH);
         this.syqe();
         this.sih();
         this.cukabej.nuwido.addEventListener(MouseEvent.CLICK,this.onCancel);
         addChild(this.cukabej);
         return;
      }

      public function quqejiwac() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lotamyva();
         this.cukabej.nopuz(hyvy);
         this.cukabej.kolakok(this.papu);
         this.cukabej.kufobyb(14);
         this.riwosybo(8355711,536,2,10);
         this.cukabej.kufobyb(6);
         return;
      }

      private function lotamyva() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<String> = this.jem();
         this.papu=new Siz(_loc1_);
         this.papu.setSelected(RotmgParameters.data_.paymentMethod);
         return;
      }

      private function jem() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Tiguziro = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each (_loc2_ in Tiguziro.guhydadoq)
         {
            _loc1_.push(_loc2_.label_);
         }
         return _loc1_;
      }

      private function riwosybo(param1:int, param2:int, param3:int, param4:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Shape = new Shape();
         _loc5_.graphics.beginFill(param1);
         _loc5_.graphics.drawRect(param4,0,param2-param4*2,param3);
         _loc5_.graphics.endFill();
         this.cukabej.leve(_loc5_,0);
         return;
      }

      private function syqe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wawuzis=new Zuv(this.puputazes,this.config);
         this.wawuzis.jaqi(this.config.jaqi());
         this.cukabej.nopuz(bucahiles);
         this.cukabej.leve(this.wawuzis);
         return;
      }

      public function sih() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lugot=new Tivinu(16,nicizi);
         this.lugot.addEventListener(MouseEvent.CLICK,this.vifizo);
         this.lugot.x=8;
         this.lugot.y=this.cukabej.h_-52;
         this.cukabej.addChild(this.lugot);
         return;
      }

      protected function vifizo(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.cukabej.disable();
         var _loc2_:Offer = this.wawuzis.cepite().offer;
         var _loc3_:String = this.papu?this.papu.gype():null;
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