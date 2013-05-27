package ruwysepyd
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.StatusBar;
   import com.company.assembleegameclient.ui.Kogigim;
   import com.company.assembleegameclient.objects.Player;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class Lujaj extends Sprite
   {
      public function Lujaj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.tynekosim=new StatusBar(176,16,5931045,5526612,I18nKeys.pasujizil);
         this.cocohisep=new StatusBar(176,16,14835456,5526612,I18nKeys.bylaface);
         this.vefaneb=new StatusBar(176,16,14693428,5526612,I18nKeys.fiwus);
         this.lygaze=new StatusBar(176,16,6325472,5526612,I18nKeys.feput);
         this.vefaneb.y=24;
         this.lygaze.y=48;
         this.tynekosim.visible=true;
         this.cocohisep.visible=false;
         addChild(this.tynekosim);
         addChild(this.cocohisep);
         addChild(this.vefaneb);
         addChild(this.lygaze);
         return;
      }

      private var tynekosim:StatusBar;

      private var cocohisep:StatusBar;

      private var vefaneb:StatusBar;

      private var lygaze:StatusBar;

      private var nupeq:Boolean;

      private var guje:int;

      private var divyry:Kogigim;

      public function update(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tynekosim.bevuzinu(I18nKeys.pasujizil,{level:param1.komolevy});
         if(param1.komolevy!=20)
         {
            if(this.divyry)
            {
               this.divyry.update(param1.suqo);
            }
            if(!this.tynekosim.visible)
            {
               this.tynekosim.visible=true;
               this.cocohisep.visible=false;
            }
            this.tynekosim.draw(param1.exp_,param1.gigeloqy,0);
            if(this.guje!=param1.gipa)
            {
               this.guje=param1.gipa;
               if(this.guje)
               {
                  this.tynekosim.ryba();
               }
               else
               {
                  this.tynekosim.pobimufy();
               }
            }
            if(param1.suqo)
            {
               if(!this.nupeq)
               {
                  this.tynekosim.addEventListener("MULTIPLIER_OVER",this.wyrarev);
                  this.tynekosim.addEventListener("MULTIPLIER_OUT",this.sosatovir);
                  this.nupeq=true;
               }
            }
            else
            {
               if(this.nupeq)
               {
                  this.tynekosim.removeEventListener("MULTIPLIER_OVER",this.wyrarev);
                  this.tynekosim.removeEventListener("MULTIPLIER_OUT",this.sosatovir);
                  this.nupeq=false;
               }
               if((this.divyry)&&(this.divyry.parent))
               {
                  removeChild(this.divyry);
                  this.divyry=null;
               }
            }
         }
         else
         {
            if(!this.cocohisep.visible)
            {
               this.cocohisep.visible=true;
               this.tynekosim.visible=false;
            }
            this.cocohisep.draw(param1.wufadeqow,param1.vecetezo,0);
         }
         this.vefaneb.draw(param1.ryqi,param1.ruguj,param1.toq,param1.tucyb);
         this.lygaze.draw(param1.zamonoca,param1.boliqoka,param1.nyderod,param1.malezu);
         return;
      }

      private function wyrarev(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(this.divyry=new Kogigim());
         return;
      }

      private function sosatovir(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.divyry)&&(this.divyry.parent))
         {
            removeChild(this.divyry);
            this.divyry=null;
         }
         return;
      }
   }

}