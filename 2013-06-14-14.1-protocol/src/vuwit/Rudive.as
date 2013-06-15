package vuwit
{
   import vysob.Voni;
   import mukyrosu.Qanyduk;
   import haj.Ruvogomy;
   import haj.Res;
   import hivysif.Guzowoja;
   import haj.PetFuser;
   import haj.Hiquhifu;
   import haj.FusionStrength;
   import fanij.Mitat;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import fypeba.Wisywew;
   import fanij.Wymove;
   import fypeba.Rikuko;
   import wenono.Nuri;
   import fypeba.Zikorur;


   public class Rudive extends Betupa implements Voni
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rudive() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.bobiqit.peqe.addOnce(this.tobyny);
         return;
      }

      private static const fysenus:Qanyduk = new Qanyduk();

      public const bobiqit:Ruvogomy = Zikorur.junat(Vibemod.tid,Rikuko.zymezadoq-39);

      private const background:Res = Zikorur.rycivo();

      private const kovo:Guzowoja = Zikorur.kapybyhy(11776947,18,true);

      private const gefuso:Guzowoja = Zikorur.qewazupe();

      private const zegadanat:PetFuser = Zikorur.tyjebar();

      private const gopubotag:Hiquhifu = Zikorur.totaca(Rikuko.vyh);

      private const kuvewoci:FusionStrength = Zikorur.cese();

      public const closed:Qanyduk = new Qanyduk();

      public var toreg:Qanyduk;

      public var vejojyb:Qanyduk;

      public var juliref:Qanyduk;

      public function init(param1:Mitat) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kovo.setStringBuilder(new Kybidu().setParams(Vibemod.rosobi));
         this.toreg=this.zegadanat.toreg;
         this.vejojyb=this.bobiqit.suza;
         this.juliref=this.bobiqit.sufujewy;
         this.bobiqit.sotymojor(!param1.remytyto());
         this.bobiqit.setPrefix(param1.remytyto()?Vibemod.tid:Vibemod.mivudyn);
         if(param1.remytyto())
         {
            this.bobiqit.rys(Wisywew.nece(Wymove.gobipy(param1.baluq.laj())));
            this.bobiqit.sumubil(Wisywew.rynyqe(Wymove.gobipy(param1.baluq.laj())));
         }
         this.gopubotag.peqe.add(this.lyb);
         this.meruvi();
         this.jifajenuj();
         this.deloporo();
         return;
      }

      private function tobyny() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         fysenus.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bobiqit.kenage.remove(this.huwivu);
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.kovo);
         addChild(this.gefuso);
         addChild(this.bobiqit);
         addChild(this.zegadanat);
         addChild(this.kuvewoci);
         addChild(this.gopubotag);
         return;
      }

      private function deloporo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         kyri();
         this.jacavoby();
         return;
      }

      private function jacavoby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zegadanat.x=Math.round((Rikuko.vyh-this.zegadanat.width)*0.5);
         return;
      }

      private function meruvi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.kovo.textChanged);
         _loc1_.push(this.gefuso.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         this.bobiqit.kenage.add(this.huwivu);
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kovo.y=5;
         this.kovo.x=(Rikuko.vyh-this.kovo.width)*0.5;
         this.gefuso.x=(Rikuko.vyh-this.gefuso.width)*0.5;
         return;
      }

      private function huwivu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bobiqit.x=(Rikuko.vyh-this.bobiqit.width)/2;
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closed.dispatch();
         return;
      }

      public function dadezum() : Qanyduk {
         return fysenus;
      }
   }

}