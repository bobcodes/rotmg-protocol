package zec
{
[CLASS277]   import fyvanod.Pyni;
   import pudev.Capitu;
   import fyvanod.Kywyb;
   import fyvanod.PetFeeder;
   import fyvanod.Jasuhoco;
   import __AS3__.vec.Vector;
   import fyvanod.PetAbilityMeter;
   import com.company.assembleegameclient.ui.Detys;
   import tinava.Dab;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.events.Event;
   import qypupet.Vuravipyg;
   import qypupet.Gucuqop;
   import kozaligov.Cyj;
   import qypupet.Zazeseca;
   import kozaligov.Cinijyt;
   import tidi.Dak;
   import kozaligov.Bapipe;


   public class Pobifiga extends Tug
   {
      public function Pobifiga() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const background:Pyni = Bapipe.vamy(Cinijyt.lihunohoc,Cinijyt.buhyq);

      private const wodigupu:Capitu = Bapipe.nopu(11776947,18,true);

      private const ziluf:Kywyb = Bapipe.daq(Kefyfa.wavaro,Cinijyt.buhyq-35);

      private const jasiw:PetFeeder = Bapipe.pilak();

      private const giqezi:Jasuhoco = Bapipe.dupypy(Cinijyt.lihunohoc);

      private const wovaduzem:Vector.<PetAbilityMeter> = Bapipe.wenotas();

      private const bizuj:Vector.<Boolean> = Vector.<Boolean>([false,false,false]);

      private const kiwo:Detys = new Detys(Cinijyt.lihunohoc-25,0);

      public const zate:Dab = new Dab();

      public const closed:Dab = new Dab();

      public var buniwyr:Dab;

      public var qosenic:Dab;

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wodigupu.setStringBuilder(new Zufi().setParams(Kefyfa.pobutyz));
         this.jasiw.zate.addOnce(this.lewema);
         this.buniwyr=this.ziluf.bulipy;
         this.qosenic=this.ziluf.rij;
         this.giqezi.zokokof.add(this.zykekulucy);
         this.jasiw.rys.add(this.dejime);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.tozibyt();
         this.mipuguc();
         this.sym();
         return;
      }

      public function gun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jasiw.siwuj();
         this.jasiw.bijyzeqez();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jasiw.rys.remove(this.dejime);
         this.giqezi.zokokof.remove(this.zykekulucy);
         return;
      }

      private function dejime(param1:Boolean, param2:Vuravipyg) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Gucuqop = null;
         this.ziluf.pyjeluke(!param1);
         if(param2)
         {
            if(!param2.tofuz())
            {
               this.ziluf.setPrefix(Kefyfa.wavaro);
               _loc3_=Gucuqop.gak(param2.nyv());
               this.ziluf.sev(Cyj.gijebipic(_loc3_));
               this.ziluf.rinocuf(Cyj.fukacil(_loc3_));
            }
            else
            {
               this.ziluf.raqug();
               this.ziluf.setPrefix(Kefyfa.jymifir);
            }
         }
         else
         {
            this.ziluf.setPrefix(Kefyfa.qedy);
         }
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closed.dispatch();
         return;
      }

      private function lewema() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zate.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:PetAbilityMeter = null;
         for each (_loc1_ in this.wovaduzem)
         {
            _loc1_.hamaqo.remove(this.rutu);
         }
         this.ziluf.wihihula.remove(this.rahuzifok);
         return;
      }

      public function vymawiw(param1:Array, param2:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc4_:Zazeseca = null;
         var _loc5_:PetAbilityMeter = null;
         var _loc6_:PetAbilityMeter = null;
         var _loc3_:* = 0;
         if(param1==null)
         {
            for each (_loc5_ in this.wovaduzem)
            {
               _loc5_.visible=false;
            }
         }
         for each (_loc4_ in param1)
         {
            if(_loc3_<this.wovaduzem.length)
            {
               _loc6_=this.wovaduzem[_loc3_];
               _loc6_.index=_loc3_;
               _loc6_.max=param2;
               _loc6_.visible=true;
               _loc6_.fej(_loc4_);
               _loc6_.hamaqo.add(this.rutu);
               _loc3_++;
            }
         }
         return;
      }

      private function rutu(param1:PetAbilityMeter, param2:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.bizuj[param1.index]=param2;
         var _loc3_:Boolean = this.segyjyjo();
         this.ziluf.pyjeluke(_loc3_);
         this.jasiw.vajajozuw(_loc3_);
         return;
      }

      private function segyjyjo() : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = false;
         var _loc1_:* = false;
         for each (_loc2_ in this.bizuj)
         {
            if(_loc2_)
            {
               _loc1_=true;
               break;
            }
         }
         return _loc1_;
      }

      private function mipuguc() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:PetAbilityMeter = null;
         addChild(this.background);
         addChild(this.wodigupu);
         addChild(this.ziluf);
         addChild(this.jasiw);
         addChild(this.giqezi);
         addChild(this.kiwo);
         for each (_loc1_ in this.wovaduzem)
         {
            _loc1_.visible=false;
            addChild(_loc1_);
         }
         return;
      }

      private function sym() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         wavyfy();
         this.nacyka();
         this.wamy();
         return;
      }

      private function wamy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jasiw.x=Math.round((Cinijyt.lihunohoc-this.jasiw.width)*0.5);
         return;
      }

      private function tozibyt() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:PetAbilityMeter = null;
         this.wodigupu.textChanged.addOnce(this.fiqapek);
         var _loc1_:Dak = new Dak();
         for each (_loc2_ in this.wovaduzem)
         {
            _loc1_.push(_loc2_.wihihula);
         }
         _loc1_.complete.addOnce(this.hora);
         this.ziluf.wihihula.add(this.rahuzifok);
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wodigupu.y=5;
         this.wodigupu.x=(Cinijyt.lihunohoc-this.wodigupu.width)*0.5;
         return;
      }

      private function hora() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:PetAbilityMeter = null;
         var _loc1_:int = this.kiwo.y+14;
         for each (_loc2_ in this.wovaduzem)
         {
            _loc2_.x=(Cinijyt.lihunohoc-227)*0.5;
            _loc2_.y=_loc1_;
            _loc1_=_loc1_+(_loc2_.height+10);
         }
         return;
      }

      private function nacyka() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kiwo.x=(Cinijyt.lihunohoc-this.kiwo.width+8)*0.5;
         this.kiwo.y=152;
         return;
      }

      private function rahuzifok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ziluf.x=(Cinijyt.lihunohoc-this.ziluf.width)/2;
         return;
      }
   }
[/CLASS]
}