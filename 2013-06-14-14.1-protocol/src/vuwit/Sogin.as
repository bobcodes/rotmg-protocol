package vuwit
{
   import flash.display.Sprite;
   import haj.Res;
   import hivysif.Guzowoja;
   import haj.Tafulafij;
   import mukyrosu.Qanyduk;
   import haj.Hiquhifu;
   import jediwip.Kybidu;
   import wenono.Nuri;
   import fypeba.Rikuko;
   import fypeba.Zikorur;
   import fanij.Cun;


   public class Sogin extends Sprite
   {
      public function Sogin() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kapivod=new Qanyduk(Cun);
         super();
         return;
      }

      private const background:Res = Zikorur.tajojody(Rikuko.vyh,Rikuko.lamivy);

      private const kovo:Guzowoja = Zikorur.guta(16777215,18,true);

      private const bobiqit:Tafulafij = Zikorur.zyfego();

      public var kapivod:Qanyduk;

      private const gopubotag:Hiquhifu = Zikorur.totaca(Rikuko.vyh);

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.meruvi();
         this.jifajenuj();
         this.kovo.setStringBuilder(new Kybidu().setParams("Available Pets"));
         this.bobiqit.buttonOne.kenadyb("SELECT PET");
         this.kyri();
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.kovo);
         addChild(this.bobiqit);
         addChild(this.gopubotag);
         return;
      }

      private function kyri() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.x=(stage.width-this.width)/2;
         this.y=(stage.height-this.height)/2;
         return;
      }

      private function meruvi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.kovo.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kovo.x=(Rikuko.vyh-this.kovo.width)/2;
         return;
      }
   }

}