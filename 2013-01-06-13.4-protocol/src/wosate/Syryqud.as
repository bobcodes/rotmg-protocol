package wosate
{
[CLASS1052]   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import pigeguwo.Natoq;
   import sybyzowo.Budogy;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.map.Vidowaty;
   import com.company.util.AssetLibrary;
   import flash.geom.ColorTransform;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.company.assembleegameclient.map.Lakum;
   import flash.display.Graphics;
   import com.company.util.PointUtil;
   import com.company.assembleegameclient.objects.Character;
   import com.company.assembleegameclient.objects.Portal;
   import com.company.assembleegameclient.objects.GuildHallPortal;
   import com.company.util.Gor;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Syryqud extends Walalu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Syryqud(param1:int, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.sylupuf=new Vector.<Number>();
         this.nubezefy=new Matrix();
         this.fobyhoty=new Matrix();
         this.tiga=new Vector.<Player>();
         this.heti=new Point();
         super();
         this.qej=param1;
         this._height=param2;
         this.musyz();
         this.fejysu();
         return;
      }

      public static const fusuwycyk:int = 5*5;

      private static var hel:Dictionary = new Dictionary();

      public static function caduder(param1:GameObject) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = param1.objectType_;
         if(!hel.hasOwnProperty(_loc2_))
         {
            hel[_loc2_]=param1.getColor();
         }
         return hel[_loc2_];
      }

      public var qej:int;

      public var _height:int;

      public var keta:int = 0;

      public var wuducurev:Rectangle;

      public var active:Boolean = true;

      public var pevegawoq:Point;

      public var midawum:BitmapData;

      public var sylupuf:Vector.<Number>;

      public var bozyvogo:BitmapData;

      public var lyn:Shape;

      public var fufesat:Shape;

      private var focus:GameObject;

      private var cip:Myja;

      private var leleq:Boolean = false;

      private var tooltip:Natoq = null;

      private var menu:Budogy = null;

      private var nubezefy:Matrix;

      private var fobyhoty:Matrix;

      private var tiga:Vector.<Player>;

      private var heti:Point;

      override public function setMap(param1:Vidowaty) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.map=param1;
         this.kikun();
         return;
      }

      override public function setFocus(param1:GameObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.focus=param1;
         return;
      }

      private function kikun() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.wuducurev=new Rectangle(-this.qej/2,-this._height/2,this.qej,this._height);
         this.pevegawoq=new Point(map.width_,map.height_);
         this.midawum=new BitmapData(this.pevegawoq.x,this.pevegawoq.y,false,0);
         var _loc1_:Number = Math.max(this.qej/this.pevegawoq.x,this._height/this.pevegawoq.y);
         var _loc2_:Number = 4;
         while(_loc2_>_loc1_)
         {
            this.sylupuf.push(_loc2_);
            _loc2_=_loc2_/2;
         }
         this.sylupuf.push(_loc1_);
         return;
      }

      private function musyz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bozyvogo=AssetLibrary.zovy("lofiInterface",54).clone();
         this.bozyvogo.colorTransform(this.bozyvogo.rect,new ColorTransform(0,0,1));
         graphics.clear();
         graphics.beginFill(1776411);
         graphics.drawRect(0,0,this.qej,this._height);
         graphics.endFill();
         this.lyn=new Shape();
         this.lyn.x=this.qej/2;
         this.lyn.y=this._height/2;
         addChild(this.lyn);
         this.fufesat=new Shape();
         this.fufesat.x=this.qej/2;
         this.fufesat.y=this._height/2;
         addChild(this.fufesat);
         this.cip=new Myja();
         this.cip.x=this.qej-20;
         this.cip.luzaricy.add(this.kykyc);
         this.cip.gezykukeh(this.sylupuf.length);
         addChild(this.cip);
         return;
      }

      private function fejysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.tabogyg);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.active=false;
         this.gyke();
         return;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.midawum.dispose();
         this.midawum=null;
         this.gyke();
         return;
      }

      private function kykyc(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.keta=param1;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.leleq=true;
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.leleq=false;
         return;
      }

      private function tabogyg(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.tooltip==null||this.tooltip.parent==null||this.tooltip.tiga==null||this.tooltip.tiga.length==0)
         {
            return;
         }
         this.kerepu();
         this.tyr();
         this.mivomydu();
         return;
      }

      private function tyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.menu=new Budogy(map,this.tooltip.tiga);
         this.menu.x=this.tooltip.x+12;
         this.menu.y=this.tooltip.y;
         wijope.addChild(this.menu);
         return;
      }

      override public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:uint = Lakum.getColor(param3);
         this.midawum.setPixel(param1,param2,_loc4_);
         return;
      }

      override public function setGameObjectTile(param1:int, param2:int, param3:GameObject) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:uint = caduder(param3);
         this.midawum.setPixel(param1,param2,_loc4_);
         return;
      }

      private function gyke() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mivomydu();
         this.kerepu();
         return;
      }

      private function mivomydu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         var _loc24_:* = false;
         var _loc25_:* = true;
         var _loc7_:Graphics = null;
         var _loc10_:GameObject = null;
         var _loc15_:uint = 0;
         var _loc16_:Player = null;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         this.lyn.graphics.clear();
         this.fufesat.graphics.clear();
         if(!this.focus)
         {
            return;
         }
         if(!this.active)
         {
            return;
         }
         var _loc1_:Number = this.sylupuf[this.keta];
         this.nubezefy.identity();
         this.nubezefy.translate(-this.focus.x_,-this.focus.y_);
         this.nubezefy.scale(_loc1_,_loc1_);
         var _loc2_:Point = this.nubezefy.transformPoint(PointUtil.tirumyf);
         var _loc3_:Point = this.nubezefy.transformPoint(this.pevegawoq);
         var _loc4_:Number = 0;
         if(_loc2_.x>this.wuducurev.left)
         {
            _loc4_=this.wuducurev.left-_loc2_.x;
         }
         else
         {
            if(_loc3_.x<this.wuducurev.right)
            {
               _loc4_=this.wuducurev.right-_loc3_.x;
            }
         }
         var _loc5_:Number = 0;
         if(_loc2_.y>this.wuducurev.top)
         {
            _loc5_=this.wuducurev.top-_loc2_.y;
         }
         else
         {
            if(_loc3_.y<this.wuducurev.bottom)
            {
               _loc5_=this.wuducurev.bottom-_loc3_.y;
            }
         }
         this.nubezefy.translate(_loc4_,_loc5_);
         _loc2_=this.nubezefy.transformPoint(PointUtil.tirumyf);
         var _loc6_:Rectangle = new Rectangle();
         _loc6_.x=Math.max(this.wuducurev.x,_loc2_.x);
         _loc6_.y=Math.max(this.wuducurev.y,_loc2_.y);
         _loc6_.right=Math.min(this.wuducurev.right,_loc2_.x+this.pevegawoq.x*_loc1_);
         _loc6_.bottom=Math.min(this.wuducurev.bottom,_loc2_.y+this.pevegawoq.y*_loc1_);
         _loc7_=this.lyn.graphics;
         _loc7_.beginBitmapFill(this.midawum,this.nubezefy,false);
         _loc7_.drawRect(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
         _loc7_.endFill();
         _loc7_=this.fufesat.graphics;
         var _loc8_:Number = mouseX-this.qej/2;
         var _loc9_:Number = mouseY-this._height/2;
         this.tiga.length=0;
         for each (_loc10_ in map.goDict_)
         {
            if((_loc10_.props_.tokodyz)||_loc10_==this.focus)
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
                     if(_loc16_.togyjuwub)
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
                        _loc15_=caduder(_loc10_);
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
               _loc17_=this.nubezefy.a*_loc10_.x_+this.nubezefy.c*_loc10_.y_+this.nubezefy.tx;
               _loc18_=this.nubezefy.b*_loc10_.x_+this.nubezefy.d*_loc10_.y_+this.nubezefy.ty;
               if(_loc17_<=-this.qej/2||_loc17_>=this.qej/2||_loc18_<=-this._height/2||_loc18_>=this._height/2)
               {
                  Gor.suhoderoq(this.wuducurev,0,0,_loc17_,_loc18_,this.heti);
                  _loc17_=this.heti.x;
                  _loc18_=this.heti.y;
               }
               if(!(_loc16_==null)&&(this.leleq)&&(this.menu==null||this.menu.parent==null))
               {
                  _loc19_=_loc8_-_loc17_;
                  _loc20_=_loc9_-_loc18_;
                  _loc21_=_loc19_*_loc19_+_loc20_*_loc20_;
                  if(_loc21_<fusuwycyk)
                  {
                     this.tiga.push(_loc16_);
                  }
               }
               _loc7_.beginFill(_loc15_);
               _loc7_.drawRect(_loc17_-2,_loc18_-2,4,4);
               _loc7_.endFill();
            }
         }
         if(this.tiga.length!=0)
         {
            if(this.tooltip==null)
            {
               this.tooltip=new Natoq(this.tiga);
               wijope.addChild(this.tooltip);
            }
            else
            {
               if(!this.micyr(this.tooltip.tiga,this.tiga))
               {
                  this.tooltip.jagiq(this.tiga);
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
         var _loc13_:Number = this.nubezefy.a*_loc11_+this.nubezefy.c*_loc12_+this.nubezefy.tx;
         var _loc14_:Number = this.nubezefy.b*_loc11_+this.nubezefy.d*_loc12_+this.nubezefy.ty;
         this.fobyhoty.identity();
         this.fobyhoty.translate(-4,-5);
         this.fobyhoty.scale(8/this.bozyvogo.width,32/this.bozyvogo.height);
         this.fobyhoty.rotate(Parameters.data_.cameraAngle);
         this.fobyhoty.translate(_loc13_,_loc14_);
         _loc7_.beginBitmapFill(this.bozyvogo,this.fobyhoty,false);
         _loc7_.drawRect(_loc13_-16,_loc14_-16,32,32);
         _loc7_.endFill();
         return;
      }

      private function micyr(param1:Vector.<Player>, param2:Vector.<Player>) : Boolean {
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
         this.keta=this.cip.mos(this.keta-1);
         return;
      }

      override public function zoomOut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.keta=this.cip.mos(this.keta+1);
         return;
      }

      override public function deactivate() : void {
         return;
      }
   }
[/CLASS]
}