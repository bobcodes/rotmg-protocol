package wenono
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.StatusBar;
   import com.company.assembleegameclient.ui.Geqohuzet;
   import com.company.assembleegameclient.objects.Player;
   import komi.Vibemod;
   import flash.events.Event;


   public class Worudo extends Sprite
   {
      public function Worudo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.juqokyvof=new StatusBar(176,16,5931045,5526612,Vibemod.div);
         this.jyr=new StatusBar(176,16,14835456,5526612,Vibemod.huki);
         this.voge=new StatusBar(176,16,14693428,5526612,Vibemod.nysirahec);
         this.tynun=new StatusBar(176,16,6325472,5526612,Vibemod.reqodafes);
         this.voge.y=24;
         this.tynun.y=48;
         this.juqokyvof.visible=true;
         this.jyr.visible=false;
         addChild(this.juqokyvof);
         addChild(this.jyr);
         addChild(this.voge);
         addChild(this.tynun);
         return;
      }

      private var juqokyvof:StatusBar;

      private var jyr:StatusBar;

      private var voge:StatusBar;

      private var tynun:StatusBar;

      private var ragiwuzo:Boolean;

      private var kyja:int;

      private var wyfas:Geqohuzet;

      public function update(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.juqokyvof.mujet(Vibemod.div,{level:param1.kanifivi});
         if(param1.kanifivi!=20)
         {
            if(this.wyfas)
            {
               this.wyfas.update(param1.toz);
            }
            if(!this.juqokyvof.visible)
            {
               this.juqokyvof.visible=true;
               this.jyr.visible=false;
            }
            this.juqokyvof.draw(param1.exp_,param1.jov,0);
            if(this.kyja!=param1.fazob)
            {
               this.kyja=param1.fazob;
               if(this.kyja)
               {
                  this.juqokyvof.masyhebun();
               }
               else
               {
                  this.juqokyvof.rujeb();
               }
            }
            if(param1.toz)
            {
               if(!this.ragiwuzo)
               {
                  this.juqokyvof.addEventListener("MULTIPLIER_OVER",this.lic);
                  this.juqokyvof.addEventListener("MULTIPLIER_OUT",this.leqewo);
                  this.ragiwuzo=true;
               }
            }
            else
            {
               if(this.ragiwuzo)
               {
                  this.juqokyvof.removeEventListener("MULTIPLIER_OVER",this.lic);
                  this.juqokyvof.removeEventListener("MULTIPLIER_OUT",this.leqewo);
                  this.ragiwuzo=false;
               }
               if((this.wyfas)&&(this.wyfas.parent))
               {
                  removeChild(this.wyfas);
                  this.wyfas=null;
               }
            }
         }
         else
         {
            if(!this.jyr.visible)
            {
               this.jyr.visible=true;
               this.juqokyvof.visible=false;
            }
            this.jyr.draw(param1.hymyhica,param1.fytedat,0);
         }
         this.voge.draw(param1.vypo,param1.kukigim,param1.jomafu,param1.suvof);
         this.tynun.draw(param1.nydyry,param1.nivuj,param1.kuvupaco,param1.dopypi);
         return;
      }

      private function lic(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(this.wyfas=new Geqohuzet());
         return;
      }

      private function leqewo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.wyfas)&&(this.wyfas.parent))
         {
            removeChild(this.wyfas);
            this.wyfas=null;
         }
         return;
      }
   }

}