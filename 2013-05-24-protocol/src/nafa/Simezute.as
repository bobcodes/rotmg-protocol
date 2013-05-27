package nafa
{
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import flash.display.Shape;
   import com.company.util.IntPoint;
   import __AS3__.vec.Vector;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import com.company.util.Kiv;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vehulumes;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import com.company.util.PointUtil;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;


   class Simezute extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Simezute() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.caledeli=new Dictionary();
         this.nyq=new Misefi(wagagoq*bysim,wagagoq*bysim,true,0);
         this.kozekijon=new BitmapData(wagagoq,wagagoq,true,0);
         this.map_=new BitmapData(loko,loko,true,0);
         this.nikigiqi=new Shape();
         super();
         graphics.beginBitmapFill(nodo,null,true);
         graphics.drawRect(0,0,loko,loko);
         addChild(new Bitmap(this.map_));
         addChild(this.nikigiqi);
         this.lyhoqubi=new IntPoint(wagagoq/2-this.defi()/2,wagagoq/2-this.defi()/2);
         this.balobeda=AssetLibrary.jeqycu("invisible",0);
         this.sycihecip=AssetLibrary.jeqycu("lofiObj3",255);
         this.draw();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static var qulote:Class = Venywi;

      private static var nodo:BitmapData = new qulote().bitmapData;

      public static const wagagoq:int = 512;

      public static const bysim:int = 16;

      public static const loko:int = 512;

      public static const vedyto:Number = 0.0625;

      public static const wyn:Number = 16;

      public var caledeli:Dictionary;

      public var nyq:Misefi;

      public var kozekijon:BitmapData;

      public var map_:BitmapData;

      public var nikigiqi:Shape;

      public var lyhoqubi:IntPoint;

      public var gyf:Number = 1;

      private var tesedu:IntPoint = null;

      private var vebe:IntPoint = null;

      private var balobeda:BitmapData;

      private var sycihecip:BitmapData;

      public function getType(param1:int, param2:int, param3:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Gutunul = this.gosyq(param1,param2);
         if(_loc4_==null)
         {
            return -1;
         }
         return _loc4_.qenozyk[param3];
      }

      public function gosyq(param1:int, param2:int) : Gutunul {
         return this.caledeli[param1+param2*wagagoq];
      }

      public function bivacem(param1:int, param2:int, param3:int, param4:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Gutunul = this.huho(param1,param2);
         if(_loc5_.qenozyk[param3]==param4)
         {
            return;
         }
         _loc5_.qenozyk[param3]=param4;
         this.daqit(param1,param2,_loc5_);
         return;
      }

      public function vyfenod(param1:int, param2:int) : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Gutunul = this.gosyq(param1,param2);
         if(_loc3_==null)
         {
            return null;
         }
         return _loc3_.damu;
      }

      public function ken(param1:int, param2:int, param3:String) : void {
         var _loc4_:Gutunul = this.huho(param1,param2);
         _loc4_.damu=param3;
         return;
      }

      public function rizo() : Vector.<IntPoint> {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         var _loc1_:Vector.<IntPoint> = new Vector.<IntPoint>();
         for (_loc2_ in this.caledeli)
         {
            _loc3_=int(_loc2_);
            _loc1_.push(new IntPoint(_loc3_%wagagoq,_loc3_/wagagoq));
         }
         return _loc1_;
      }

      public function byka(param1:int, param2:int, param3:Gutunul) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var param3:Gutunul = param3.clone();
         this.caledeli[param1+param2*wagagoq]=param3;
         this.daqit(param1,param2,param3);
         return;
      }

      public function riqo(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.metibaje(param1,param2);
         this.daqit(param1,param2,null);
         return;
      }

      public function clear() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         for (_loc1_ in this.caledeli)
         {
            _loc2_=int(_loc1_);
            this.riqo(_loc2_%wagagoq,_loc2_/wagagoq);
         }
         return;
      }

      public function qazaheb() : Rectangle {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc5_:String = null;
         var _loc6_:Gutunul = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:int = wagagoq;
         var _loc2_:int = wagagoq;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         for (_loc5_ in this.caledeli)
         {
            _loc6_=this.caledeli[_loc5_];
            if(_loc6_.isEmpty())
            {
            }
            else
            {
               _loc7_=int(_loc5_);
               _loc8_=_loc7_%wagagoq;
               _loc9_=_loc7_/wagagoq;
               if(_loc8_<_loc1_)
               {
                  _loc1_=_loc8_;
               }
               if(_loc9_<_loc2_)
               {
                  _loc2_=_loc9_;
               }
               if(_loc8_+1>_loc3_)
               {
                  _loc3_=_loc8_+1;
               }
               if(_loc9_+1>_loc4_)
               {
                  _loc4_=_loc9_+1;
               }
            }
         }
         if(_loc1_>_loc3_)
         {
            return null;
         }
         return new Rectangle(_loc1_,_loc2_,_loc3_-_loc1_,_loc4_-_loc2_);
      }

      private function defi() : int {
         return loko/bysim*this.gyf;
      }

      private function dyvyjozut(param1:Number) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1>1&&this.gyf>=wyn||param1<1&&this.gyf<=vedyto)
         {
            return;
         }
         var _loc2_:IntPoint = this.hisogumen();
         this.gyf=this.gyf*param1;
         var _loc3_:IntPoint = this.hisogumen();
         this.wamytu(_loc2_.x_-_loc3_.x_,_loc2_.y_-_loc3_.y_);
         return;
      }

      private function zije() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.tesedu==null&&this.vebe==null;
      }

      private function cyw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.zije())
         {
            return;
         }
         this.dyvyjozut(2);
         this.draw();
         return;
      }

      private function hacykow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.zije())
         {
            return;
         }
         this.dyvyjozut(0.5);
         this.draw();
         return;
      }

      private function moveLeft() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.zije())
         {
            return;
         }
         this.wamytu(-1,0);
         this.draw();
         return;
      }

      private function moveRight() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.zije())
         {
            return;
         }
         this.wamytu(1,0);
         this.draw();
         return;
      }

      private function moveUp() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.zije())
         {
            return;
         }
         this.wamytu(0,-1);
         this.draw();
         return;
      }

      private function moveDown() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.zije())
         {
            return;
         }
         this.wamytu(0,1);
         this.draw();
         return;
      }

      private function wamytu(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:int = wagagoq-this.defi();
         this.lyhoqubi.x_=Math.max(_loc3_,Math.min(_loc4_,this.lyhoqubi.x_+param1));
         this.lyhoqubi.y_=Math.max(_loc3_,Math.min(_loc4_,this.lyhoqubi.y_+param2));
         return;
      }

      private function hisogumen() : IntPoint {
         var _loc1_:int = Math.max(0,Math.min(loko-1,mouseX));
         var _loc2_:int = Math.max(0,Math.min(loko-1,mouseY));
         return new IntPoint(this.lyhoqubi.x_+_loc1_/bysim*this.gyf,this.lyhoqubi.y_+_loc2_/bysim*this.gyf);
      }

      public function hah() : Rectangle {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:IntPoint = this.hisogumen();
         if(this.tesedu==null)
         {
            return new Rectangle(_loc1_.x_,_loc1_.y_,1,1);
         }
         return new Rectangle(Math.min(_loc1_.x_,this.tesedu.x_),Math.min(_loc1_.y_,this.tesedu.y_),Math.abs(_loc1_.x_-this.tesedu.x_)+1,Math.abs(_loc1_.y_-this.tesedu.y_)+1);
      }

      private function pon(param1:IntPoint) : IntPoint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return new IntPoint((param1.x_-this.lyhoqubi.x_)*bysim*this.gyf,(param1.y_-this.lyhoqubi.y_)*bysim*this.gyf);
      }

      private function zoco(param1:int) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1*this.gyf*bysim;
      }

      private function pot() : Rectangle {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = this.hah();
         var _loc2_:IntPoint = this.pon(new IntPoint(_loc1_.x,_loc1_.y));
         _loc1_.x=_loc2_.x_;
         _loc1_.y=_loc2_.y_;
         _loc1_.width=this.zoco(_loc1_.width)-1;
         _loc1_.height=this.zoco(_loc1_.height)-1;
         return _loc1_;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1.keyCode)
         {
            case Keyboard.SHIFT:
               if(this.tesedu!=null)
               {
               }
               else
               {
                  this.tesedu=this.hisogumen();
               }
               break;
            case Keyboard.CONTROL:
               if(this.vebe!=null)
               {
               }
               else
               {
                  this.vebe=this.hisogumen();
               }
               break;
            case Keyboard.LEFT:
               this.moveLeft();
               break;
            case Keyboard.RIGHT:
               this.moveRight();
               break;
            case Keyboard.UP:
               this.moveUp();
               break;
            case Keyboard.DOWN:
               this.moveDown();
               break;
            case Kiv.pusawun:
               this.hacykow();
               break;
            case Kiv.hymek:
               this.cyw();
               break;
         }
         this.draw();
         return;
      }

      private function seqedu(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1.keyCode)
         {
            case Keyboard.SHIFT:
               this.tesedu=null;
               break;
            case Keyboard.CONTROL:
               this.vebe=null;
               break;
         }
         this.draw();
         return;
      }

      private function fapiveb(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.delta>0)
         {
            this.cyw();
         }
         else
         {
            if(param1.delta<0)
            {
               this.hacykow();
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:* = 0;
         var _loc2_:Rectangle = this.hah();
         var _loc3_:Vector.<IntPoint> = new Vector.<IntPoint>();
         var _loc4_:int = _loc2_.x;
         while(_loc4_<_loc2_.right)
         {
            _loc5_=_loc2_.y;
            while(_loc5_<_loc2_.bottom)
            {
               _loc3_.push(new IntPoint(_loc4_,_loc5_));
               _loc5_++;
            }
            _loc4_++;
         }
         dispatchEvent(new Cecan(_loc3_));
         return;
      }

      private function onMouseMove(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:IntPoint = null;
         if(!param1.shiftKey)
         {
            this.tesedu=null;
         }
         else
         {
            if(this.tesedu==null)
            {
               this.tesedu=this.hisogumen();
            }
         }
         if(!param1.ctrlKey)
         {
            this.vebe=null;
         }
         else
         {
            if(this.vebe==null)
            {
               this.vebe=this.hisogumen();
            }
         }
         if(param1.buttonDown)
         {
            new Vector.<IntPoint>(1)[0]=this.hisogumen();
            dispatchEvent(new Cecan(new Vector.<IntPoint>(1)));
         }
         if(this.vebe!=null)
         {
            _loc2_=this.hisogumen();
            this.wamytu(this.vebe.x_-_loc2_.x_,this.vebe.y_-_loc2_.y_);
            this.draw();
         }
         else
         {
            this.hyjelik();
         }
         return;
      }

      private function huho(param1:int, param2:int) : Gutunul {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = param1+param2*wagagoq;
         var _loc4_:Gutunul = this.caledeli[_loc3_];
         if(_loc4_!=null)
         {
            return _loc4_;
         }
         _loc4_=new Gutunul();
         this.caledeli[_loc3_]=_loc4_;
         return _loc4_;
      }

      private function metibaje(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         delete this.caledeli[[param1+param2*wagagoq]];
         return;
      }

      private function daqit(param1:int, param2:int, param3:Gutunul) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:BitmapData = null;
         var _loc6_:BitmapData = null;
         var _loc7_:uint = 0;
         var _loc4_:Rectangle = new Rectangle(param1*bysim,param2*bysim,bysim,bysim);
         this.nyq.zahijizu(_loc4_);
         this.kozekijon.setPixel32(param1,param2,0);
         if(param3==null)
         {
            return;
         }
         if(param3.qenozyk[Himo.zacuzo]!=-1)
         {
            _loc5_=Qezab.getBitmapData(param3.qenozyk[Himo.zacuzo]);
            this.nyq.copyTo(_loc5_,_loc5_.rect,_loc4_);
         }
         if(param3.qenozyk[Himo.himuvypeb]!=-1)
         {
            _loc6_=ObjectLibrary.getTextureFromType(param3.qenozyk[Himo.himuvypeb]);
            if(_loc6_==null||_loc6_==this.balobeda)
            {
               this.nyq.copyTo(this.sycihecip,this.sycihecip.rect,_loc4_);
            }
            else
            {
               this.nyq.copyTo(_loc6_,_loc6_.rect,_loc4_);
            }
         }
         if(param3.qenozyk[Himo.picobozuc]!=-1)
         {
            _loc7_=Vehulumes.getColor(param3.qenozyk[Himo.picobozuc]);
            this.kozekijon.setPixel32(param1,param2,1593835520|_loc7_);
         }
         return;
      }

      private function hyjelik() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Rectangle = this.pot();
         var _loc2_:Graphics = this.nikigiqi.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(1,16777215);
         _loc2_.beginFill(16777215,0.1);
         _loc2_.drawRect(_loc1_.x,_loc1_.y,_loc1_.width,_loc1_.height);
         _loc2_.endFill();
         _loc2_.lineStyle();
         return;
      }

      public function draw() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Matrix = null;
         var _loc3_:* = 0;
         var _loc4_:BitmapData = null;
         var _loc1_:int = loko/this.gyf;
         this.map_.fillRect(this.map_.rect,0);
         this.nyq.favacy(new Rectangle(this.lyhoqubi.x_*bysim,this.lyhoqubi.y_*bysim,_loc1_,_loc1_),this.map_,this.map_.rect);
         _loc2_=new Matrix();
         _loc2_.identity();
         _loc3_=bysim*this.gyf;
         if(this.gyf>2)
         {
            _loc4_=new BitmapData(loko/_loc3_,loko/_loc3_);
            _loc4_.copyPixels(this.kozekijon,new Rectangle(this.lyhoqubi.x_,this.lyhoqubi.y_,_loc1_,_loc1_),PointUtil.qohusovu);
            _loc2_.scale(_loc3_,_loc3_);
            this.map_.draw(_loc4_,_loc2_);
         }
         else
         {
            _loc2_.translate(-this.lyhoqubi.x_,-this.lyhoqubi.y_);
            _loc2_.scale(_loc3_,_loc3_);
            this.map_.draw(this.kozekijon,_loc2_,null,null,this.map_.rect);
         }
         this.hyjelik();
         return;
      }
   }

}