package kyre
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Nukomesih;
   import sakugyt.Tiqigawul;
   import com.company.assembleegameclient.objects.Player;
   import pov.Wyta;
   import nas.Dialog;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import com.company.rotmg.graphics.ScreenGraphic;
   import flash.text.TextFieldAutoSize;
   import movimet.Lufub;


   public class Won extends Sprite
   {
      public function Won(param1:Nukomesih) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.gs_=param1;
         graphics.clear();
         graphics.beginFill(2829099,0.8);
         graphics.drawRect(0,0,800,600);
         graphics.endFill();
         addChild(this.container=new Sprite());
         this.qepa();
         addChild(new ScreenGraphic());
         this.hyky=new Tiqigawul(I18nKeys.qegejubol,36,false);
         this.hyky.setAutoSize(TextFieldAutoSize.CENTER);
         this.hyky.setVerticalAlign(Lufub.MIDDLE);
         this.hyky.addEventListener(MouseEvent.CLICK,this.dega);
         addChild(this.hyky);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var gs_:Nukomesih;

      private var container:Sprite;

      private var lap:GuildPlayerList;

      private var hyky:Tiqigawul;

      private function qepa() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.lap)&&(this.lap.parent))
         {
            this.container.removeChild(this.lap);
         }
         var _loc1_:Player = this.gs_.map.player_;
         this.lap=new GuildPlayerList(50,0,_loc1_==null?"":_loc1_.name_,_loc1_.guildRank_);
         this.lap.addEventListener(Tejyla.SET_RANK,this.wuwoboc);
         this.lap.addEventListener(Tejyla.REMOVE_MEMBER,this.huk);
         this.container.addChild(this.lap);
         return;
      }

      private function lizihy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lap.removeEventListener(Tejyla.SET_RANK,this.wuwoboc);
         this.lap.removeEventListener(Tejyla.REMOVE_MEMBER,this.huk);
         this.container.removeChild(this.lap);
         this.lap=null;
         return;
      }

      private function wuwoboc(param1:Tejyla) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lizihy();
         this.gs_.addEventListener(Wyta.zat,this.duqocutir);
         this.gs_.gsc_.changeGuildRank(param1.name_,param1.nefecuqo);
         return;
      }

      private function duqocutir(param1:Wyta) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.removeEventListener(Wyta.zat,this.duqocutir);
         if(!param1.success_)
         {
            this.vukukyso(param1.sogedowa);
         }
         else
         {
            this.qepa();
         }
         return;
      }

      private function huk(param1:Tejyla) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lizihy();
         this.gs_.addEventListener(Wyta.zat,this.tywutoweb);
         this.gs_.gsc_.guildRemove(param1.name_);
         return;
      }

      private function tywutoweb(param1:Wyta) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.removeEventListener(Wyta.zat,this.tywutoweb);
         if(!param1.success_)
         {
            this.vukukyso(param1.sogedowa);
         }
         else
         {
            this.qepa();
         }
         return;
      }

      private function vukukyso(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dialog = new Dialog(I18nKeys.wohajez,param1,I18nKeys.zytiqede,null,"/guildError");
         _loc2_.addEventListener(Dialog.LEFT_BUTTON,this.fytequ);
         stage.addChild(_loc2_);
         return;
      }

      private function fytequ(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dialog = param1.currentTarget as Dialog;
         stage.removeChild(_loc2_);
         this.qepa();
         return;
      }

      private function dega(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyky.x=stage.stageWidth/2;
         this.hyky.y=550;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis,false,1);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.seqedu,false,1);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis,false);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.seqedu,false);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         return;
      }

      private function seqedu(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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

}