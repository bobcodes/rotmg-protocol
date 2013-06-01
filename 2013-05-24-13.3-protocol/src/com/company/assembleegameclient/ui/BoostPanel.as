package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.utils.Timer;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.TimerEvent;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import ruwysepyd.Junefolef;
   import nec.Zirewe;


   public class BoostPanel extends Sprite
   {
      public function BoostPanel(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.player=param1;
         this.lejih();
         this.dytuvehi();
         this.quwimezu();
         return;
      }

      public const cuqarybe:Hugyqufyq = new Hugyqufyq();

      private const SPACE:uint = 40;

      private var timer:Timer;

      private var player:Player;

      private var rasy:Nyfiwacir;

      private var luribeh:Nyfiwacir;

      private function quwimezu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer=new Timer(1000);
         this.timer.addEventListener(TimerEvent.TIMER,this.update);
         this.timer.start();
         return;
      }

      private function update(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mazokono(this.rasy,this.player.howohe);
         this.mazokono(this.luribeh,this.player.zazumyfy);
         return;
      }

      private function mazokono(param1:Nyfiwacir, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            if(param2)
            {
               param1.setTime(param2);
            }
            else
            {
               this.ninyv();
               this.dytuvehi();
            }
         }
         return;
      }

      private function lejih() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Bitmap = null;
         var _loc3_:Lufub = null;
         var _loc1_:BitmapData = TextureRedrawer.redraw(AssetLibrary.jeqycu("lofiInterfaceBig",22),20,true,0,0);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=-3;
         _loc2_.y=-1;
         addChild(_loc2_);
         _loc3_=new Lufub().setSize(16).setColor(65280);
         _loc3_.setBold(true);
         _loc3_.setStringBuilder(new Sire().setParams(I18nKeys.dasa));
         _loc3_.setMultiLine(true);
         _loc3_.mouseEnabled=true;
         _loc3_.filters=[new DropShadowFilter(0,0,0)];
         _loc3_.x=20;
         _loc3_.y=4;
         addChild(_loc3_);
         return;
      }

      private function dolihaduj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.lineStyle(2,16777215);
         graphics.beginFill(3355443);
         graphics.drawRoundRect(0,0,150,height+5,10);
         this.cuqarybe.dispatch();
         return;
      }

      private var tekojon:int;

      private function dytuvehi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tekojon=25;
         var _loc1_:Junefolef = new Junefolef();
         this.fubyj(_loc1_);
         this.zyjewumof(_loc1_);
         if(_loc1_.isEmpty())
         {
            this.dolihaduj();
         }
         else
         {
            _loc1_.complete.addOnce(this.dolihaduj);
         }
         return;
      }

      private function zyjewumof(param1:Junefolef) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.player.howohe)
         {
            this.rasy=this.gifiko(new Sire().setParams(I18nKeys.banohojof),this.player.howohe);
            this.seva(param1,this.rasy);
         }
         return;
      }

      private function fubyj(param1:Junefolef) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         if(this.player.zazumyfy)
         {
            _loc2_="1.5x";
            this.luribeh=this.gifiko(new Sire().setParams(I18nKeys.gahiqed,{rate:_loc2_}),this.player.zazumyfy);
            this.seva(param1,this.luribeh);
         }
         return;
      }

      private function seva(param1:Junefolef, param2:Nyfiwacir) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.push(param2.textChanged);
         addChild(param2);
         param2.y=this.tekojon;
         param2.x=10;
         this.tekojon=this.tekojon+this.SPACE;
         return;
      }

      private function ninyv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.rasy)&&(this.rasy.parent))
         {
            removeChild(this.rasy);
         }
         if((this.luribeh)&&(this.luribeh.parent))
         {
            removeChild(this.luribeh);
         }
         this.rasy=null;
         this.luribeh=null;
         return;
      }

      private function gifiko(param1:Zirewe, param2:int) : Nyfiwacir {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Nyfiwacir = new Nyfiwacir();
         _loc3_.byfe(param1);
         _loc3_.setTime(param2);
         return _loc3_;
      }
   }

}