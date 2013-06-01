package com.company.assembleegameclient.ui
{
[CLASS1624]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.utils.Timer;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.TimerEvent;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import tidi.Dak;
   import totuhare.Qebar;


   public class BoostPanel extends Sprite
   {
      public function BoostPanel(param1:Player) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.player=param1;
         this.wodec();
         this.mahaka();
         this.zycupapyh();
         return;
      }

      public const sihusiqew:Dab = new Dab();

      private const SPACE:uint = 40;

      private var timer:Timer;

      private var player:Player;

      private var saca:Cakysekyw;

      private var sesozan:Cakysekyw;

      private function zycupapyh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer=new Timer(1000);
         this.timer.addEventListener(TimerEvent.TIMER,this.update);
         this.timer.start();
         return;
      }

      private function update(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zopyrun(this.saca,this.player.gucec);
         this.zopyrun(this.sesozan,this.player.sap);
         return;
      }

      private function zopyrun(param1:Cakysekyw, param2:int) : void {
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
               this.rybocy();
               this.mahaka();
            }
         }
         return;
      }

      private function wodec() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Bitmap = null;
         var _loc3_:Capitu = null;
         var _loc1_:BitmapData = TextureRedrawer.redraw(AssetLibrary.zovy("lofiInterfaceBig",22),20,true,0,0);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=-3;
         _loc2_.y=-1;
         addChild(_loc2_);
         _loc3_=new Capitu().setSize(16).setColor(65280);
         _loc3_.setBold(true);
         _loc3_.setStringBuilder(new Zufi().setParams(Kefyfa.zinuga));
         _loc3_.setMultiLine(true);
         _loc3_.mouseEnabled=true;
         _loc3_.filters=[new DropShadowFilter(0,0,0)];
         _loc3_.x=20;
         _loc3_.y=4;
         addChild(_loc3_);
         return;
      }

      private function nybedo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.lineStyle(2,16777215);
         graphics.beginFill(3355443);
         graphics.drawRoundRect(0,0,150,height+5,10);
         this.sihusiqew.dispatch();
         return;
      }

      private var bumub:int;

      private function mahaka() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bumub=25;
         var _loc1_:Dak = new Dak();
         this.nysoru(_loc1_);
         this.hygow(_loc1_);
         if(_loc1_.isEmpty())
         {
            this.nybedo();
         }
         else
         {
            _loc1_.complete.addOnce(this.nybedo);
         }
         return;
      }

      private function hygow(param1:Dak) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.player.gucec)
         {
            this.saca=this.bicyf(new Zufi().setParams(Kefyfa.qag),this.player.gucec);
            this.wycujo(param1,this.saca);
         }
         return;
      }

      private function nysoru(param1:Dak) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         if(this.player.sap)
         {
            _loc2_="1.5x";
            this.sesozan=this.bicyf(new Zufi().setParams(Kefyfa.pyfa,{rate:_loc2_}),this.player.sap);
            this.wycujo(param1,this.sesozan);
         }
         return;
      }

      private function wycujo(param1:Dak, param2:Cakysekyw) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.push(param2.textChanged);
         addChild(param2);
         param2.y=this.bumub;
         param2.x=10;
         this.bumub=this.bumub+this.SPACE;
         return;
      }

      private function rybocy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.saca)&&(this.saca.parent))
         {
            removeChild(this.saca);
         }
         if((this.sesozan)&&(this.sesozan.parent))
         {
            removeChild(this.sesozan);
         }
         this.saca=null;
         this.sesozan=null;
         return;
      }

      private function bicyf(param1:Qebar, param2:int) : Cakysekyw {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Cakysekyw = new Cakysekyw();
         _loc3_.hegu(param1);
         _loc3_.setTime(param2);
         return _loc3_;
      }
   }
[/CLASS]
}