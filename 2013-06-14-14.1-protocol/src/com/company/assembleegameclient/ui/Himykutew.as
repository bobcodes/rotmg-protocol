package com.company.assembleegameclient.ui
{
   import gafuvy.Pywafejer;
   import gafuvy.Qyvuw;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mavew.PlayerToolTip;
   import com.company.assembleegameclient.objects.Player;
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;


   public class Himykutew extends Nyre implements Pywafejer
   {
      public function Himykutew(param1:uint, param2:Boolean, param3:GameObject) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super(param1,param2,param3);
         var _loc4_:Player = param3 as Player;
         if(_loc4_)
         {
            this.havewyna=_loc4_.starred_;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public const debamipop:Qyvuw = new Qyvuw();

      private var enabled:Boolean = true;

      private var havewyna:Boolean = false;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.debamipop.lubec(this);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop.tooltip=this.enabled?new PlayerToolTip(Player(go)):null;
         return;
      }

      public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.enabled!=param1)
         {
            this.enabled=param1;
            this.debamipop.tooltip=this.enabled?new PlayerToolTip(Player(go)):null;
            if(!this.enabled)
            {
               this.debamipop.fifelap().dispatch(this.debamipop.tooltip);
            }
         }
         return;
      }

      override public function draw(param1:GameObject, param2:ColorTransform=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Player = param1 as Player;
         if((_loc3_)&&!(this.havewyna==_loc3_.starred_))
         {
            transform.colorTransform=(param2)||(MoreColorUtil.identity);
            this.havewyna=_loc3_.starred_;
         }
         super.draw(param1,param2);
         return;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.debamipop.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.debamipop.wuducocac();
      }
   }

}