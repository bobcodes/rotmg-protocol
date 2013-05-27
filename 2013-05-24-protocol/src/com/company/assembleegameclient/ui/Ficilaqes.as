package com.company.assembleegameclient.ui
{
   import tekoh.Gemanyq;
   import tekoh.Zukot;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import povopito.PlayerToolTip;
   import com.company.assembleegameclient.objects.Player;
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import raqu.Hujuhy;
   import raqu.Goq;


   public class Ficilaqes extends Ses implements Gemanyq
   {
      public function Ficilaqes(param1:uint, param2:Boolean, param3:GameObject) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super(param1,param2,param3);
         var _loc4_:Player = param3 as Player;
         if(_loc4_)
         {
            this.hamy=_loc4_.starred_;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public const piwawawiw:Zukot = new Zukot();

      private var enabled:Boolean = true;

      private var hamy:Boolean = false;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.piwawawiw.kol(this);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.tooltip=this.enabled?new PlayerToolTip(Player(go)):null;
         return;
      }

      public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.enabled!=param1)
         {
            this.enabled=param1;
            this.piwawawiw.tooltip=this.enabled?new PlayerToolTip(Player(go)):null;
            if(!this.enabled)
            {
               this.piwawawiw.nivinupo().dispatch(this.piwawawiw.tooltip);
            }
         }
         return;
      }

      override public function draw(param1:GameObject, param2:ColorTransform=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Player = param1 as Player;
         if((_loc3_)&&!(this.hamy==_loc3_.starred_))
         {
            transform.colorTransform=(param2)||(MoreColorUtil.identity);
            this.hamy=_loc3_.starred_;
         }
         super.draw(param1,param2);
         return;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.piwawawiw.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwawawiw.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.piwawawiw.wab();
      }
   }

}