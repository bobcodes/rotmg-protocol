package vuwit
{
   import haj.Res;
   import hivysif.Guzowoja;
   import haj.Ruvogomy;
   import haj.PetFeeder;
   import haj.Hiquhifu;
   import __AS3__.vec.Vector;
   import haj.PetAbilityMeter;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import mukyrosu.Qanyduk;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.events.Event;
   import fanij.Cun;
   import fanij.Wymove;
   import fypeba.Wisywew;
   import fanij.Kyruha;
   import fypeba.Rikuko;
   import wenono.Nuri;
   import fypeba.Zikorur;


   public class Domuh extends Betupa
   {
      public function Domuh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const background:Res = Zikorur.tajojody(Rikuko.vyh,Rikuko.lamivy);

      private const kovo:Guzowoja = Zikorur.kapybyhy(11776947,18,true);

      private const bobiqit:Ruvogomy = Zikorur.junat(Vibemod.hut,Rikuko.lamivy-35);

      private const jola:PetFeeder = Zikorur.budehez();

      private const gopubotag:Hiquhifu = Zikorur.totaca(Rikuko.vyh);

      private const pumojuw:Vector.<PetAbilityMeter> = Zikorur.napidyg();

      private const batoko:Vector.<Boolean> = Vector.<Boolean>([false,false,false]);

      private const muq:Gymajyzu = new Gymajyzu(Rikuko.vyh-25,0);

      public const toreg:Qanyduk = new Qanyduk();

      public const closed:Qanyduk = new Qanyduk();

      public var juliref:Qanyduk;

      public var vejojyb:Qanyduk;

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kovo.setStringBuilder(new Kybidu().setParams(Vibemod.nureruwo));
         this.jola.toreg.addOnce(this.bewoj);
         this.juliref=this.bobiqit.sufujewy;
         this.vejojyb=this.bobiqit.suza;
         this.gopubotag.peqe.add(this.nydegazeq);
         this.jola.rybaneha.add(this.zaqado);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.meruvi();
         this.jifajenuj();
         this.deloporo();
         return;
      }

      public function qavizi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jola.hirajy();
         this.jola.cacefiw();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jola.rybaneha.remove(this.zaqado);
         this.gopubotag.peqe.remove(this.nydegazeq);
         return;
      }

      private function zaqado(param1:Boolean, param2:Cun) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Wymove = null;
         this.bobiqit.sotymojor(!param1);
         if(param2)
         {
            if(!param2.vejam())
            {
               this.bobiqit.setPrefix(Vibemod.hut);
               _loc3_=Wymove.gobipy(param2.laj());
               this.bobiqit.rys(Wisywew.mywoc(_loc3_));
               this.bobiqit.sumubil(Wisywew.ravymufy(_loc3_));
            }
            else
            {
               this.bobiqit.qep();
               this.bobiqit.setPrefix(Vibemod.virenilow);
            }
         }
         else
         {
            this.bobiqit.setPrefix(Vibemod.mivudyn);
         }
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closed.dispatch();
         return;
      }

      private function bewoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.toreg.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:PetAbilityMeter = null;
         for each (_loc1_ in this.pumojuw)
         {
            _loc1_.wanajyk.remove(this.rizolafu);
         }
         this.bobiqit.kenage.remove(this.huwivu);
         return;
      }

      public function hawisa(param1:Array, param2:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc4_:Kyruha = null;
         var _loc5_:PetAbilityMeter = null;
         var _loc6_:PetAbilityMeter = null;
         var _loc3_:* = 0;
         if(param1==null)
         {
            for each (_loc5_ in this.pumojuw)
            {
               _loc5_.visible=false;
            }
         }
         for each (_loc4_ in param1)
         {
            if(_loc3_<this.pumojuw.length)
            {
               _loc6_=this.pumojuw[_loc3_];
               _loc6_.index=_loc3_;
               _loc6_.max=param2;
               _loc6_.visible=true;
               _loc6_.laroguv(_loc4_);
               _loc6_.wanajyk.add(this.rizolafu);
               _loc3_++;
            }
         }
         return;
      }

      private function rizolafu(param1:PetAbilityMeter, param2:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.batoko[param1.index]=param2;
         var _loc3_:Boolean = this.katumude();
         this.bobiqit.sotymojor(_loc3_);
         this.jola.jaw(_loc3_);
         return;
      }

      private function katumude() : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = false;
         var _loc1_:* = false;
         for each (_loc2_ in this.batoko)
         {
            if(_loc2_)
            {
               _loc1_=true;
               break;
            }
         }
         return _loc1_;
      }

      private function jifajenuj() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:PetAbilityMeter = null;
         addChild(this.background);
         addChild(this.kovo);
         addChild(this.bobiqit);
         addChild(this.jola);
         addChild(this.gopubotag);
         addChild(this.muq);
         for each (_loc1_ in this.pumojuw)
         {
            _loc1_.visible=false;
            addChild(_loc1_);
         }
         return;
      }

      private function deloporo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         kyri();
         this.tihitimo();
         this.jacavoby();
         return;
      }

      private function jacavoby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jola.x=Math.round((Rikuko.vyh-this.jola.width)*0.5);
         return;
      }

      private function meruvi() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:PetAbilityMeter = null;
         this.kovo.textChanged.addOnce(this.digavyj);
         var _loc1_:Nuri = new Nuri();
         for each (_loc2_ in this.pumojuw)
         {
            _loc1_.push(_loc2_.kenage);
         }
         _loc1_.complete.addOnce(this.syralur);
         this.bobiqit.kenage.add(this.huwivu);
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kovo.y=5;
         this.kovo.x=(Rikuko.vyh-this.kovo.width)*0.5;
         return;
      }

      private function syralur() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:PetAbilityMeter = null;
         var _loc1_:int = this.muq.y+14;
         for each (_loc2_ in this.pumojuw)
         {
            _loc2_.x=(Rikuko.vyh-227)*0.5;
            _loc2_.y=_loc1_;
            _loc1_=_loc1_+(_loc2_.height+10);
         }
         return;
      }

      private function tihitimo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.muq.x=(Rikuko.vyh-this.muq.width+8)*0.5;
         this.muq.y=152;
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