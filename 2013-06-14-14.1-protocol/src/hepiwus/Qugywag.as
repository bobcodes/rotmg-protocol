package hepiwus
{
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import mavew.Bydyqej;
   import hilonec.Tuwo;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.map.Remo;
   import com.company.util.AssetLibrary;
   import flash.geom.ColorTransform;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.company.assembleegameclient.map.Qemujy;
   import flash.display.Graphics;
   import com.company.util.PointUtil;
   import com.company.assembleegameclient.objects.Character;
   import com.company.assembleegameclient.objects.Portal;
   import com.company.assembleegameclient.objects.GuildHallPortal;
   import com.company.util.Baticor;
   import aaa.RotmgParameters.RotmgParameters;


   public class Qugywag extends Sejano
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qugywag(param1:int, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ruk=new Vector.<Number>();
         this.favelaqi=new Matrix();
         this.sekunaza=new Matrix();
         this.botet=new Vector.<Player>();
         this.kytop=new Point();
         super();
         this.ciqyzugoh=param1;
         this._height=param2;
         this.ciji();
         this.jidesyd();
         return;
      }

      public static const panifyd:int = 5*5;

      private static var sesonuc:Dictionary = new Dictionary();

      public static function goc(param1:GameObject) : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = param1.objectType_;
         if(!sesonuc.hasOwnProperty(_loc2_))
         {
            sesonuc[_loc2_]=param1.getColor();
         }
         return sesonuc[_loc2_];
      }

      public var ciqyzugoh:int;

      public var _height:int;

      public var sywob:int = 0;

      public var gihok:Rectangle;

      public var active:Boolean = true;

      public var nafafucu:Point;

      public var jysow:BitmapData;

      public var ruk:Vector.<Number>;

      public var nadu:BitmapData;

      public var pec:Shape;

      public var cyjen:Shape;

      private var focus:GameObject;

      private var lok:Tofan;

      private var luma:Boolean = false;

      private var tooltip:Bydyqej = null;

      private var menu:Tuwo = null;

      private var favelaqi:Matrix;

      private var sekunaza:Matrix;

      private var botet:Vector.<Player>;

      private var kytop:Point;

      override public function setMap(param1:Remo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.map=param1;
         this.cujocubim();
         return;
      }

      override public function setFocus(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.focus=param1;
         return;
      }

      private function cujocubim() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gihok=new Rectangle(-this.ciqyzugoh/2,-this._height/2,this.ciqyzugoh,this._height);
         this.nafafucu=new Point(map.width_,map.height_);
         this.jysow=new BitmapData(this.nafafucu.x,this.nafafucu.y,false,0);
         var _loc1_:Number = Math.max(this.ciqyzugoh/this.nafafucu.x,this._height/this.nafafucu.y);
         var _loc2_:Number = 4;
         while(_loc2_>_loc1_)
         {
            this.ruk.push(_loc2_);
            _loc2_=_loc2_/2;
         }
         this.ruk.push(_loc1_);
         return;
      }

      private function ciji() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nadu=AssetLibrary.tem("lofiInterface",54).clone();
         this.nadu.colorTransform(this.nadu.rect,new ColorTransform(0,0,1));
         graphics.clear();
         graphics.beginFill(1776411);
         graphics.drawRect(0,0,this.ciqyzugoh,this._height);
         graphics.endFill();
         this.pec=new Shape();
         this.pec.x=this.ciqyzugoh/2;
         this.pec.y=this._height/2;
         addChild(this.pec);
         this.cyjen=new Shape();
         this.cyjen.x=this.ciqyzugoh/2;
         this.cyjen.y=this._height/2;
         addChild(this.cyjen);
         this.lok=new Tofan();
         this.lok.x=this.ciqyzugoh-20;
         this.lok.juzywim.add(this.las);
         this.lok.jazusaf(this.ruk.length);
         addChild(this.lok);
         return;
      }

      private function jidesyd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.fenynydal);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.active=false;
         this.daqe();
         return;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jysow.dispose();
         this.jysow=null;
         this.daqe();
         return;
      }

      private function las(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sywob=param1;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.luma=true;
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.luma=false;
         return;
      }

      private function fenynydal(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.tooltip==null||this.tooltip.parent==null||this.tooltip.botet==null||this.tooltip.botet.length==0)
         {
            return;
         }
         this.videhel();
         this.ras();
         this.jiqoretyj();
         return;
      }

      private function ras() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.menu=new Tuwo(map,this.tooltip.botet);
         this.menu.x=this.tooltip.x+12;
         this.menu.y=this.tooltip.y;
         rokawekos.addChild(this.menu);
         return;
      }

      override public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:uint = Qemujy.getColor(param3);
         this.jysow.setPixel(param1,param2,_loc4_);
         return;
      }

      override public function setGameObjectTile(param1:int, param2:int, param3:GameObject) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:uint = goc(param3);
         this.jysow.setPixel(param1,param2,_loc4_);
         return;
      }

      private function daqe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jiqoretyj();
         this.videhel();
         return;
      }

      private function jiqoretyj() : void {
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

      private function videhel() : void {
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
         this.pec.graphics.clear();
         this.cyjen.graphics.clear();
         if(!this.focus)
         {
            return;
         }
         if(!this.active)
         {
            return;
         }
         var _loc1_:Number = this.ruk[this.sywob];
         this.favelaqi.identity();
         this.favelaqi.translate(-this.focus.x_,-this.focus.y_);
         this.favelaqi.scale(_loc1_,_loc1_);
         var _loc2_:Point = this.favelaqi.transformPoint(PointUtil.wota);
         var _loc3_:Point = this.favelaqi.transformPoint(this.nafafucu);
         var _loc4_:Number = 0;
         if(_loc2_.x>this.gihok.left)
         {
            _loc4_=this.gihok.left-_loc2_.x;
         }
         else
         {
            if(_loc3_.x<this.gihok.right)
            {
               _loc4_=this.gihok.right-_loc3_.x;
            }
         }
         var _loc5_:Number = 0;
         if(_loc2_.y>this.gihok.top)
         {
            _loc5_=this.gihok.top-_loc2_.y;
         }
         else
         {
            if(_loc3_.y<this.gihok.bottom)
            {
               _loc5_=this.gihok.bottom-_loc3_.y;
            }
         }
         this.favelaqi.translate(_loc4_,_loc5_);
         _loc2_=this.favelaqi.transformPoint(PointUtil.wota);
         var _loc6_:Rectangle = new Rectangle();
         _loc6_.x=Math.max(this.gihok.x,_loc2_.x);
         _loc6_.y=Math.max(this.gihok.y,_loc2_.y);
         _loc6_.right=Math.min(this.gihok.right,_loc2_.x+this.nafafucu.x*_loc1_);
         _loc6_.bottom=Math.min(this.gihok.bottom,_loc2_.y+this.nafafucu.y*_loc1_);
         _loc7_=this.pec.graphics;
         _loc7_.beginBitmapFill(this.jysow,this.favelaqi,false);
         _loc7_.drawRect(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
         _loc7_.endFill();
         _loc7_=this.cyjen.graphics;
         var _loc8_:Number = mouseX-this.ciqyzugoh/2;
         var _loc9_:Number = mouseY-this._height/2;
         this.botet.length=0;
         for each (_loc10_ in map.goDict_)
         {
            if((_loc10_.props_.cet)||_loc10_==this.focus)
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
                     if(_loc16_.betyzyq)
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
                        _loc15_=goc(_loc10_);
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
               _loc17_=this.favelaqi.a*_loc10_.x_+this.favelaqi.c*_loc10_.y_+this.favelaqi.tx;
               _loc18_=this.favelaqi.b*_loc10_.x_+this.favelaqi.d*_loc10_.y_+this.favelaqi.ty;
               if(_loc17_<=-this.ciqyzugoh/2||_loc17_>=this.ciqyzugoh/2||_loc18_<=-this._height/2||_loc18_>=this._height/2)
               {
                  Baticor.vuhebo(this.gihok,0,0,_loc17_,_loc18_,this.kytop);
                  _loc17_=this.kytop.x;
                  _loc18_=this.kytop.y;
               }
               if(!(_loc16_==null)&&(this.luma)&&(this.menu==null||this.menu.parent==null))
               {
                  _loc19_=_loc8_-_loc17_;
                  _loc20_=_loc9_-_loc18_;
                  _loc21_=_loc19_*_loc19_+_loc20_*_loc20_;
                  if(_loc21_<panifyd)
                  {
                     this.botet.push(_loc16_);
                  }
               }
               _loc7_.beginFill(_loc15_);
               _loc7_.drawRect(_loc17_-2,_loc18_-2,4,4);
               _loc7_.endFill();
            }
         }
         if(this.botet.length!=0)
         {
            if(this.tooltip==null)
            {
               this.tooltip=new Bydyqej(this.botet);
               rokawekos.addChild(this.tooltip);
            }
            else
            {
               if(!this.pagojewil(this.tooltip.botet,this.botet))
               {
                  this.tooltip.cusiqyhal(this.botet);
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
         var _loc13_:Number = this.favelaqi.a*_loc11_+this.favelaqi.c*_loc12_+this.favelaqi.tx;
         var _loc14_:Number = this.favelaqi.b*_loc11_+this.favelaqi.d*_loc12_+this.favelaqi.ty;
         this.sekunaza.identity();
         this.sekunaza.translate(-4,-5);
         this.sekunaza.scale(8/this.nadu.width,32/this.nadu.height);
         this.sekunaza.rotate(RotmgParameters.data_.cameraAngle);
         this.sekunaza.translate(_loc13_,_loc14_);
         _loc7_.beginBitmapFill(this.nadu,this.sekunaza,false);
         _loc7_.drawRect(_loc13_-16,_loc14_-16,32,32);
         _loc7_.endFill();
         return;
      }

      private function pagojewil(param1:Vector.<Player>, param2:Vector.<Player>) : Boolean {
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
         this.sywob=this.lok.benego(this.sywob-1);
         return;
      }

      override public function zoomOut() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sywob=this.lok.benego(this.sywob+1);
         return;
      }

      override public function deactivate() : void {
         return;
      }
   }

}