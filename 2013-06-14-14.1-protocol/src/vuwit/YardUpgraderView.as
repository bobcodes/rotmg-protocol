package vuwit
{
   import flash.display.Sprite;
   import haj.Res;
   import hivysif.Guzowoja;
   import haj.Ruvogomy;
   import haj.Hiquhifu;
   import flash.display.DisplayObject;
   import mukyrosu.Qanyduk;
   import fanij.Cukot;
   import jediwip.Kybidu;
   import fypeba.Rikuko;
   import flash.text.TextFormatAlign;
   import wenono.Nuri;
   import fypeba.Zikorur;


   public class YardUpgraderView extends Sprite
   {
      public function YardUpgraderView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jejacycyw=Tumyvup;
         super();
         return;
      }

      private var jejacycyw:Class;

      private const background:Res = Zikorur.wepe(Rikuko.vyh,392);

      private const kovo:Guzowoja = Zikorur.guta(16777215,18,true);

      private const notejecyk:Guzowoja = Zikorur.guta(11776947,13,false);

      private const wucofu:Guzowoja = Zikorur.guta(16777103,16,true);

      private const bobiqit:Ruvogomy = Zikorur.junat("YardUpgraderView.upgrade",357);

      private const gopubotag:Hiquhifu = Zikorur.totaca(Rikuko.vyh);

      private const beca:DisplayObject = new this.jejacycyw();

      private const tepuwuvuv:Wuva = new Wuva();

      public const closed:Qanyduk = new Qanyduk();

      public var juliref:Qanyduk;

      public var vejojyb:Qanyduk;

      private var tutobasu:Cukot;

      public function init(param1:Cukot) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tutobasu=param1;
         this.gopubotag.peqe.add(this.nydegazeq);
         this.kab();
         this.zyje();
         this.meruvi();
         this.jifajenuj();
         this.deloporo();
         return;
      }

      private function kab() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.juliref=this.bobiqit.sufujewy;
         this.vejojyb=this.bobiqit.suza;
         this.bobiqit.sumubil(this.tutobasu.secahewyf);
         this.bobiqit.rys(this.tutobasu.vutywanuj);
         return;
      }

      private function zyje() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kovo.setStringBuilder(new Kybidu().setParams("YardUpgraderView.title"));
         this.wucofu.setStringBuilder(new Kybidu().setParams(this.pajepiwu(this.tutobasu.sogi)));
         this.notejecyk.setStringBuilder(new Kybidu().setParams("YardUpgraderView.info"));
         this.notejecyk.setTextWidth(Rikuko.vyh-40).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER);
         this.tepuwuvuv.pepase("YardUpgraderView.currentMax",this.pajepiwu(this.tutobasu.fogazatyp));
         return;
      }

      private function pajepiwu(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "{"+param1+"}";
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closed.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bobiqit.kenage.remove(this.huwivu);
         return;
      }

      public function qujep(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bobiqit.rys(param1);
         return;
      }

      public function copehiji(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bobiqit.sumubil(param1);
         return;
      }

      private function rizolafu(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gopubotag.disabled=param1;
         this.bobiqit.sotymojor(param1);
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.beca.y=31;
         addChild(this.background);
         addChild(this.kovo);
         addChild(this.wucofu);
         addChild(this.notejecyk);
         addChild(this.bobiqit);
         addChild(this.gopubotag);
         addChild(this.beca);
         addChild(this.tepuwuvuv);
         return;
      }

      private function deloporo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kyri();
         this.beca.y=30;
         this.tepuwuvuv.x=11;
         this.tepuwuvuv.y=300;
         return;
      }

      private function kyri() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(stage.stageWidth-this.width)*0.5;
         this.y=(stage.stageHeight-this.height)*0.5;
         return;
      }

      private function meruvi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.kovo.textChanged);
         _loc1_.push(this.notejecyk.textChanged);
         _loc1_.push(this.wucofu.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         this.bobiqit.kenage.add(this.huwivu);
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kovo.x=(Rikuko.vyh-this.kovo.width)*0.5;
         this.notejecyk.x=(Rikuko.vyh-this.notejecyk.width)*0.5;
         this.wucofu.x=(Rikuko.vyh-this.wucofu.width)*0.5;
         this.kovo.y=20;
         this.notejecyk.y=229;
         this.wucofu.y=269;
         return;
      }

      private function huwivu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bobiqit.x=(Rikuko.vyh-this.bobiqit.width)/2;
         return;
      }
   }

}