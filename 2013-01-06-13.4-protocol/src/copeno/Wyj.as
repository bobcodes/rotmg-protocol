package copeno
{
[CLASS479]   import flash.display.Sprite;
   import sybyzowo.Menu;
   import flash.display.DisplayObjectContainer;
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import pigeguwo.Jazyv;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import com.company.assembleegameclient.map.Fot;
   import flash.geom.Rectangle;
   import com.company.util.Gor;
   import com.company.util.Trig;
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;


   public class Wyj extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wyj(param1:uint, param2:uint, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.jygezuq=new Vector.<GameObject>();
         this.lihozefyj=new Shape();
         this.heti=new Point();
         super();
         this.typyna=param1;
         this.hytewe=param2;
         this.fajemog=param3;
         addChild(this.lihozefyj);
         this.cuwutez();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         filters=[new DropShadowFilter(0,0,0,1,8,8)];
         visible=false;
         return;
      }

      public static const vihyfyp:int = 8;

      public static const nosoven:int = 11;

      public static const kula:int = 3;

      private static var hebejod:Menu = null;

      public static function kerepu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(hebejod!=null)
         {
            if(hebejod.parent!=null)
            {
               hebejod.parent.removeChild(hebejod);
            }
            hebejod=null;
         }
         return;
      }

      public var wijope:DisplayObjectContainer;

      public var typyna:uint;

      public var hytewe:uint;

      public var go_:GameObject = null;

      public var jygezuq:Vector.<GameObject>;

      public var dupo:Boolean = false;

      private var fajemog:Boolean;

      private var lihozefyj:Shape;

      protected var picazivu:Jazyv = null;

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dupo=true;
         this.cuwutez();
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dupo=false;
         this.cuwutez();
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         return;
      }

      protected function volokyd(param1:Jazyv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mivomydu();
         this.picazivu=param1;
         if(this.picazivu!=null)
         {
            addChild(this.picazivu);
            this.gite(this.picazivu);
         }
         return;
      }

      protected function mivomydu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.picazivu!=null)
         {
            if(this.picazivu.parent!=null)
            {
               this.picazivu.parent.removeChild(this.picazivu);
            }
            this.picazivu=null;
         }
         return;
      }

      protected function fyby(param1:Menu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mivomydu();
         hebejod=param1;
         this.wijope.addChild(hebejod);
         return;
      }

      public function bicu(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.go_!=param1)
         {
            this.go_=param1;
         }
         this.jygezuq.length=0;
         if(this.go_==null)
         {
            visible=false;
         }
         return;
      }

      public function rybudufo(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jygezuq.push(param1);
         return;
      }

      private var heti:Point;

      public function draw(param1:int, param2:Fot) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.go_==null)
         {
            visible=false;
            return;
         }
         this.go_.vuco(param2);
         var _loc3_:Rectangle = param2.wyly;
         _loc4_=this.go_.meluhykag[0];
         _loc5_=this.go_.meluhykag[1];
         if(!Gor.suhoderoq(param2.wyly,0,0,_loc4_,_loc5_,this.heti))
         {
            this.go_=null;
            visible=false;
            return;
         }
         x=this.heti.x;
         y=this.heti.y;
         var _loc6_:Number = Trig.tytory(270-Trig.nytir*Math.atan2(_loc4_,_loc5_));
         if(this.heti.x<_loc3_.left+5)
         {
            if(_loc6_>45)
            {
               _loc6_=45;
            }
            if(_loc6_<-45)
            {
               _loc6_=-45;
            }
         }
         else
         {
            if(this.heti.x>_loc3_.right-5)
            {
               if(_loc6_>0)
               {
                  if(_loc6_<135)
                  {
                     _loc6_=135;
                  }
               }
               else
               {
                  if(_loc6_>-135)
                  {
                     _loc6_=-135;
                  }
               }
            }
         }
         if(this.heti.y<_loc3_.top+5)
         {
            if(_loc6_<45)
            {
               _loc6_=45;
            }
            if(_loc6_>135)
            {
               _loc6_=135;
            }
         }
         else
         {
            if(this.heti.y>_loc3_.bottom-5)
            {
               if(_loc6_>-45)
               {
                  _loc6_=-45;
               }
               if(_loc6_<-135)
               {
                  _loc6_=-135;
               }
            }
         }
         this.lihozefyj.rotation=_loc6_;
         if(this.picazivu!=null)
         {
            this.gite(this.picazivu);
         }
         visible=true;
         return;
      }

      private function gite(param1:Jazyv) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc2_:Number = this.lihozefyj.rotation;
         var _loc3_:int = kula+nosoven+12;
         var _loc4_:Number = _loc3_*Math.cos(_loc2_*Trig.lymiquwo);
         var _loc5_:Number = _loc3_*Math.sin(_loc2_*Trig.lymiquwo);
         var _loc6_:Number = param1.rer;
         var _loc7_:Number = param1.doby;
         if(_loc2_>=45&&_loc2_<=135)
         {
            _loc8_=_loc4_+_loc6_/Math.tan(_loc2_*Trig.lymiquwo);
            param1.x=(_loc4_+_loc8_)/2-_loc6_/2;
            param1.y=_loc5_;
         }
         else
         {
            if(_loc2_<=-45&&_loc2_>=-135)
            {
               _loc8_=_loc4_-_loc6_/Math.tan(_loc2_*Trig.lymiquwo);
               param1.x=(_loc4_+_loc8_)/2-_loc6_/2;
               param1.y=_loc5_-_loc7_;
            }
            else
            {
               if(_loc2_<45&&_loc2_>-45)
               {
                  param1.x=_loc4_;
                  _loc9_=_loc5_+_loc7_*Math.tan(_loc2_*Trig.lymiquwo);
                  param1.y=(_loc5_+_loc9_)/2-_loc7_/2;
               }
               else
               {
                  param1.x=_loc4_-_loc6_;
                  _loc9_=_loc5_-_loc7_*Math.tan(_loc2_*Trig.lymiquwo);
                  param1.y=(_loc5_+_loc9_)/2-_loc7_/2;
               }
            }
         }
         return;
      }

      private function cuwutez() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Graphics = this.lihozefyj.graphics;
         _loc1_.clear();
         var _loc2_:int = (this.fajemog)||(this.dupo)?nosoven:vihyfyp;
         _loc1_.lineStyle(1,this.typyna);
         _loc1_.beginFill(this.hytewe);
         _loc1_.moveTo(kula,0);
         _loc1_.lineTo(_loc2_+kula,_loc2_);
         _loc1_.lineTo(_loc2_+kula,-_loc2_);
         _loc1_.lineTo(kula,0);
         _loc1_.endFill();
         _loc1_.lineStyle();
         return;
      }
   }
[/CLASS]
}