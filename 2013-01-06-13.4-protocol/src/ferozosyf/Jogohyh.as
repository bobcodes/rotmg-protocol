package ferozosyf
{
[CLASS475]   import warude.Panel;
   import com.company.assembleegameclient.objects.GameObject;
   import pigeguwo.Jazyv;
   import daloraf.Fiboqumag;
   import com.company.assembleegameclient.objects.Player;
   import tinava.Dab;
   import flash.events.MouseEvent;
   import pigeguwo.EquipmentToolTip;
   import daloraf.Dyge;
   import kuzycyw.Mygisyqoc;
   import haqakel.Kefyfa;
   import pigeguwo.Mefu;
   import zohom.Jenag;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Container;


   public class Jogohyh extends Panel
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jogohyh(param1:GameObject, param2:Player, param3:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(null);
         this.owner=param1;
         this.curPlayer=param2;
         this.nivydyh=param3;
         var _loc4_:Container = param1 as Container;
         if(param1==param2||(_loc4_))
         {
            this.vaq=true;
         }
         return;
      }

      private static const hezakik:Array = [0,0,0,0];

      private static const hoduvoc:Object = {
                                                  1:[[1,0,0,1],hezakik,hezakik,[0,1,1,0]],
                                                  2:[[1,0,0,0],hezakik,hezakik,[0,1,0,0],[0,0,0,1],hezakik,hezakik,[0,0,1,0]],
                                                  3:[[1,0,0,1],hezakik,hezakik,[0,1,1,0],[1,0,0,0],hezakik,hezakik,[0,1,0,0],[0,0,0,1],hezakik,hezakik,[0,0,1,0]]
                                                  };

      private const padding:uint = 4;

      private const gysemesef:uint = 4;

      public var owner:GameObject;

      private var tooltip:Jazyv;

      private var rykoh:Fiboqumag;

      public var curPlayer:Player;

      protected var nivydyh:int;

      public var vaq:Boolean;

      public const nanopemek:Dab = new Dab(Jazyv);

      public function hideTooltip() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tooltip)
         {
            this.tooltip.gyqihib();
            this.tooltip=null;
            this.rykoh=null;
         }
         return;
      }

      public function dotu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!stage||!this.tooltip||!this.tooltip.stage)
         {
            return;
         }
         if(this.rykoh)
         {
            this.tooltip.gyqihib();
            this.tooltip=null;
            this.nodeqosa(this.rykoh);
         }
         return;
      }

      private function gufol(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!stage)
         {
            return;
         }
         var _loc2_:Fiboqumag = param1.currentTarget as Fiboqumag;
         this.nodeqosa(_loc2_);
         this.rykoh=_loc2_;
         return;
      }

      private function nodeqosa(param1:Fiboqumag) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         if(param1.cawiluz.itemId>0)
         {
            this.tooltip=new EquipmentToolTip(param1.cawiluz.itemId,this.curPlayer,this.owner?this.owner.objectType_:-1,this.viminici());
         }
         else
         {
            if(param1 is Dyge)
            {
               _loc2_=Mygisyqoc.rukeqa((param1 as Dyge).itemType);
            }
            else
            {
               _loc2_=Kefyfa.wajybesas;
            }
            this.tooltip=new Mefu(3552822,10197915,null,Kefyfa.wohezeduq,200,{itemType:Kefyfa.zori(_loc2_)});
         }
         this.tooltip.quzefobaj(param1);
         this.nanopemek.dispatch(this.tooltip);
         return;
      }

      private function viminici() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.owner==this.curPlayer)
         {
            return Jenag.CURRENT_PLAYER;
         }
         if(this.owner is Player)
         {
            return Jenag.OTHER_PLAYER;
         }
         return Jenag.NPC;
      }

      protected function wozuvis(param1:Fiboqumag, param2:uint, param3:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.qafu(hoduvoc[param2][param3]);
         param1.addEventListener(MouseEvent.ROLL_OVER,this.gufol);
         param1.x=int(param3%this.gysemesef)*(Fiboqumag.WIDTH+this.padding);
         param1.y=int(param3/this.gysemesef)*(Fiboqumag.HEIGHT+this.padding);
         addChild(param1);
         return;
      }

      public function setItems(param1:Vector.<int>, param2:int=0) : void {
         return;
      }

      public function denebohy(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         mouseEnabled=param1;
         return;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.setItems(this.owner.wasidu,this.nivydyh);
         return;
      }
   }
[/CLASS]
}