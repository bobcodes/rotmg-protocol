package warude
{
[CLASS567]   import flash.display.DisplayObjectContainer;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Nohamimup;
   import sybyzowo.PlayerMenu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Semytuqa;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.objects.Vevobeb;
   import flash.utils.getTimer;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.game.GameSprite;


   public class Gahipe extends Panel
   {
      public function Gahipe(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.guv=new Rasifo();
         this.paca=new Vector.<Nohamimup>(Vevobeb.myjeret,true);
         super(param1);
         this.paca[0]=this.tapobowyj(0,0);
         this.paca[1]=this.tapobowyj(100,0);
         this.paca[2]=this.tapobowyj(0,32);
         this.paca[3]=this.tapobowyj(100,32);
         this.paca[4]=this.tapobowyj(0,64);
         this.paca[5]=this.tapobowyj(100,64);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var wijope:DisplayObjectContainer;

      public var guv:Rasifo;

      public var paca:Vector.<Nohamimup>;

      public var dupo:Boolean;

      public var menu:PlayerMenu;

      private function tapobowyj(param1:int, param2:int) : Nohamimup {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Nohamimup = null;
         _loc3_=new Nohamimup(16777215,false,null);
         addChild(_loc3_);
         _loc3_.x=param1;
         _loc3_.y=param2;
         return _loc3_;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Nohamimup = null;
         for each (_loc2_ in this.paca)
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
         var _loc2_:Nohamimup = null;
         this.kerepu();
         for each (_loc2_ in this.paca)
         {
            _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            _loc2_.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!(this.menu==null)&&!(this.menu.parent==null))
         {
            return;
         }
         var _loc2_:Nohamimup = param1.currentTarget as Nohamimup;
         var _loc3_:Player = _loc2_.go as Player;
         if(_loc3_==null||_loc3_.texture_==null)
         {
            return;
         }
         this.dupo=true;
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dupo=false;
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kerepu();
         var _loc2_:Nohamimup = param1.currentTarget as Nohamimup;
         _loc2_.setEnabled(false);
         this.menu=this.guv.create(gs_,_loc2_.go as Player);
         this.wijope.addChild(this.menu);
         this.menu.addEventListener(Event.REMOVED_FROM_STAGE,this.zatareta);
         return;
      }

      private function zatareta(param1:Event) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Semytuqa = null;
         var _loc3_:Nohamimup = null;
         for each (_loc2_ in this.paca)
         {
            _loc3_=_loc2_ as Nohamimup;
            if(_loc3_)
            {
               _loc3_.setEnabled(true);
            }
         }
         param1.currentTarget.removeEventListener(Event.REMOVED_FROM_STAGE,this.zatareta);
         return;
      }

      private function kerepu() : void {
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
         var _loc4_:Semytuqa = null;
         var _loc5_:Player = null;
         var _loc6_:ColorTransform = null;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc1_:Vevobeb = gs_.map.party_;
         if(_loc1_==null)
         {
            for each (_loc4_ in this.paca)
            {
               _loc4_.clear();
            }
            return;
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_<Vevobeb.myjeret)
         {
            if((this.dupo)||!(this.menu==null)&&!(this.menu.parent==null))
            {
               _loc5_=this.paca[_loc3_].go as Player;
            }
            else
            {
               _loc5_=_loc1_.cica[_loc3_];
            }
            if(!(_loc5_==null)&&_loc5_.map_==null)
            {
               _loc5_=null;
            }
            _loc6_=null;
            if(_loc5_!=null)
            {
               if(_loc5_.qyhefanyk<_loc5_.liq*0.2)
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
                     _loc6_.concat(MoreColorUtil.vakowin);
                  }
                  else
                  {
                     _loc6_=MoreColorUtil.vakowin;
                  }
               }
            }
            this.paca[_loc3_].draw(_loc5_,_loc6_);
            _loc3_++;
         }
         return;
      }
   }
[/CLASS]
}