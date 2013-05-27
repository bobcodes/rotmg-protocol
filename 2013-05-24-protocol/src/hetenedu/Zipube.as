package hetenedu
{
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import povopito.Nylipabo;
   import nyvubeze.Favequtu;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.map.Wuwa;
   import com.company.util.AssetLibrary;
   import flash.geom.ColorTransform;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.company.assembleegameclient.map.Qezab;
   import flash.display.Graphics;
   import com.company.util.PointUtil;
   import com.company.assembleegameclient.objects.Character;
   import com.company.assembleegameclient.objects.Portal;
   import com.company.assembleegameclient.objects.GuildHallPortal;
   import com.company.util.Ryhar;
   import aaa.rotmg.config.UserConfig;


   public class Zipube extends Noriqidir
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zipube(param1:int, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wanarymu=new Vector.<Number>();
         this.nikyteto=new Matrix();
         this.situp=new Matrix();
         this.focinidu=new Vector.<Player>();
         this.nezewacy=new Point();
         super();
         this.fugyf=param1;
         this._height=param2;
         this.watyveku();
         this.gyp();
         return;
      }

      public static const zogon:int = 5*5;

      private static var komepofo:Dictionary = new Dictionary();

      public static function fece(param1:GameObject) : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = param1.objectType_;
         if(!komepofo.hasOwnProperty(_loc2_))
         {
            komepofo[_loc2_]=param1.getColor();
         }
         return komepofo[_loc2_];
      }

      public var fugyf:int;

      public var _height:int;

      public var jezinut:int = 0;

      public var catebyqic:Rectangle;

      public var active:Boolean = true;

      public var fafafiwo:Point;

      public var kit:BitmapData;

      public var wanarymu:Vector.<Number>;

      public var zaled:BitmapData;

      public var husysa:Shape;

      public var dizi:Shape;

      private var focus:GameObject;

      private var witabi:Qad;

      private var qagaw:Boolean = false;

      private var tooltip:Nylipabo = null;

      private var menu:Favequtu = null;

      private var nikyteto:Matrix;

      private var situp:Matrix;

      private var focinidu:Vector.<Player>;

      private var nezewacy:Point;

      override public function setMap(param1:Wuwa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.map=param1;
         this.fep();
         return;
      }

      override public function setFocus(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.focus=param1;
         return;
      }

      private function fep() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.catebyqic=new Rectangle(-this.fugyf/2,-this._height/2,this.fugyf,this._height);
         this.fafafiwo=new Point(map.width_,map.height_);
         this.kit=new BitmapData(this.fafafiwo.x,this.fafafiwo.y,false,0);
         var _loc1_:Number = Math.max(this.fugyf/this.fafafiwo.x,this._height/this.fafafiwo.y);
         var _loc2_:Number = 4;
         while(_loc2_>_loc1_)
         {
            this.wanarymu.push(_loc2_);
            _loc2_=_loc2_/2;
         }
         this.wanarymu.push(_loc1_);
         return;
      }

      private function watyveku() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zaled=AssetLibrary.jeqycu("lofiInterface",54).clone();
         this.zaled.colorTransform(this.zaled.rect,new ColorTransform(0,0,1));
         graphics.clear();
         graphics.beginFill(1776411);
         graphics.drawRect(0,0,this.fugyf,this._height);
         graphics.endFill();
         this.husysa=new Shape();
         this.husysa.x=this.fugyf/2;
         this.husysa.y=this._height/2;
         addChild(this.husysa);
         this.dizi=new Shape();
         this.dizi.x=this.fugyf/2;
         this.dizi.y=this._height/2;
         addChild(this.dizi);
         this.witabi=new Qad();
         this.witabi.x=this.fugyf-20;
         this.witabi.musy.add(this.nedareje);
         this.witabi.hokihobud(this.wanarymu.length);
         addChild(this.witabi);
         return;
      }

      private function gyp() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.zofys);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.active=false;
         this.huvu();
         return;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kit.dispose();
         this.kit=null;
         this.huvu();
         return;
      }

      private function nedareje(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jezinut=param1;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qagaw=true;
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qagaw=false;
         return;
      }

      private function zofys(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.tooltip==null||this.tooltip.parent==null||this.tooltip.focinidu==null||this.tooltip.focinidu.length==0)
         {
            return;
         }
         this.vofub();
         this.pacagis();
         this.nepijawij();
         return;
      }

      private function pacagis() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.menu=new Favequtu(map,this.tooltip.focinidu);
         this.menu.x=this.tooltip.x+12;
         this.menu.y=this.tooltip.y;
         gale.addChild(this.menu);
         return;
      }

      override public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:uint = Qezab.getColor(param3);
         this.kit.setPixel(param1,param2,_loc4_);
         return;
      }

      override public function setGameObjectTile(param1:int, param2:int, param3:GameObject) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:uint = fece(param3);
         this.kit.setPixel(param1,param2,_loc4_);
         return;
      }

      private function huvu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nepijawij();
         this.vofub();
         return;
      }

      private function nepijawij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tooltip!=null)
         {
            if(this.tooltip.parent!=null)
            {
               this.tooltip.parent.removeChild(this.tooltip);
            }
            this.tooltip=null;
         }
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
         var _loc24_:* = true;
         var _loc25_:* = false;
         var _loc7_:Graphics = null;
         var _loc10_:GameObject = null;
         var _loc15_:uint = 0;
         var _loc16_:Player = null;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         this.husysa.graphics.clear();
         this.dizi.graphics.clear();
         if(!this.focus)
         {
            return;
         }
         if(!this.active)
         {
            return;
         }
         var _loc1_:Number = this.wanarymu[this.jezinut];
         this.nikyteto.identity();
         this.nikyteto.translate(-this.focus.x_,-this.focus.y_);
         this.nikyteto.scale(_loc1_,_loc1_);
         var _loc2_:Point = this.nikyteto.transformPoint(PointUtil.qohusovu);
         var _loc3_:Point = this.nikyteto.transformPoint(this.fafafiwo);
         var _loc4_:Number = 0;
         if(_loc2_.x>this.catebyqic.left)
         {
            _loc4_=this.catebyqic.left-_loc2_.x;
         }
         else
         {
            if(_loc3_.x<this.catebyqic.right)
            {
               _loc4_=this.catebyqic.right-_loc3_.x;
            }
         }
         var _loc5_:Number = 0;
         if(_loc2_.y>this.catebyqic.top)
         {
            _loc5_=this.catebyqic.top-_loc2_.y;
         }
         else
         {
            if(_loc3_.y<this.catebyqic.bottom)
            {
               _loc5_=this.catebyqic.bottom-_loc3_.y;
            }
         }
         this.nikyteto.translate(_loc4_,_loc5_);
         _loc2_=this.nikyteto.transformPoint(PointUtil.qohusovu);
         var _loc6_:Rectangle = new Rectangle();
         _loc6_.x=Math.max(this.catebyqic.x,_loc2_.x);
         _loc6_.y=Math.max(this.catebyqic.y,_loc2_.y);
         _loc6_.right=Math.min(this.catebyqic.right,_loc2_.x+this.fafafiwo.x*_loc1_);
         _loc6_.bottom=Math.min(this.catebyqic.bottom,_loc2_.y+this.fafafiwo.y*_loc1_);
         _loc7_=this.husysa.graphics;
         _loc7_.beginBitmapFill(this.kit,this.nikyteto,false);
         _loc7_.drawRect(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
         _loc7_.endFill();
         _loc7_=this.dizi.graphics;
         var _loc8_:Number = mouseX-this.fugyf/2;
         var _loc9_:Number = mouseY-this._height/2;
         this.focinidu.length=0;
         for each (_loc10_ in map.goDict_)
         {
            if((_loc10_.props_.zegicas)||_loc10_==this.focus)
            {
            }
            else
            {
               _loc16_=_loc10_ as Player;
               if(_loc16_!=null)
               {
                  if(_loc16_.isPaused())
                  {
                     _loc15_=8355711;
                  }
                  else
                  {
                     if(_loc16_.lysezyky)
                     {
                        _loc15_=65280;
                     }
                     else
                     {
                        _loc15_=16776960;
                     }
                  }
               }
               else
               {
                  if(_loc10_ is Character)
                  {
                     if(_loc10_.props_.isEnemy_)
                     {
                        _loc15_=16711680;
                     }
                     else
                     {
                        _loc15_=fece(_loc10_);
                     }
                  }
                  else
                  {
                     if(_loc10_ is Portal||_loc10_ is GuildHallPortal)
                     {
                        _loc15_=255;
                     }
                     else
                     {
                        continue;
                     }
                  }
               }
               _loc17_=this.nikyteto.a*_loc10_.x_+this.nikyteto.c*_loc10_.y_+this.nikyteto.tx;
               _loc18_=this.nikyteto.b*_loc10_.x_+this.nikyteto.d*_loc10_.y_+this.nikyteto.ty;
               if(_loc17_<=-this.fugyf/2||_loc17_>=this.fugyf/2||_loc18_<=-this._height/2||_loc18_>=this._height/2)
               {
                  Ryhar.zizy(this.catebyqic,0,0,_loc17_,_loc18_,this.nezewacy);
                  _loc17_=this.nezewacy.x;
                  _loc18_=this.nezewacy.y;
               }
               if(!(_loc16_==null)&&(this.qagaw)&&(this.menu==null||this.menu.parent==null))
               {
                  _loc19_=_loc8_-_loc17_;
                  _loc20_=_loc9_-_loc18_;
                  _loc21_=_loc19_*_loc19_+_loc20_*_loc20_;
                  if(_loc21_<zogon)
                  {
                     this.focinidu.push(_loc16_);
                  }
               }
               _loc7_.beginFill(_loc15_);
               _loc7_.drawRect(_loc17_-2,_loc18_-2,4,4);
               _loc7_.endFill();
            }
         }
         if(this.focinidu.length!=0)
         {
            if(this.tooltip==null)
            {
               this.tooltip=new Nylipabo(this.focinidu);
               gale.addChild(this.tooltip);
            }
            else
            {
               if(!this.bacoduhep(this.tooltip.focinidu,this.focinidu))
               {
                  this.tooltip.ducisigaq(this.focinidu);
               }
            }
         }
         else
         {
            if(this.tooltip!=null)
            {
               if(this.tooltip.parent!=null)
               {
                  this.tooltip.parent.removeChild(this.tooltip);
               }
               this.tooltip=null;
            }
         }
         var _loc11_:Number = this.focus.x_;
         var _loc12_:Number = this.focus.y_;
         var _loc13_:Number = this.nikyteto.a*_loc11_+this.nikyteto.c*_loc12_+this.nikyteto.tx;
         var _loc14_:Number = this.nikyteto.b*_loc11_+this.nikyteto.d*_loc12_+this.nikyteto.ty;
         this.situp.identity();
         this.situp.translate(-4,-5);
         this.situp.scale(8/this.zaled.width,32/this.zaled.height);
         this.situp.rotate(UserConfig.data_.cameraAngle);
         this.situp.translate(_loc13_,_loc14_);
         _loc7_.beginBitmapFill(this.zaled,this.situp,false);
         _loc7_.drawRect(_loc13_-16,_loc14_-16,32,32);
         _loc7_.endFill();
         return;
      }

      private function bacoduhep(param1:Vector.<Player>, param2:Vector.<Player>) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:int = param1.length;
         if(_loc3_!=param2.length)
         {
            return false;
         }
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            if(param1[_loc4_]!=param2[_loc4_])
            {
               return false;
            }
            _loc4_++;
         }
         return true;
      }

      override public function zoomIn() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jezinut=this.witabi.cak(this.jezinut-1);
         return;
      }

      override public function zoomOut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jezinut=this.witabi.cak(this.jezinut+1);
         return;
      }

      override public function deactivate() : void {
         return;
      }
   }

}