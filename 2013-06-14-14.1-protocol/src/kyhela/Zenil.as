package kyhela
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Pajemiz;
   import waryp.Nulejufyl;
   import com.company.assembleegameclient.objects.Player;
   import huv.Tamyte;
   import vysob.Dialog;
   import komi.Vibemod;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import com.company.rotmg.graphics.ScreenGraphic;
   import flash.text.TextFieldAutoSize;
   import hivysif.Guzowoja;


   public class Zenil extends Sprite
   {
      public function Zenil(param1:Pajemiz) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.gs_=param1;
         graphics.clear();
         graphics.beginFill(2829099,0.8);
         graphics.drawRect(0,0,800,600);
         graphics.endFill();
         addChild(this.container=new Sprite());
         this.cazed();
         addChild(new ScreenGraphic());
         this.jehele=new Nulejufyl(Vibemod.cacuta,36,false);
         this.jehele.setAutoSize(TextFieldAutoSize.CENTER);
         this.jehele.setVerticalAlign(Guzowoja.MIDDLE);
         this.jehele.addEventListener(MouseEvent.CLICK,this.wyma);
         addChild(this.jehele);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var gs_:Pajemiz;

      private var container:Sprite;

      private var dilum:GuildPlayerList;

      private var jehele:Nulejufyl;

      private function cazed() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.dilum)&&(this.dilum.parent))
         {
            this.container.removeChild(this.dilum);
         }
         var _loc1_:Player = this.gs_.map.player_;
         this.dilum=new GuildPlayerList(50,0,_loc1_==null?"":_loc1_.name_,_loc1_.guildRank_);
         this.dilum.addEventListener(Muve.SET_RANK,this.tevigi);
         this.dilum.addEventListener(Muve.REMOVE_MEMBER,this.dagaju);
         this.container.addChild(this.dilum);
         return;
      }

      private function ziwegup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dilum.removeEventListener(Muve.SET_RANK,this.tevigi);
         this.dilum.removeEventListener(Muve.REMOVE_MEMBER,this.dagaju);
         this.container.removeChild(this.dilum);
         this.dilum=null;
         return;
      }

      private function tevigi(param1:Muve) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ziwegup();
         this.gs_.addEventListener(Tamyte.bobyledu,this.qivezu);
         this.gs_.gsc_.changeGuildRank(param1.name_,param1.hezymyv);
         return;
      }

      private function qivezu(param1:Tamyte) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.removeEventListener(Tamyte.bobyledu,this.qivezu);
         if(!param1.success_)
         {
            this.cedocy(param1.hosel);
         }
         else
         {
            this.cazed();
         }
         return;
      }

      private function dagaju(param1:Muve) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ziwegup();
         this.gs_.addEventListener(Tamyte.bobyledu,this.pusetygo);
         this.gs_.gsc_.guildRemove(param1.name_);
         return;
      }

      private function pusetygo(param1:Tamyte) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.removeEventListener(Tamyte.bobyledu,this.pusetygo);
         if(!param1.success_)
         {
            this.cedocy(param1.hosel);
         }
         else
         {
            this.cazed();
         }
         return;
      }

      private function cedocy(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dialog = new Dialog(Vibemod.hujyp,param1,Vibemod.fulypubew,null,"/guildError");
         _loc2_.addEventListener(Dialog.LEFT_BUTTON,this.curidoco);
         stage.addChild(_loc2_);
         return;
      }

      private function curidoco(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dialog = param1.currentTarget as Dialog;
         stage.removeChild(_loc2_);
         this.cazed();
         return;
      }

      private function wyma(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jehele.x=stage.stageWidth/2;
         this.jehele.y=550;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv,false,1);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.luw,false,1);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv,false);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.luw,false);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         return;
      }

      private function luw(param1:KeyboardEvent) : void {
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