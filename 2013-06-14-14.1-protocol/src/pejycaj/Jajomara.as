package pejycaj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Liwyny;
   import jediwip.Vofezuzy;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;


   public class Jajomara extends Sprite
   {
      public function Jajomara() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyjula=Wybanozaq;
         super();
         return;
      }

      private var dyjula:Class;

      public const close:Qanyduk = new Qanyduk();

      private const veqivy:Sprite = new Sprite();

      private var count:int = 5;

      private const doc:Liwyny = this.cuvup();

      private const woga:Vofezuzy = new Vofezuzy();

      private const butevud:Liwyny = this.gobucobu();

      private const fibewileg:Timer = new Timer(1000);

      private const meto:Sprite = new Sprite();

      private var waveNumber:int = -1;

      private const piropu = this.pydamusip();

      private const gigopefo:Liwyny = this.nagofajyt();

      private const basado:Liwyny = this.fugibudep();

      private const zysapyf:Liwyny = this.duzalamol();

      private const sehezuhuw:Timer = new Timer(1500,1);

      public function init() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         [OFS10]mouseChildren[/OFS][OFS10]=[/OFS]false;
         [OFS17]mouseEnabled[/OFS][OFS17]=[/OFS]false;
         this.[OFS21]fibewileg[/OFS].[OFS34]addEventListener[/OFS][OFS34]([/OFS][OFS24]TimerEvent[/OFS].[OFS27]TIMER[/OFS][OFS34],[/OFS]this.[OFS31]coketavet[/OFS][OFS34])[/OFS];
         this.[OFS38]fibewileg[/OFS].[OFS41]start[/OFS][OFS41]([/OFS][OFS41])[/OFS];
         [OFS45]return[/OFS];
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fibewileg.stop();
         this.fibewileg.removeEventListener(TimerEvent.TIMER,this.coketavet);
         this.sehezuhuw.stop();
         this.sehezuhuw.removeEventListener(TimerEvent.TIMER,this.mapi);
         return;
      }

      public function show() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.veqivy);
         this.center();
         return;
      }

      public function lano(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.waveNumber=param1;
         this.basado.setStringBuilder(new Vofezuzy(this.waveNumber.toString()));
         this.basado.x=this.piropu.width/2-this.basado.width/2;
         return;
      }

      private function center() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         x=300-width/2;
         y=contains(this.veqivy)?138:87.5;
         return;
      }

      private function coketavet(param1:TimerEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.count>1)
         {
            this.count--;
            this.butevud.setStringBuilder(this.woga.setString(this.count.toString()));
            this.butevud.x=this.doc.width/2-this.butevud.width/2;
         }
         else
         {
            removeChild(this.veqivy);
            addChild(this.meto);
            this.fibewileg.removeEventListener(TimerEvent.TIMER,this.coketavet);
            this.sehezuhuw.addEventListener(TimerEvent.TIMER,this.mapi);
            this.sehezuhuw.start();
            this.center();
         }
         return;
      }

      private function mapi(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sehezuhuw.removeEventListener(TimerEvent.TIMER,this.mapi);
         this.close.dispatch();
         return;
      }

      private function cuvup() : Liwyny {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(20).setBold(true).setColor(13421772);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.hemisi));
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8,2)];
         this.veqivy.addChild(_loc1_);
         return _loc1_;
      }

      private function gobucobu() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(42).setBold(true).setColor(13421772);
         _loc1_.setStringBuilder(this.woga.setString(this.count.toString()));
         _loc1_.y=this.doc.height;
         _loc1_.x=this.doc.width/2-_loc1_.width/2;
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8,2)];
         this.veqivy.addChild(_loc1_);
         return _loc1_;
      }

      private function nagofajyt() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(18).setBold(true).setColor(16567065);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.tirabe));
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8,2)];
         _loc1_.x=this.piropu.width/2-_loc1_.width/2;
         _loc1_.y=this.piropu.height/2-_loc1_.height/2-15;
         this.meto.addChild(_loc1_);
         return _loc1_;
      }

      private function fugibudep() : Liwyny {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(40).setBold(true).setColor(16567065);
         _loc1_.y=this.gigopefo.y+this.gigopefo.height-5;
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8,2)];
         this.meto.addChild(_loc1_);
         return _loc1_;
      }

      private function pydamusip() : * {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = new this.dyjula();
         this.meto.addChild(_loc1_);
         return _loc1_;
      }

      private function duzalamol() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(32).setBold(true).setColor(11776947);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.silyk));
         _loc1_.y=this.piropu.y+this.piropu.height-5;
         _loc1_.x=this.piropu.width/2-_loc1_.width/2;
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8,2)];
         this.meto.addChild(_loc1_);
         return _loc1_;
      }
   }

}