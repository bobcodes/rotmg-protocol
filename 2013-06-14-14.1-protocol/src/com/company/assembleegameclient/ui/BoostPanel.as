package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.utils.Timer;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.TimerEvent;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import wenono.Nuri;
   import jediwip.Tunyhazo;


   public class BoostPanel extends Sprite
   {
      public function BoostPanel(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.player=param1;
         this.viqucuhoj();
         this.comeke();
         this.vulin();
         return;
      }

      public const zowycu:Qanyduk = new Qanyduk();

      private const SPACE:uint = 40;

      private var timer:Timer;

      private var player:Player;

      private var von:Qyjimofi;

      private var lababo:Qyjimofi;

      private function vulin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer=new Timer(1000);
         this.timer.addEventListener(TimerEvent.TIMER,this.update);
         this.timer.start();
         return;
      }

      private function update(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mivacubyr(this.von,this.player.hugy);
         this.mivacubyr(this.lababo,this.player.hukul);
         return;
      }

      private function mivacubyr(param1:Qyjimofi, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            if(param2)
            {
               param1.setTime(param2);
            }
            else
            {
               this.zuq();
               this.comeke();
            }
         }
         return;
      }

      private function viqucuhoj() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Bitmap = null;
         var _loc3_:Guzowoja = null;
         var _loc1_:BitmapData = TextureRedrawer.redraw(AssetLibrary.tem("lofiInterfaceBig",22),20,true,0,0);
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=-3;
         _loc2_.y=-1;
         addChild(_loc2_);
         _loc3_=new Guzowoja().setSize(16).setColor(65280);
         _loc3_.setBold(true);
         _loc3_.setStringBuilder(new Kybidu().setParams(Vibemod.vyky));
         _loc3_.setMultiLine(true);
         _loc3_.mouseEnabled=true;
         _loc3_.filters=[new DropShadowFilter(0,0,0)];
         _loc3_.x=20;
         _loc3_.y=4;
         addChild(_loc3_);
         return;
      }

      private function vobocuwok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         graphics.lineStyle(2,16777215);
         graphics.beginFill(3355443);
         graphics.drawRoundRect(0,0,150,height+5,10);
         this.zowycu.dispatch();
         return;
      }

      private var jin:int;

      private function comeke() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jin=25;
         var _loc1_:Nuri = new Nuri();
         this.nipevubo(_loc1_);
         this.zaviz(_loc1_);
         if(_loc1_.isEmpty())
         {
            this.vobocuwok();
         }
         else
         {
            _loc1_.complete.addOnce(this.vobocuwok);
         }
         return;
      }

      private function zaviz(param1:Nuri) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.player.hugy)
         {
            this.von=this.supebyt(new Kybidu().setParams(Vibemod.cocyq),this.player.hugy);
            this.hulu(param1,this.von);
         }
         return;
      }

      private function nipevubo(param1:Nuri) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         if(this.player.hukul)
         {
            _loc2_="1.5x";
            this.lababo=this.supebyt(new Kybidu().setParams(Vibemod.raruqot,{rate:_loc2_}),this.player.hukul);
            this.hulu(param1,this.lababo);
         }
         return;
      }

      private function hulu(param1:Nuri, param2:Qyjimofi) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.push(param2.textChanged);
         addChild(param2);
         param2.y=this.jin;
         param2.x=10;
         this.jin=this.jin+this.SPACE;
         return;
      }

      private function zuq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.von)&&(this.von.parent))
         {
            removeChild(this.von);
         }
         if((this.lababo)&&(this.lababo.parent))
         {
            removeChild(this.lababo);
         }
         this.von=null;
         this.lababo=null;
         return;
      }

      private function supebyt(param1:Tunyhazo, param2:int) : Qyjimofi {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Qyjimofi = new Qyjimofi();
         _loc3_.zovyf(param1);
         _loc3_.setTime(param2);
         return _loc3_;
      }
   }

}