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
   import kabam.rotmg.assets.Cibukaz;
   import aaa.rotmg.config.UserConfig;


   public class Tutorial extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tutorial(param1:GameSprite) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:Graphics = null;
         this.paqil=new Vector.<Step>();
         this.daf=new Sprite();
         this.quloper=new Shape();
         this.qygut=new Shape();
         super();
         this.gs_=param1;
         for each (_loc2_ in Cibukaz.zenyho.Step)
         {
            this.paqil.push(new Step(_loc2_));
         }
         addChild(this.quloper);
         addChild(this.qygut);
         _loc3_=this.daf.graphics;
         _loc3_.clear();
         _loc3_.beginFill(0,0.1);
         _loc3_.drawRect(0,0,800,600);
         _loc3_.endFill();
         UserConfig.data_.needsTutorial=false;
         UserConfig.save();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const nibudo:String = "Next";

      public static const wosegin:String = "MoveForward";

      public static const qamy:String = "MoveBackward";

      public static const tiq:String = "RotateLeft";

      public static const vun:String = "RotateRight";

      public static const rukirivu:String = "MoveLeft";

      public static const wywyw:String = "MoveRight";

      public static const tob:String = "Update";

      public static const gepud:String = "Attack";

      public static const muhadu:String = "Damage";

      public static const zok:String = "Kill";

      public static const mipobi:String = "ShowLoot";

      public static const kyqovak:String = "Text";

      public static const vaniz:String = "ShowPortal";

      public static const duz:String = "EnterPortal";

      public static const femab:String = "Near";

      public static const maqyz:String = "Equip";

      public var gs_:GameSprite;

      public var paqil:Vector.<Step>;

      public var zamytami:int = 0;

      private var daf:Sprite;

      private var quloper:Shape;

      private var qygut:Shape;

      private var seceq:Wyzinesab = null;

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
         this.quloper.filters=[new BlurFilter(5+_loc2_*5,5+_loc2_*5)];
         this.qygut.graphics.clear();
         this.quloper.graphics.clear();
         var _loc3_:* = 0;
         while(_loc3_<this.paqil.length)
         {
            _loc4_=this.paqil[_loc3_];
            _loc5_=true;
            for each (_loc6_ in _loc4_.beqa)
            {
               _loc10_=this.gs_.map.player_;
               switch(_loc6_.type_)
               {
                  case femab:
                     _loc11_=false;
                     for each (_loc12_ in this.gs_.map.goDict_)
                     {
                        if(!(_loc12_.objectType_==_loc6_.objectType_)||!(_loc6_.jetajy=="")&&!(_loc12_.name_==_loc6_.jetajy))
                        {
                        }
                        else
                        {
                           _loc13_=PointUtil.picetyl(_loc12_.x_,_loc12_.y_,_loc10_.x_,_loc10_.y_);
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
               _loc4_.cosa=0;
            }
            else
            {
               if(_loc4_.cosa==0)
               {
                  _loc4_.cosa=getTimer();
               }
               _loc7_=getTimer()-_loc4_.cosa;
               for each (_loc8_ in _loc4_.rajeso)
               {
                  _loc8_.draw(5*_loc2_,this.qygut.graphics,_loc7_);
                  _loc8_.draw(6*_loc2_,this.quloper.graphics,_loc7_);
               }
               for each (_loc9_ in _loc4_.lozed)
               {
                  _loc9_.draw(5*_loc2_,this.qygut.graphics,_loc7_);
                  _loc9_.draw(6*_loc2_,this.quloper.graphics,_loc7_);
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
         if(this.zamytami>=this.paqil.length)
         {
            return;
         }
         var _loc2_:Step = this.paqil[this.zamytami];
         if(param1!=_loc2_.action_)
         {
            return;
         }
         for each (_loc3_ in _loc2_.beqa)
         {
            _loc4_=this.gs_.map.player_;
            switch(_loc3_.type_)
            {
               case femab:
                  _loc5_=false;
                  for each (_loc6_ in this.gs_.map.goDict_)
                  {
                     if(_loc6_.objectType_!=_loc3_.objectType_)
                     {
                     }
                     else
                     {
                        _loc7_=PointUtil.picetyl(_loc6_.x_,_loc6_.y_,_loc4_.x_,_loc4_.y_);
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
               case maqyz:
                  if(_loc4_.jevuqike[_loc3_.vig]!=_loc3_.objectType_)
                  {
                     return;
                  }
                  break;
            }
         }
         this.zamytami++;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc3_:UIDrawBox = null;
         return;
      }
   }

}