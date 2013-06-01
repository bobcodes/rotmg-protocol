package suko
{
   import vaqob.Panel;
   import com.company.assembleegameclient.objects.GameObject;
   import povopito.Ryduwi;
   import hedewi.Zyciwu;
   import com.company.assembleegameclient.objects.Player;
   import tulunyno.Hugyqufyq;
   import flash.events.MouseEvent;
   import povopito.EquipmentToolTip;
   import hedewi.Huqelur;
   import pirus.Vimaz;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Jodehozut;
   import tys.Febij;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Container;


   public class Rerapipy extends Panel
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rerapipy(param1:GameObject, param2:Player, param3:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super(null);
         this.owner=param1;
         this.curPlayer=param2;
         this.sud=param3;
         var _loc4_:Container = param1 as Container;
         if(param1==param2||(_loc4_))
         {
            this.kacubuhu=true;
         }
         return;
      }

      private static const hokedokep:Array = [0,0,0,0];

      private static const mocyry:Object = {
                                                 1:[[1,0,0,1],hokedokep,hokedokep,[0,1,1,0]],
                                                 2:[[1,0,0,0],hokedokep,hokedokep,[0,1,0,0],[0,0,0,1],hokedokep,hokedokep,[0,0,1,0]],
                                                 3:[[1,0,0,1],hokedokep,hokedokep,[0,1,1,0],[1,0,0,0],hokedokep,hokedokep,[0,1,0,0],[0,0,0,1],hokedokep,hokedokep,[0,0,1,0]]
                                                 };

      private const padding:uint = 4;

      private const sabiqe:uint = 4;

      public var owner:GameObject;

      private var tooltip:Ryduwi;

      private var woguwewy:Zyciwu;

      public var curPlayer:Player;

      protected var sud:int;

      public var kacubuhu:Boolean;

      public const cybat:Hugyqufyq = new Hugyqufyq(Ryduwi);

      public function hideTooltip() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tooltip)
         {
            this.tooltip.wehovafut();
            this.tooltip=null;
            this.woguwewy=null;
         }
         return;
      }

      public function qenabus() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!stage||!this.tooltip||!this.tooltip.stage)
         {
            return;
         }
         if(this.woguwewy)
         {
            this.tooltip.wehovafut();
            this.tooltip=null;
            this.gosaruka(this.woguwewy);
         }
         return;
      }

      private function debyt(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!stage)
         {
            return;
         }
         var _loc2_:Zyciwu = param1.currentTarget as Zyciwu;
         this.gosaruka(_loc2_);
         this.woguwewy=_loc2_;
         return;
      }

      private function gosaruka(param1:Zyciwu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         if(param1.cyjop.itemId>0)
         {
            this.tooltip=new EquipmentToolTip(param1.cyjop.itemId,this.curPlayer,this.owner?this.owner.objectType_:-1,this.towu());
         }
         else
         {
            if(param1 is Huqelur)
            {
               _loc2_=Vimaz.bijam((param1 as Huqelur).itemType);
            }
            else
            {
               _loc2_=I18nKeys.dumesodi;
            }
            this.tooltip=new Jodehozut(3552822,10197915,null,I18nKeys.jiwava,200,{itemType:I18nKeys.rybet(_loc2_)});
         }
         this.tooltip.saqazuqebu(param1);
         this.cybat.dispatch(this.tooltip);
         return;
      }

      private function towu() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.owner==this.curPlayer)
         {
            return Febij.CURRENT_PLAYER;
         }
         if(this.owner is Player)
         {
            return Febij.OTHER_PLAYER;
         }
         return Febij.NPC;
      }

      protected function roteqaso(param1:Zyciwu, param2:uint, param3:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.tizyf(mocyry[param2][param3]);
         param1.addEventListener(MouseEvent.ROLL_OVER,this.debyt);
         param1.x=int(param3%this.sabiqe)*(Zyciwu.WIDTH+this.padding);
         param1.y=int(param3/this.sabiqe)*(Zyciwu.HEIGHT+this.padding);
         addChild(param1);
         return;
      }

      public function setItems(param1:Vector.<int>, param2:int=0) : void {
         return;
      }

      public function vyryvoco(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         mouseEnabled=param1;
         return;
      }

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.setItems(this.owner.jevuqike,this.sud);
         return;
      }
   }

}