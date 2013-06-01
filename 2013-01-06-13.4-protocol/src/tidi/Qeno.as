package tidi
{
[CLASS416]   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.StatusBar;
   import com.company.assembleegameclient.ui.Kipad;
   import com.company.assembleegameclient.objects.Player;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class Qeno extends Sprite
   {
      public function Qeno() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.hebod=new StatusBar(176,16,5931045,5526612,Kefyfa.pevuz);
         this.hemebedat=new StatusBar(176,16,14835456,5526612,Kefyfa.taqakedu);
         this.pugifin=new StatusBar(176,16,14693428,5526612,Kefyfa.hosu);
         this.viceha=new StatusBar(176,16,6325472,5526612,Kefyfa.dulu);
         this.pugifin.y=24;
         this.viceha.y=48;
         this.hebod.visible=true;
         this.hemebedat.visible=false;
         addChild(this.hebod);
         addChild(this.hemebedat);
         addChild(this.pugifin);
         addChild(this.viceha);
         return;
      }

      private var hebod:StatusBar;

      private var hemebedat:StatusBar;

      private var pugifin:StatusBar;

      private var viceha:StatusBar;

      private var jicowegu:Boolean;

      private var bazo:int;

      private var paceva:Kipad;

      public function update(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hebod.qycema(Kefyfa.pevuz,{level:param1.jepe});
         if(param1.jepe!=20)
         {
            if(this.paceva)
            {
               this.paceva.update(param1.bemy);
            }
            if(!this.hebod.visible)
            {
               this.hebod.visible=true;
               this.hemebedat.visible=false;
            }
            this.hebod.draw(param1.exp_,param1.qoqin,0);
            if(this.bazo!=param1.midomuwav)
            {
               this.bazo=param1.midomuwav;
               if(this.bazo)
               {
                  this.hebod.legoh();
               }
               else
               {
                  this.hebod.tasohegyl();
               }
            }
            if(param1.bemy)
            {
               if(!this.jicowegu)
               {
                  this.hebod.addEventListener("MULTIPLIER_OVER",this.satepas);
                  this.hebod.addEventListener("MULTIPLIER_OUT",this.nurow);
                  this.jicowegu=true;
               }
            }
            else
            {
               if(this.jicowegu)
               {
                  this.hebod.removeEventListener("MULTIPLIER_OVER",this.satepas);
                  this.hebod.removeEventListener("MULTIPLIER_OUT",this.nurow);
                  this.jicowegu=false;
               }
               if((this.paceva)&&(this.paceva.parent))
               {
                  removeChild(this.paceva);
                  this.paceva=null;
               }
            }
         }
         else
         {
            if(!this.hemebedat.visible)
            {
               this.hemebedat.visible=true;
               this.hebod.visible=false;
            }
            this.hemebedat.draw(param1.hitivynu,param1.hyzoqyh,0);
         }
         this.pugifin.draw(param1.qyhefanyk,param1.liq,param1.tary,param1.qojave);
         this.viceha.draw(param1.kyl,param1.naduzab,param1.najihoce,param1.huhinu);
         return;
      }

      private function satepas(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         addChild(this.paceva=new Kipad());
         return;
      }

      private function nurow(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.paceva)&&(this.paceva.parent))
         {
            removeChild(this.paceva);
            this.paceva=null;
         }
         return;
      }
   }
[/CLASS]
}