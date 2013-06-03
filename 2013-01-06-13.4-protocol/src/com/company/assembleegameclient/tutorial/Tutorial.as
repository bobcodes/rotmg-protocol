package com.company.assembleegameclient.tutorial
{
[CLASS865]   import flash.display.Sprite;
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
   import kabam.rotmg.assets.Pyt;
   import aaa.Parameters;


   public class Tutorial extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tutorial(param1:GameSprite) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:XML = null;
         var _loc3_:Graphics = null;
         this.wygeziloc=new Vector.<Step>();
         this.nykezyhac=new Sprite();
         this.selejevy=new Shape();
         this.waqosi=new Shape();
         super();
         this.gs_=param1;
         for each (_loc2_ in Pyt.tykizyb.Step)
         {
            this.wygeziloc.push(new Step(_loc2_));
         }
         addChild(this.selejevy);
         addChild(this.waqosi);
         _loc3_=this.nykezyhac.graphics;
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

      public static const lew:String = "Next";

      public static const bowo:String = "MoveForward";

      public static const dyjis:String = "MoveBackward";

      public static const cis:String = "RotateLeft";

      public static const wofywebon:String = "RotateRight";

      public static const nuji:String = "MoveLeft";

      public static const fazizugu:String = "MoveRight";

      public static const jyrucelyd:String = "Update";

      public static const jybi:String = "Attack";

      public static const kogalecy:String = "Damage";

      public static const nonituzo:String = "Kill";

      public static const luparaniv:String = "ShowLoot";

      public static const zequj:String = "Text";

      public static const gomyquru:String = "ShowPortal";

      public static const nemeficiv:String = "EnterPortal";

      public static const lel:String = "Near";

      public static const myvuhyhos:String = "Equip";

      public var gs_:GameSprite;

      public var wygeziloc:Vector.<Step>;

      public var qycefaku:int = 0;

      private var nykezyhac:Sprite;

      private var selejevy:Shape;

      private var waqosi:Shape;

      private var tasy:Kynit = null;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.draw();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc4_:Step = null;
         var _loc5_:* = false;
         var _loc6_:Requirement = null;
         var _loc7_:* = 0;
         var _loc8_:UIDrawBox = null;
         var _loc9_:UIDrawArrow = null;
         var _loc10_:Player = null;
         var _loc11_:* = false;
         var _loc12_:GameObject = null;
         var _loc13_:* = NaN;
         var _loc2_:Number = Math.abs(Math.sin(getTimer()/300));
         this.selejevy.filters=[new BlurFilter(5+_loc2_*5,5+_loc2_*5)];
         this.waqosi.graphics.clear();
         this.selejevy.graphics.clear();
         var _loc3_:* = 0;
         while(_loc3_<this.wygeziloc.length)
         {
            _loc4_=this.wygeziloc[_loc3_];
            _loc5_=true;
            for each (_loc6_ in _loc4_.wesifaki)
            {
               _loc10_=this.gs_.map.player_;
               switch(_loc6_.type_)
               {
                  case lel:
                     _loc11_=false;
                     for each (_loc12_ in this.gs_.map.goDict_)
                     {
                        if(!(_loc12_.objectType_==_loc6_.objectType_)||!(_loc6_.jot=="")&&!(_loc12_.name_==_loc6_.jot))
                        {
                        }
                        else
                        {
                           _loc13_=PointUtil.kijuvaq(_loc12_.x_,_loc12_.y_,_loc10_.x_,_loc10_.y_);
                           if(_loc13_<=_loc6_.radius_)
                           {
                              _loc11_=true;
                              break;
                           }
                        }
                     }
                     if(!_loc11_)
                     {
                        _loc5_=false;
                     }
                     break;
               }
            }
            if(!_loc5_)
            {
               _loc4_.zimaveqy=0;
            }
            else
            {
               if(_loc4_.zimaveqy==0)
               {
                  _loc4_.zimaveqy=getTimer();
               }
               _loc7_=getTimer()-_loc4_.zimaveqy;
               for each (_loc8_ in _loc4_.vypa)
               {
                  _loc8_.draw(5*_loc2_,this.waqosi.graphics,_loc7_);
                  _loc8_.draw(6*_loc2_,this.selejevy.graphics,_loc7_);
               }
               for each (_loc9_ in _loc4_.byzyto)
               {
                  _loc9_.draw(5*_loc2_,this.waqosi.graphics,_loc7_);
                  _loc9_.draw(6*_loc2_,this.selejevy.graphics,_loc7_);
               }
            }
            _loc3_++;
         }
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
         if(this.qycefaku>=this.wygeziloc.length)
         {
            return;
         }
         var _loc2_:Step = this.wygeziloc[this.qycefaku];
         if(param1!=_loc2_.action_)
         {
            return;
         }
         for each (_loc3_ in _loc2_.wesifaki)
         {
            _loc4_=this.gs_.map.player_;
            switch(_loc3_.type_)
            {
               case lel:
                  _loc5_=false;
                  for each (_loc6_ in this.gs_.map.goDict_)
                  {
                     if(_loc6_.objectType_!=_loc3_.objectType_)
                     {
                     }
                     else
                     {
                        _loc7_=PointUtil.kijuvaq(_loc6_.x_,_loc6_.y_,_loc4_.x_,_loc4_.y_);
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
               case myvuhyhos:
                  if(_loc4_.wasidu[_loc3_.basyfugud]!=_loc3_.objectType_)
                  {
                     return;
                  }
                  break;
            }
         }
         this.qycefaku++;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc3_:UIDrawBox = null;
         return;
      }
   }
[/CLASS]
}