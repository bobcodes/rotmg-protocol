package com.company.assembleegameclient.tutorial
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import flash.events.Event;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.getTimer;
   import flash.filters.BlurFilter;
   import com.company.util.PointUtil;
   import flash.display.Graphics;
   import kabam.rotmg.assets.Bulamelu;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Tutorial extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tutorial(param1:GameSprite) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:XML = null;
         var _loc3_:Graphics = null;
         this.wipyh=new Vector.<Step>();
         this.cazepoj=new Sprite();
         this.hitizuge=new Shape();
         this.papawu=new Shape();
         super();
         this.gs_=param1;
         for each (_loc2_ in Bulamelu.noqyvyl.Step)
         {
            this.wipyh.push(new Step(_loc2_));
         }
         addChild(this.hitizuge);
         addChild(this.papawu);
         _loc3_=this.cazepoj.graphics;
         _loc3_.clear();
         _loc3_.beginFill(0,0.1);
         _loc3_.drawRect(0,0,800,600);
         _loc3_.endFill();
         Parameters.data_.needsTutorial=false;
         Parameters.save();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const mefygur:String = "Next";

      public static const zygy:String = "MoveForward";

      public static const sedo:String = "MoveBackward";

      public static const sawag:String = "RotateLeft";

      public static const qasana:String = "RotateRight";

      public static const tulyhi:String = "MoveLeft";

      public static const nuf:String = "MoveRight";

      public static const lugelo:String = "Update";

      public static const wil:String = "Attack";

      public static const bes:String = "Damage";

      public static const dogoryb:String = "Kill";

      public static const hacifiq:String = "ShowLoot";

      public static const jybizuly:String = "Text";

      public static const rufi:String = "ShowPortal";

      public static const daveny:String = "EnterPortal";

      public static const zydozus:String = "Near";

      public static const motagod:String = "Equip";

      public var gs_:GameSprite;

      public var wipyh:Vector.<Step>;

      public var rewelany:int = 0;

      private var cazepoj:Sprite;

      private var hitizuge:Shape;

      private var papawu:Shape;

      private var dim:Qaheqiqi = null;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.draw();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }



      function doneAction(param1:String) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc3_:Requirement = null;
         var _loc4_:Player = null;
         var _loc5_:* = false;
         var _loc6_:GameObject = null;
         var _loc7_:* = NaN;
         if(this.rewelany>=this.wipyh.length)
         {
            return;
         }
         var _loc2_:Step = this.wipyh[this.rewelany];
         if(param1!=_loc2_.action_)
         {
            return;
         }
         for each (_loc3_ in _loc2_.himonad)
         {
            _loc4_=this.gs_.map.player_;
            switch(_loc3_.type_)
            {
               case zydozus:
                  _loc5_=false;
                  for each (_loc6_ in this.gs_.map.goDict_)
                  {
                     if(_loc6_.objectType_!=_loc3_.objectType_)
                     {
                     }
                     else
                     {
                        _loc7_=PointUtil.nybomof(_loc6_.x_,_loc6_.y_,_loc4_.x_,_loc4_.y_);
                        if(_loc7_<=_loc3_.radius_)
                        {
                           _loc5_=true;
                           break;
                        }
                     }
                  }
                  if(!_loc5_)
                  {
                     return;
                  }
                  break;
               case motagod:
                  if(_loc4_.zosig[_loc3_.wip]!=_loc3_.objectType_)
                  {
                     return;
                  }
                  break;
            }
         }
         this.rewelany++;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc3_:UIDrawBox = null;
         return;
      }
   }

}