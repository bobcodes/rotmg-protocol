package vaqob
{
   import flash.display.DisplayObjectContainer;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Ficilaqes;
   import nyvubeze.PlayerMenu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Ses;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.objects.Miv;
   import flash.utils.getTimer;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.game.GameSprite;


   public class Likalet extends Panel
   {
      public function Likalet(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kazuza=new Wamysi();
         this.bacat=new Vector.<Ficilaqes>(Miv.gupulelaz,true);
         super(param1);
         this.bacat[0]=this.huhy(0,0);
         this.bacat[1]=this.huhy(100,0);
         this.bacat[2]=this.huhy(0,32);
         this.bacat[3]=this.huhy(100,32);
         this.bacat[4]=this.huhy(0,64);
         this.bacat[5]=this.huhy(100,64);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var gale:DisplayObjectContainer;

      public var kazuza:Wamysi;

      public var bacat:Vector.<Ficilaqes>;

      public var vefymyjul:Boolean;

      public var menu:PlayerMenu;

      private function huhy(param1:int, param2:int) : Ficilaqes {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Ficilaqes = null;
         _loc3_=new Ficilaqes(16777215,false,null);
         addChild(_loc3_);
         _loc3_.x=param1;
         _loc3_.y=param2;
         return _loc3_;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Ficilaqes = null;
         for each (_loc2_ in this.bacat)
         {
            _loc2_.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            _loc2_.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Ficilaqes = null;
         this.vofub();
         for each (_loc2_ in this.bacat)
         {
            _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            _loc2_.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!(this.menu==null)&&!(this.menu.parent==null))
         {
            return;
         }
         var _loc2_:Ficilaqes = param1.currentTarget as Ficilaqes;
         var _loc3_:Player = _loc2_.go as Player;
         if(_loc3_==null||_loc3_.texture_==null)
         {
            return;
         }
         this.vefymyjul=true;
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vefymyjul=false;
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vofub();
         var _loc2_:Ficilaqes = param1.currentTarget as Ficilaqes;
         _loc2_.setEnabled(false);
         this.menu=this.kazuza.create(gs_,_loc2_.go as Player);
         this.gale.addChild(this.menu);
         this.menu.addEventListener(Event.REMOVED_FROM_STAGE,this.tocizyqo);
         return;
      }

      private function tocizyqo(param1:Event) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Ses = null;
         var _loc3_:Ficilaqes = null;
         for each (_loc2_ in this.bacat)
         {
            _loc3_=_loc2_ as Ficilaqes;
            if(_loc3_)
            {
               _loc3_.setEnabled(true);
            }
         }
         param1.currentTarget.removeEventListener(Event.REMOVED_FROM_STAGE,this.tocizyqo);
         return;
      }

      private function vofub() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.menu!=null)
         {
            if(this.menu.parent!=null)
            {
               this.menu.parent.removeChild(this.menu);
            }
            this.menu=null;
         }
         return;
      }

      override public function draw() : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:Ses = null;
         var _loc5_:Player = null;
         var _loc6_:ColorTransform = null;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc1_:Miv = gs_.map.party_;
         if(_loc1_==null)
         {
            for each (_loc4_ in this.bacat)
            {
               _loc4_.clear();
            }
            return;
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_<Miv.gupulelaz)
         {
            if((this.vefymyjul)||!(this.menu==null)&&!(this.menu.parent==null))
            {
               _loc5_=this.bacat[_loc3_].go as Player;
            }
            else
            {
               _loc5_=_loc1_.cotehic[_loc3_];
            }
            if(!(_loc5_==null)&&_loc5_.map_==null)
            {
               _loc5_=null;
            }
            _loc6_=null;
            if(_loc5_!=null)
            {
               if(_loc5_.ryqi<_loc5_.ruguj*0.2)
               {
                  _loc2_=getTimer();
                  _loc7_=int(Math.abs(Math.sin(_loc2_/200))*10)/10;
                  _loc8_=128;
                  _loc6_=new ColorTransform(1,1,1,1,_loc7_*_loc8_,-_loc7_*_loc8_,-_loc7_*_loc8_);
               }
               if(!_loc5_.starred_)
               {
                  if(_loc6_!=null)
                  {
                     _loc6_.concat(MoreColorUtil.gejuk);
                  }
                  else
                  {
                     _loc6_=MoreColorUtil.gejuk;
                  }
               }
            }
            this.bacat[_loc3_].draw(_loc5_,_loc6_);
            _loc3_++;
         }
         return;
      }
   }

}