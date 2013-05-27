package fezeker
{
   import flash.display.Sprite;
   import nyvubeze.Menu;
   import flash.display.DisplayObjectContainer;
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import povopito.Ryduwi;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import com.company.assembleegameclient.map.Wypyj;
   import flash.geom.Rectangle;
   import com.company.util.Ryhar;
   import com.company.util.Trig;
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;


   public class Hocajicov extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hocajicov(param1:uint, param2:uint, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.rima=new Vector.<GameObject>();
         this.byco=new Shape();
         this.nezewacy=new Point();
         super();
         this.hogidid=param1;
         this.konupeweq=param2;
         this.zowisa=param3;
         addChild(this.byco);
         this.merutybyn();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         filters=[new DropShadowFilter(0,0,0,1,8,8)];
         visible=false;
         return;
      }

      public static const vonirivup:int = 8;

      public static const garohe:int = 11;

      public static const temeleqe:int = 3;

      private static var seje:Menu = null;

      public static function vofub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(seje!=null)
         {
            if(seje.parent!=null)
            {
               seje.parent.removeChild(seje);
            }
            seje=null;
         }
         return;
      }

      public var gale:DisplayObjectContainer;

      public var hogidid:uint;

      public var konupeweq:uint;

      public var go_:GameObject = null;

      public var rima:Vector.<GameObject>;

      public var vefymyjul:Boolean = false;

      private var zowisa:Boolean;

      private var byco:Shape;

      protected var rezaf:Ryduwi = null;

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vefymyjul=true;
         this.merutybyn();
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vefymyjul=false;
         this.merutybyn();
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         return;
      }

      protected function tyvu(param1:Ryduwi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nepijawij();
         this.rezaf=param1;
         if(this.rezaf!=null)
         {
            addChild(this.rezaf);
            this.qyhuterub(this.rezaf);
         }
         return;
      }

      protected function nepijawij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.rezaf!=null)
         {
            if(this.rezaf.parent!=null)
            {
               this.rezaf.parent.removeChild(this.rezaf);
            }
            this.rezaf=null;
         }
         return;
      }

      protected function bis(param1:Menu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nepijawij();
         seje=param1;
         this.gale.addChild(seje);
         return;
      }

      public function linotes(param1:GameObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.go_!=param1)
         {
            this.go_=param1;
         }
         this.rima.length=0;
         if(this.go_==null)
         {
            visible=false;
         }
         return;
      }

      public function bilebyjud(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rima.push(param1);
         return;
      }

      private var nezewacy:Point;

      public function draw(param1:int, param2:Wypyj) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.go_==null)
         {
            visible=false;
            return;
         }
         this.go_.cude(param2);
         var _loc3_:Rectangle = param2.cykuwito;
         _loc4_=this.go_.kiwujacam[0];
         _loc5_=this.go_.kiwujacam[1];
         if(!Ryhar.zizy(param2.cykuwito,0,0,_loc4_,_loc5_,this.nezewacy))
         {
            this.go_=null;
            visible=false;
            return;
         }
         x=this.nezewacy.x;
         y=this.nezewacy.y;
         var _loc6_:Number = Trig.sysatep(270-Trig.tono*Math.atan2(_loc4_,_loc5_));
         if(this.nezewacy.x<_loc3_.left+5)
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
            if(this.nezewacy.x>_loc3_.right-5)
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
         if(this.nezewacy.y<_loc3_.top+5)
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
            if(this.nezewacy.y>_loc3_.bottom-5)
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
         this.byco.rotation=_loc6_;
         if(this.rezaf!=null)
         {
            this.qyhuterub(this.rezaf);
         }
         visible=true;
         return;
      }

      private function qyhuterub(param1:Ryduwi) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc2_:Number = this.byco.rotation;
         var _loc3_:int = temeleqe+garohe+12;
         var _loc4_:Number = _loc3_*Math.cos(_loc2_*Trig.byjik);
         var _loc5_:Number = _loc3_*Math.sin(_loc2_*Trig.byjik);
         var _loc6_:Number = param1.gahyk;
         var _loc7_:Number = param1.noga;
         if(_loc2_>=45&&_loc2_<=135)
         {
            _loc8_=_loc4_+_loc6_/Math.tan(_loc2_*Trig.byjik);
            param1.x=(_loc4_+_loc8_)/2-_loc6_/2;
            param1.y=_loc5_;
         }
         else
         {
            if(_loc2_<=-45&&_loc2_>=-135)
            {
               _loc8_=_loc4_-_loc6_/Math.tan(_loc2_*Trig.byjik);
               param1.x=(_loc4_+_loc8_)/2-_loc6_/2;
               param1.y=_loc5_-_loc7_;
            }
            else
            {
               if(_loc2_<45&&_loc2_>-45)
               {
                  param1.x=_loc4_;
                  _loc9_=_loc5_+_loc7_*Math.tan(_loc2_*Trig.byjik);
                  param1.y=(_loc5_+_loc9_)/2-_loc7_/2;
               }
               else
               {
                  param1.x=_loc4_-_loc6_;
                  _loc9_=_loc5_-_loc7_*Math.tan(_loc2_*Trig.byjik);
                  param1.y=(_loc5_+_loc9_)/2-_loc7_/2;
               }
            }
         }
         return;
      }

      private function merutybyn() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Graphics = this.byco.graphics;
         _loc1_.clear();
         var _loc2_:int = (this.zowisa)||(this.vefymyjul)?garohe:vonirivup;
         _loc1_.lineStyle(1,this.hogidid);
         _loc1_.beginFill(this.konupeweq);
         _loc1_.moveTo(temeleqe,0);
         _loc1_.lineTo(_loc2_+temeleqe,_loc2_);
         _loc1_.lineTo(_loc2_+temeleqe,-_loc2_);
         _loc1_.lineTo(temeleqe,0);
         _loc1_.endFill();
         _loc1_.lineStyle();
         return;
      }
   }

}