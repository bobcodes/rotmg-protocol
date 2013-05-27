package gepa
{
   import coh.Biba;
   import movimet.Lufub;
   import coh.Negu;
   import coh.PetFeeder;
   import coh.Riqi;
   import __AS3__.vec.Vector;
   import coh.PetAbilityMeter;
   import com.company.assembleegameclient.ui.Luvu;
   import tulunyno.Hugyqufyq;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;
   import zoroc.Bezuco;
   import zoroc.Cikyzigit;
   import qucuqesif.Venepono;
   import zoroc.Vugusyqik;
   import qucuqesif.Qemo;
   import ruwysepyd.Junefolef;
   import qucuqesif.Rasoqymi;


   public class Fedif extends Kes
   {
      public function Fedif() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const background:Biba = Rasoqymi.nyrojan(Qemo.rufub,Qemo.jafosig);

      private const gotinip:Lufub = Rasoqymi.riguwyn(11776947,18,true);

      private const pewacuta:Negu = Rasoqymi.qerudug(I18nKeys.pajyguh,Qemo.jafosig-35);

      private const qin:PetFeeder = Rasoqymi.qoqyqag();

      private const pisykyr:Riqi = Rasoqymi.veruno(Qemo.rufub);

      private const zicicyt:Vector.<PetAbilityMeter> = Rasoqymi.ryjy();

      private const quvoqyrit:Vector.<Boolean> = Vector.<Boolean>([false,false,false]);

      private const did:Luvu = new Luvu(Qemo.rufub-25,0);

      public const sozy:Hugyqufyq = new Hugyqufyq();

      public const closed:Hugyqufyq = new Hugyqufyq();

      public var fiwabivy:Hugyqufyq;

      public var huvi:Hugyqufyq;

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gotinip.setStringBuilder(new Sire().setParams(I18nKeys.vok));
         this.qin.sozy.addOnce(this.risohukit);
         this.fiwabivy=this.pewacuta.qeq;
         this.huvi=this.pewacuta.vuso;
         this.pisykyr.siperu.add(this.pomuwok);
         this.qin.rajas.add(this.ropofybep);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.vivi();
         this.qohinep();
         this.cenezyr();
         return;
      }

      public function nadihe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qin.kogoweco();
         this.qin.darinum();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qin.rajas.remove(this.ropofybep);
         this.pisykyr.siperu.remove(this.pomuwok);
         return;
      }

      private function ropofybep(param1:Boolean, param2:Bezuco) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Cikyzigit = null;
         this.pewacuta.tyreqar(!param1);
         if(param2)
         {
            if(!param2.kib())
            {
               this.pewacuta.setPrefix(I18nKeys.pajyguh);
               _loc3_=Cikyzigit.tawyt(param2.morezo());
               this.pewacuta.jogojoti(Venepono.gybabos(_loc3_));
               this.pewacuta.vaqipeca(Venepono.jatut(_loc3_));
            }
            else
            {
               this.pewacuta.gatup();
               this.pewacuta.setPrefix(I18nKeys.qowibimi);
            }
         }
         else
         {
            this.pewacuta.setPrefix(I18nKeys.rucoqi);
         }
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closed.dispatch();
         return;
      }

      private function risohukit() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sozy.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:PetAbilityMeter = null;
         for each (_loc1_ in this.zicicyt)
         {
            _loc1_.nokew.remove(this.duk);
         }
         this.pewacuta.soqifok.remove(this.peniryreh);
         return;
      }

      public function pic(param1:Array, param2:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc4_:Vugusyqik = null;
         var _loc5_:PetAbilityMeter = null;
         var _loc6_:PetAbilityMeter = null;
         var _loc3_:* = 0;
         if(param1==null)
         {
            for each (_loc5_ in this.zicicyt)
            {
               _loc5_.visible=false;
            }
         }
         for each (_loc4_ in param1)
         {
            if(_loc3_<this.zicicyt.length)
            {
               _loc6_=this.zicicyt[_loc3_];
               _loc6_.index=_loc3_;
               _loc6_.max=param2;
               _loc6_.visible=true;
               _loc6_.holi(_loc4_);
               _loc6_.nokew.add(this.duk);
               _loc3_++;
            }
         }
         return;
      }

      private function duk(param1:PetAbilityMeter, param2:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.quvoqyrit[param1.index]=param2;
         var _loc3_:Boolean = this.jogezot();
         this.pewacuta.tyreqar(_loc3_);
         this.qin.basisi(_loc3_);
         return;
      }

      private function jogezot() : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = false;
         var _loc1_:* = false;
         for each (_loc2_ in this.quvoqyrit)
         {
            if(_loc2_)
            {
               _loc1_=true;
               break;
            }
         }
         return _loc1_;
      }

      private function qohinep() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:PetAbilityMeter = null;
         addChild(this.background);
         addChild(this.gotinip);
         addChild(this.pewacuta);
         addChild(this.qin);
         addChild(this.pisykyr);
         addChild(this.did);
         for each (_loc1_ in this.zicicyt)
         {
            _loc1_.visible=false;
            addChild(_loc1_);
         }
         return;
      }

      private function cenezyr() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         keqej();
         this.josurad();
         this.ped();
         return;
      }

      private function ped() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qin.x=Math.round((Qemo.rufub-this.qin.width)*0.5);
         return;
      }

      private function vivi() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:PetAbilityMeter = null;
         this.gotinip.textChanged.addOnce(this.motiheh);
         var _loc1_:Junefolef = new Junefolef();
         for each (_loc2_ in this.zicicyt)
         {
            _loc1_.push(_loc2_.soqifok);
         }
         _loc1_.complete.addOnce(this.wonym);
         this.pewacuta.soqifok.add(this.peniryreh);
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gotinip.y=5;
         this.gotinip.x=(Qemo.rufub-this.gotinip.width)*0.5;
         return;
      }

      private function wonym() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:PetAbilityMeter = null;
         var _loc1_:int = this.did.y+14;
         for each (_loc2_ in this.zicicyt)
         {
            _loc2_.x=(Qemo.rufub-227)*0.5;
            _loc2_.y=_loc1_;
            _loc1_=_loc1_+(_loc2_.height+10);
         }
         return;
      }

      private function josurad() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.did.x=(Qemo.rufub-this.did.width+8)*0.5;
         this.did.y=152;
         return;
      }

      private function peniryreh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pewacuta.x=(Qemo.rufub-this.pewacuta.width)/2;
         return;
      }
   }

}