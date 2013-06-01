package coh
{
   import flash.display.Sprite;
   import tekoh.Gemanyq;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import tekoh.Zukot;
   import flash.events.Event;
   import zoroc.Vugusyqik;
   import qucuqesif.Mud;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import qucuqesif.Qemo;
   import flash.filters.DropShadowFilter;
   import ruwysepyd.Junefolef;
   import raqu.Hujuhy;
   import raqu.Goq;
   import qucuqesif.Rasoqymi;


   public class PetAbilityMeter extends Sprite implements Gemanyq
   {
      public function PetAbilityMeter() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.soqifok=new Hugyqufyq();
         this.gonan=new Zukot();
         super();
         this.moq.nokew.add(this.jivac);
         this.vivi();
         this.qohinep();
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.gonan.kol(this);
         return;
      }

      public const nokew:Hugyqufyq = new Hugyqufyq(PetAbilityMeter,Boolean);

      private const moradasif:Lufub = Rasoqymi.riguwyn(11776947,14,true,true);

      private const dehok:Lufub = Rasoqymi.riguwyn(11776947,14,true,true);

      private const moq:Zenijo = new Zenijo(Qemo.rac,Qemo.hyh);

      private var byzizun:Boolean = true;

      private var cicyhumuz:int = 0;

      private var reli:int = 0;

      private var symaly:Number = 0;

      public var soqifok:Hugyqufyq;

      public var max:int;

      public var index:int;

      private var gonan:Zukot;

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.moq.nokew.remove(this.jivac);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public function holi(param1:Vugusyqik) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.cicyhumuz=param1.points;
         this.reli=param1.level;
         this.quqynidy(param1.name);
         this.setUnlocked(param1.sejudejol());
         this.kuzo(this.byzizun?param1.level:0);
         this.jivac(false);
         this.gonan.tooltip=new Wajifapa(param1);
         if(this.byzizun)
         {
            _loc2_=Math.max(0,Mud.vege(param1.points,param1.level));
            _loc3_=Mud.gavyr(param1.level);
            _loc2_=param1.level>=this.max?_loc3_:_loc2_;
            this.sihutor(_loc2_,_loc3_);
         }
         param1.tygyfizop.add(this.polyram);
         return;
      }

      private function polyram(param1:Vugusyqik) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         this.setUnlocked(param1.sejudejol());
         if(param1.points>this.cicyhumuz&&(this.byzizun))
         {
            this.cicyhumuz=param1.points;
            this.symaly=Mud.vege(param1.points,this.reli);
            _loc2_=Mud.gavyr(this.reli);
            if(!(_loc2_==0)&&this.symaly>_loc2_)
            {
               this.symaly=this.symaly-_loc2_;
               this.moq.jozola.add(this.fylemen);
               this.moq.fill();
               this.jivac(true);
            }
            else
            {
               this.sihutor(this.symaly,_loc2_);
            }
         }
         return;
      }

      private function fylemen() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = NaN;
         var _loc1_:* = false;
         this.reli++;
         this.kuzo(this.reli,true);
         _loc2_=Mud.gavyr(this.reli);
         if(this.symaly>_loc2_)
         {
            this.moq.reset();
            this.symaly=this.symaly-_loc2_;
            this.moq.fill();
         }
         else
         {
            this.moq.jozola.remove(this.fylemen);
            if(this.reli>=this.max)
            {
               this.moq.jakit(null);
               this.symaly=0;
            }
            else
            {
               this.moq.reset();
               this.sihutor(this.symaly,_loc2_);
            }
         }
         return;
      }

      public function quqynidy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dehok.setStringBuilder(new Sire().setParams(param1));
         return;
      }

      public function kuzo(param1:int, param2:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = param1>=this.max?I18nKeys.roras:I18nKeys.hifasozy;
         this.moradasif.setColor(param2?1572859:param1>=this.max?Qemo.nitenabij:11776947);
         this.moradasif.setStringBuilder(new Sire().setParams(_loc3_,{level:param1.toString()}));
         this.moradasif.textChanged.addOnce(this.cakyn);
         return;
      }

      public function sihutor(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.moq.faqyje(param2);
         this.moq.nypo(param1);
         return;
      }

      public function setUnlocked(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         if(this.byzizun!=param1)
         {
            this.byzizun=param1;
            _loc2_=param1?11776947:5658198;
            _loc3_=param1?[new DropShadowFilter(0,0,0)]:[];
            this.dehok.setColor(_loc2_);
            this.dehok.filters=_loc3_;
            this.moradasif.visible=param1;
         }
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.dehok);
         addChild(this.moradasif);
         addChild(this.moq);
         return;
      }

      private function vivi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.moradasif.textChanged);
         _loc1_.push(this.dehok.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         return;
      }

      private function cakyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.moq.y=21;
         this.moradasif.x=Qemo.rac-this.moradasif.width;
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cakyn();
         this.soqifok.dispatch();
         return;
      }

      private function jivac(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.moradasif.setColor(param1?1572859:this.reli>=this.max?Qemo.nitenabij:11776947);
         this.dehok.setColor(param1?1572859:this.reli>=100?Qemo.nitenabij:11776947);
         if(!param1&&this.reli>=100)
         {
            this.moq.qyrag(Qemo.nitenabij);
         }
         this.nokew.dispatch(this,param1);
         return;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gonan.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.gonan.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gonan.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.gonan.wab();
      }
   }

}