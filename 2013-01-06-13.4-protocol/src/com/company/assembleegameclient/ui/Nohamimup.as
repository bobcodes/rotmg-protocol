package com.company.assembleegameclient.ui
{
[CLASS1163]   import viky.Wihury;
   import viky.Hoselyfov;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import pigeguwo.PlayerToolTip;
   import com.company.assembleegameclient.objects.Player;
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import dutes.Zevazogo;
   import dutes.Soz;


   public class Nohamimup extends Semytuqa implements Wihury
   {
      public function Nohamimup(param1:uint, param2:Boolean, param3:GameObject) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1,param2,param3);
         var _loc4_:Player = param3 as Player;
         if(_loc4_)
         {
            this.citoh=_loc4_.starred_;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public const tuhucysys:Hoselyfov = new Hoselyfov();

      private var enabled:Boolean = true;

      private var citoh:Boolean = false;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.tuhucysys.mosajo(this);
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
         this.tuhucysys.tooltip=this.enabled?new PlayerToolTip(Player(go)):null;
         return;
      }

      public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.enabled!=param1)
         {
            this.enabled=param1;
            this.tuhucysys.tooltip=this.enabled?new PlayerToolTip(Player(go)):null;
            if(!this.enabled)
            {
               this.tuhucysys.gorycici().dispatch(this.tuhucysys.tooltip);
            }
         }
         return;
      }

      override public function draw(param1:GameObject, param2:ColorTransform=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Player = param1 as Player;
         if((_loc3_)&&!(this.citoh==_loc3_.starred_))
         {
            transform.colorTransform=(param2)||(MoreColorUtil.identity);
            this.citoh=_loc3_.starred_;
         }
         super.draw(param1,param2);
         return;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }
   }
[/CLASS]
}