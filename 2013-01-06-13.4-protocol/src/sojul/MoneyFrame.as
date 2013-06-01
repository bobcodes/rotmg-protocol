package sojul
{
[CLASS69]   import flash.display.Sprite;
   import haqakel.Kefyfa;
   import tinava.Dab;
   import com.company.assembleegameclient.util.offer.Offers;
   import helepebas.Wewizy;
   import nonyna.Frame;
   import nonyna.Lypezyfi;
   import nonyna.Kihubolaz;
   import com.company.assembleegameclient.ui.Cid;
   import flash.events.MouseEvent;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.util.Ruzizi;
   import flash.display.Shape;
   import com.company.assembleegameclient.util.offer.Offer;


   public class MoneyFrame extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function MoneyFrame() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.buyNow=new Dab(Offer,String);
         this.cancel=new Dab();
         return;
      }

      private static const TITLE:String = Kefyfa.tozavepo;

      private static const LEFT_BUTTON:String = "";

      private static const RIGHT_BUTTON:String = Kefyfa.lev;

      private static const byke:String = "/money";

      private static const qariruzu:String = Kefyfa.farim;

      private static const kipenug:String = Kefyfa.tucenevyt;

      private static const vup:String = Kefyfa.qeboba;

      private static const WIDTH:int = 550;

      public var buyNow:Dab;

      public var cancel:Dab;

      private var cok:Offers;

      private var config:Wewizy;

      private var mawed:Frame;

      private var pukeke:Lypezyfi;

      private var veki:Kihubolaz;

      private var juc:Cid;

      public function initialize(param1:Offers, param2:Wewizy) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.cok=param1;
         this.config=param2;
         this.mawed=new Frame(TITLE,LEFT_BUTTON,RIGHT_BUTTON,byke,WIDTH);
         this.socij();
         this.fepu();
         this.mawed.mibyruji.addEventListener(MouseEvent.CLICK,this.onCancel);
         addChild(this.mawed);
         return;
      }

      public function vogigu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gicu();
         this.mawed.nyposo(qariruzu);
         this.mawed.cuhal(this.pukeke);
         this.mawed.rucep(14);
         this.jopovut(8355711,536,2,10);
         this.mawed.rucep(6);
         return;
      }

      private function gicu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vector.<String> = this.boj();
         this.pukeke=new Lypezyfi(_loc1_);
         this.pukeke.setSelected(Parameters.data_.paymentMethod);
         return;
      }

      private function boj() : Vector.<String> {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Ruzizi = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each (_loc2_ in Ruzizi.cuzub)
         {
            _loc1_.push(_loc2_.label_);
         }
         return _loc1_;
      }

      private function jopovut(param1:int, param2:int, param3:int, param4:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Shape = new Shape();
         _loc5_.graphics.beginFill(param1);
         _loc5_.graphics.drawRect(param4,0,param2-param4*2,param3);
         _loc5_.graphics.endFill();
         this.mawed.nofapyfa(_loc5_,0);
         return;
      }

      private function socij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.veki=new Kihubolaz(this.cok,this.config);
         this.veki.sujahos(this.config.sujahos());
         this.mawed.nyposo(kipenug);
         this.mawed.nofapyfa(this.veki);
         return;
      }

      public function fepu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.juc=new Cid(16,vup);
         this.juc.addEventListener(MouseEvent.CLICK,this.jasozejul);
         this.juc.x=8;
         this.juc.y=this.mawed.h_-52;
         this.mawed.addChild(this.juc);
         return;
      }

      protected function jasozejul(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mawed.disable();
         var _loc2_:Offer = this.veki.vewiciko().offer;
         var _loc3_:String = this.pukeke?this.pukeke.docew():null;
         this.buyNow.dispatch(_loc2_,(_loc3_)||(""));
         return;
      }

      protected function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.focus=stage;
         this.cancel.dispatch();
         return;
      }
   }
[/CLASS]
}