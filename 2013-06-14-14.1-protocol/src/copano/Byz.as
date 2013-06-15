package copano
{
   import fytalis.Panel;
   import com.company.assembleegameclient.objects.GameObject;
   import mavew.Qyryl;
   import loqaj.Lokaz;
   import com.company.assembleegameclient.objects.Player;
   import mukyrosu.Qanyduk;
   import flash.events.MouseEvent;
   import mavew.EquipmentToolTip;
   import loqaj.Voryt;
   import pilage.Tope;
   import komi.Vibemod;
   import mavew.Qyrola;
   import hivaw.Woserev;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Container;


   public class Byz extends Panel
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Byz(param1:GameObject, param2:Player, param3:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(null);
         this.owner=param1;
         this.curPlayer=param2;
         this.liboriwew=param3;
         var _loc4_:Container = param1 as Container;
         if(param1==param2||(_loc4_))
         {
            this.dymyd=true;
         }
         return;
      }

      private static const fydiw:Array = [0,0,0,0];

      private static const mygybizap:Object = {
                                                    1:[[1,0,0,1],fydiw,fydiw,[0,1,1,0]],
                                                    2:[[1,0,0,0],fydiw,fydiw,[0,1,0,0],[0,0,0,1],fydiw,fydiw,[0,0,1,0]],
                                                    3:[[1,0,0,1],fydiw,fydiw,[0,1,1,0],[1,0,0,0],fydiw,fydiw,[0,1,0,0],[0,0,0,1],fydiw,fydiw,[0,0,1,0]]
                                                    };

      private const padding:uint = 4;

      private const tykybocyj:uint = 4;

      public var owner:GameObject;

      private var tooltip:Qyryl;

      private var nogufuja:Lokaz;

      public var curPlayer:Player;

      protected var liboriwew:int;

      public var dymyd:Boolean;

      public const fykig:Qanyduk = new Qanyduk(Qyryl);

      public function hideTooltip() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tooltip)
         {
            this.tooltip.fyjyzab();
            this.tooltip=null;
            this.nogufuja=null;
         }
         return;
      }

      public function pakojef() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!stage||!this.tooltip||!this.tooltip.stage)
         {
            return;
         }
         if(this.nogufuja)
         {
            this.tooltip.fyjyzab();
            this.tooltip=null;
            this.lahan(this.nogufuja);
         }
         return;
      }

      private function hutu(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!stage)
         {
            return;
         }
         var _loc2_:Lokaz = param1.currentTarget as Lokaz;
         this.lahan(_loc2_);
         this.nogufuja=_loc2_;
         return;
      }

      private function lahan(param1:Lokaz) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         if(param1.soqugarol.itemId>0)
         {
            this.tooltip=new EquipmentToolTip(param1.soqugarol.itemId,this.curPlayer,this.owner?this.owner.objectType_:-1,this.caluno());
         }
         else
         {
            if(param1 is Voryt)
            {
               _loc2_=Tope.livowu((param1 as Voryt).itemType);
            }
            else
            {
               _loc2_=Vibemod.gurijudys;
            }
            this.tooltip=new Qyrola(3552822,10197915,null,Vibemod.hit,200,{itemType:Vibemod.girafapu(_loc2_)});
         }
         this.tooltip.pityvigim(param1);
         this.fykig.dispatch(this.tooltip);
         return;
      }

      private function caluno() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.owner==this.curPlayer)
         {
            return Woserev.CURRENT_PLAYER;
         }
         if(this.owner is Player)
         {
            return Woserev.OTHER_PLAYER;
         }
         return Woserev.NPC;
      }

      protected function ciboc(param1:Lokaz, param2:uint, param3:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.guviqejy(mygybizap[param2][param3]);
         param1.addEventListener(MouseEvent.ROLL_OVER,this.hutu);
         param1.x=int(param3%this.tykybocyj)*(Lokaz.WIDTH+this.padding);
         param1.y=int(param3/this.tykybocyj)*(Lokaz.HEIGHT+this.padding);
         addChild(param1);
         return;
      }

      public function setItems(param1:Vector.<int>, param2:int=0) : void {
         return;
      }

      public function gidohepo(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         mouseEnabled=param1;
         return;
      }

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.setItems(this.owner.zosig,this.liboriwew);
         return;
      }
   }

}