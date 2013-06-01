package wepyhuzy
{
[CLASS1831]   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Tosahafu;
   import qilarag.Boqurot;
   import com.company.assembleegameclient.objects.Player;
   import jodahije.Holipov;
   import cejyva.Dialog;
   import haqakel.Kefyfa;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import com.company.rotmg.graphics.ScreenGraphic;
   import flash.text.TextFieldAutoSize;
   import pudev.Capitu;


   public class Pof extends Sprite
   {
      public function Pof(param1:Tosahafu) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.gs_=param1;
         graphics.clear();
         graphics.beginFill(2829099,0.8);
         graphics.drawRect(0,0,800,600);
         graphics.endFill();
         addChild(this.container=new Sprite());
         this.fukapa();
         addChild(new ScreenGraphic());
         this.suwy=new Boqurot(Kefyfa.kigu,36,false);
         this.suwy.setAutoSize(TextFieldAutoSize.CENTER);
         this.suwy.setVerticalAlign(Capitu.MIDDLE);
         this.suwy.addEventListener(MouseEvent.CLICK,this.guwyzovac);
         addChild(this.suwy);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var gs_:Tosahafu;

      private var container:Sprite;

      private var rimifati:GuildPlayerList;

      private var suwy:Boqurot;

      private function fukapa() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.rimifati)&&(this.rimifati.parent))
         {
            this.container.removeChild(this.rimifati);
         }
         var _loc1_:Player = this.gs_.map.player_;
         this.rimifati=new GuildPlayerList(50,0,_loc1_==null?"":_loc1_.name_,_loc1_.guildRank_);
         this.rimifati.addEventListener(Rodabyl.SET_RANK,this.siwykyf);
         this.rimifati.addEventListener(Rodabyl.REMOVE_MEMBER,this.rerytugoj);
         this.container.addChild(this.rimifati);
         return;
      }

      private function wegimykom() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rimifati.removeEventListener(Rodabyl.SET_RANK,this.siwykyf);
         this.rimifati.removeEventListener(Rodabyl.REMOVE_MEMBER,this.rerytugoj);
         this.container.removeChild(this.rimifati);
         this.rimifati=null;
         return;
      }

      private function siwykyf(param1:Rodabyl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wegimykom();
         this.gs_.addEventListener(Holipov.gegucoc,this.lobe);
         this.gs_.gsc_.changeGuildRank(param1.name_,param1.bywuqab);
         return;
      }

      private function lobe(param1:Holipov) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.removeEventListener(Holipov.gegucoc,this.lobe);
         if(!param1.success_)
         {
            this.mede(param1.nicon);
         }
         else
         {
            this.fukapa();
         }
         return;
      }

      private function rerytugoj(param1:Rodabyl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wegimykom();
         this.gs_.addEventListener(Holipov.gegucoc,this.qyvuwyc);
         this.gs_.gsc_.guildRemove(param1.name_);
         return;
      }

      private function qyvuwyc(param1:Holipov) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.removeEventListener(Holipov.gegucoc,this.qyvuwyc);
         if(!param1.success_)
         {
            this.mede(param1.nicon);
         }
         else
         {
            this.fukapa();
         }
         return;
      }

      private function mede(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dialog = new Dialog(Kefyfa.wagebu,param1,Kefyfa.sud,null,"/guildError");
         _loc2_.addEventListener(Dialog.LEFT_BUTTON,this.jodocum);
         stage.addChild(_loc2_);
         return;
      }

      private function jodocum(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dialog = param1.currentTarget as Dialog;
         stage.removeChild(_loc2_);
         this.fukapa();
         return;
      }

      private function guwyzovac(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.suwy.x=stage.stageWidth/2;
         this.suwy.y=550;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja,false,1);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih,false,1);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja,false);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih,false);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         return;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         return;
      }

      private function close() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         stage.focus=null;
         parent.removeChild(this);
         return;
      }
   }
[/CLASS]
}