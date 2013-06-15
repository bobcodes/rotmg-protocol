package noniq
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
   import com.company.util.Coluf;
   import com.company.assembleegameclient.map.Qemujy;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Focu;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import com.company.util.PointUtil;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;


   class Vibefij extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Vibefij() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zycelad=new Dictionary();
         this.sygugomaq=new Kuhizitug(luqecacaq*fybah,luqecacaq*fybah,true,0);
         this.dyvifug=new BitmapData(luqecacaq,luqecacaq,true,0);
         this.map_=new BitmapData(tici,tici,true,0);
         this.fatyjyku=new Shape();
         super();
         graphics.beginBitmapFill(fyduf,null,true);
         graphics.drawRect(0,0,tici,tici);
         addChild(new Bitmap(this.map_));
         addChild(this.fatyjyku);
         this.zozo=new IntPoint(luqecacaq/2-this.cilewo()/2,luqecacaq/2-this.cilewo()/2);
         this.tahacy=AssetLibrary.tem("invisible",0);
         this.wosyzu=AssetLibrary.tem("lofiObj3",255);
         this.draw();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static var cyjyly:Class = Miwe;

      private static var fyduf:BitmapData = new cyjyly().bitmapData;

      public static const luqecacaq:int = 512;

      public static const fybah:int = 16;

      public static const tici:int = 512;

      public static const cij:Number = 0.0625;

      public static const cyvesirav:Number = 16;

      public var zycelad:Dictionary;

      public var sygugomaq:Kuhizitug;

      public var dyvifug:BitmapData;

      public var map_:BitmapData;

      public var fatyjyku:Shape;

      public var zozo:IntPoint;

      public var sazapuri:Number = 1;

      private var qigysojif:IntPoint = null;

      private var sajevi:IntPoint = null;

      private var tahacy:BitmapData;

      private var wosyzu:BitmapData;

      public function getType(param1:int, param2:int, param3:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Gyd = this.zekotal(param1,param2);
         if(_loc4_==null)
         {
            return -1;
         }
         return _loc4_.vodypemo[param3];
      }

      public function zekotal(param1:int, param2:int) : Gyd {
         return this.zycelad[param1+param2*luqecacaq];
      }

      public function sara(param1:int, param2:int, param3:int, param4:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Gyd = this.wuh(param1,param2);
         if(_loc5_.vodypemo[param3]==param4)
         {
            return;
         }
         _loc5_.vodypemo[param3]=param4;
         this.turecon(param1,param2,_loc5_);
         return;
      }

      public function homosuwyd(param1:int, param2:int) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Gyd = this.zekotal(param1,param2);
         if(_loc3_==null)
         {
            return null;
         }
         return _loc3_.quduk;
      }

      public function nepi(param1:int, param2:int, param3:String) : void {
         var _loc4_:Gyd = this.wuh(param1,param2);
         _loc4_.quduk=param3;
         return;
      }

      public function wawipivy() : Vector.<IntPoint> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         var _loc1_:Vector.<IntPoint> = new Vector.<IntPoint>();
         for (_loc2_ in this.zycelad)
         {
            _loc3_=int(_loc2_);
            _loc1_.push(new IntPoint(_loc3_%luqecacaq,_loc3_/luqecacaq));
         }
         return _loc1_;
      }

      public function nyfumec(param1:int, param2:int, param3:Gyd) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var param3:Gyd = param3.clone();
         this.zycelad[param1+param2*luqecacaq]=param3;
         this.turecon(param1,param2,param3);
         return;
      }

      public function cugekud(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.suqica(param1,param2);
         this.turecon(param1,param2,null);
         return;
      }

      public function clear() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         for (_loc1_ in this.zycelad)
         {
            _loc2_=int(_loc1_);
            this.cugekud(_loc2_%luqecacaq,_loc2_/luqecacaq);
         }
         return;
      }

      public function nevo() : Rectangle {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc5_:String = null;
         var _loc6_:Gyd = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:int = luqecacaq;
         var _loc2_:int = luqecacaq;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         for (_loc5_ in this.zycelad)
         {
            _loc6_=this.zycelad[_loc5_];
            if(_loc6_.isEmpty())
            {
            }
            else
            {
               _loc7_=int(_loc5_);
               _loc8_=_loc7_%luqecacaq;
               _loc9_=_loc7_/luqecacaq;
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

      private function cilewo() : int {
         return tici/fybah*this.sazapuri;
      }

      private function powiqeci(param1:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param1>1&&this.sazapuri>=cyvesirav||param1<1&&this.sazapuri<=cij)
         {
            return;
         }
         var _loc2_:IntPoint = this.medunoje();
         this.sazapuri=this.sazapuri*param1;
         var _loc3_:IntPoint = this.medunoje();
         this.kajimotil(_loc2_.x_-_loc3_.x_,_loc2_.y_-_loc3_.y_);
         return;
      }

      private function sar() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.qigysojif==null&&this.sajevi==null;
      }

      private function kiserely() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.sar())
         {
            return;
         }
         this.powiqeci(2);
         this.draw();
         return;
      }

      private function tymygy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.sar())
         {
            return;
         }
         this.powiqeci(0.5);
         this.draw();
         return;
      }

      private function moveLeft() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.sar())
         {
            return;
         }
         this.kajimotil(-1,0);
         this.draw();
         return;
      }

      private function moveRight() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.sar())
         {
            return;
         }
         this.kajimotil(1,0);
         this.draw();
         return;
      }

      private function moveUp() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.sar())
         {
            return;
         }
         this.kajimotil(0,-1);
         this.draw();
         return;
      }

      private function moveDown() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.sar())
         {
            return;
         }
         this.kajimotil(0,1);
         this.draw();
         return;
      }

      private function kajimotil(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:int = luqecacaq-this.cilewo();
         this.zozo.x_=Math.max(_loc3_,Math.min(_loc4_,this.zozo.x_+param1));
         this.zozo.y_=Math.max(_loc3_,Math.min(_loc4_,this.zozo.y_+param2));
         return;
      }

      private function medunoje() : IntPoint {
         var _loc1_:int = Math.max(0,Math.min(tici-1,mouseX));
         var _loc2_:int = Math.max(0,Math.min(tici-1,mouseY));
         return new IntPoint(this.zozo.x_+_loc1_/fybah*this.sazapuri,this.zozo.y_+_loc2_/fybah*this.sazapuri);
      }

      public function vofon() : Rectangle {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:IntPoint = this.medunoje();
         if(this.qigysojif==null)
         {
            return new Rectangle(_loc1_.x_,_loc1_.y_,1,1);
         }
         return new Rectangle(Math.min(_loc1_.x_,this.qigysojif.x_),Math.min(_loc1_.y_,this.qigysojif.y_),Math.abs(_loc1_.x_-this.qigysojif.x_)+1,Math.abs(_loc1_.y_-this.qigysojif.y_)+1);
      }

      private function konyw(param1:IntPoint) : IntPoint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return new IntPoint((param1.x_-this.zozo.x_)*fybah*this.sazapuri,(param1.y_-this.zozo.y_)*fybah*this.sazapuri);
      }

      private function muqicezu(param1:int) : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1*this.sazapuri*fybah;
      }

      private function nuqywi() : Rectangle {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = this.vofon();
         var _loc2_:IntPoint = this.konyw(new IntPoint(_loc1_.x,_loc1_.y));
         _loc1_.x=_loc2_.x_;
         _loc1_.y=_loc2_.y_;
         _loc1_.width=this.muqicezu(_loc1_.width)-1;
         _loc1_.height=this.muqicezu(_loc1_.height)-1;
         return _loc1_;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.luw);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.luw);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case Keyboard.SHIFT:
               if(this.qigysojif!=null)
               {
                  break;
               }
               this.qigysojif=this.medunoje();
               break;
            case Keyboard.CONTROL:
               if(this.sajevi!=null)
               {
                  break;
               }
               this.sajevi=this.medunoje();
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
            case Coluf.fotodygo:
               this.tymygy();
               break;
            case Coluf.fycy:
               this.kiserely();
               break;
         }
         this.draw();
         return;
      }

      private function luw(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case Keyboard.SHIFT:
               this.qigysojif=null;
               break;
            case Keyboard.CONTROL:
               this.sajevi=null;
               break;
         }
         this.draw();
         return;
      }

      private function lyqesusys(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.delta>0)
         {
            this.kiserely();
         }
         else
         {
            if(param1.delta<0)
            {
               this.tymygy();
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:* = 0;
         var _loc2_:Rectangle = this.vofon();
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
         dispatchEvent(new Resynuf(_loc3_));
         return;
      }

      private function onMouseMove(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:IntPoint = null;
         if(!param1.shiftKey)
         {
            this.qigysojif=null;
         }
         else
         {
            if(this.qigysojif==null)
            {
               this.qigysojif=this.medunoje();
            }
         }
         if(!param1.ctrlKey)
         {
            this.sajevi=null;
         }
         else
         {
            if(this.sajevi==null)
            {
               this.sajevi=this.medunoje();
            }
         }
         if(param1.buttonDown)
         {
            new Vector.<IntPoint>(1)[0]=this.medunoje();
            dispatchEvent(new Resynuf(new Vector.<IntPoint>(1)));
         }
         if(this.sajevi!=null)
         {
            _loc2_=this.medunoje();
            this.kajimotil(this.sajevi.x_-_loc2_.x_,this.sajevi.y_-_loc2_.y_);
            this.draw();
         }
         else
         {
            this.vare();
         }
         return;
      }

      private function wuh(param1:int, param2:int) : Gyd {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = param1+param2*luqecacaq;
         var _loc4_:Gyd = this.zycelad[_loc3_];
         if(_loc4_!=null)
         {
            return _loc4_;
         }
         _loc4_=new Gyd();
         this.zycelad[_loc3_]=_loc4_;
         return _loc4_;
      }

      private function suqica(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         GlobalNotificationActionte this.zycelad[[param1+param2*luqecacaq]];
         return;
      }

      private function turecon(param1:int, param2:int, param3:Gyd) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:BitmapData = null;
         var _loc6_:BitmapData = null;
         var _loc7_:uint = 0;
         var _loc4_:Rectangle = new Rectangle(param1*fybah,param2*fybah,fybah,fybah);
         this.sygugomaq.fabumib(_loc4_);
         this.dyvifug.setPixel32(param1,param2,0);
         if(param3==null)
         {
            return;
         }
         if(param3.vodypemo[Cariwepy.pivycina]!=-1)
         {
            _loc5_=Qemujy.getBitmapData(param3.vodypemo[Cariwepy.pivycina]);
            this.sygugomaq.copyTo(_loc5_,_loc5_.rect,_loc4_);
         }
         if(param3.vodypemo[Cariwepy.nanyt]!=-1)
         {
            _loc6_=ObjectLibrary.getTextureFromType(param3.vodypemo[Cariwepy.nanyt]);
            if(_loc6_==null||_loc6_==this.tahacy)
            {
               this.sygugomaq.copyTo(this.wosyzu,this.wosyzu.rect,_loc4_);
            }
            else
            {
               this.sygugomaq.copyTo(_loc6_,_loc6_.rect,_loc4_);
            }
         }
         if(param3.vodypemo[Cariwepy.cis]!=-1)
         {
            _loc7_=Focu.getColor(param3.vodypemo[Cariwepy.cis]);
            this.dyvifug.setPixel32(param1,param2,1593835520|_loc7_);
         }
         return;
      }

      private function vare() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = this.nuqywi();
         var _loc2_:Graphics = this.fatyjyku.graphics;
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
         var _loc1_:int = tici/this.sazapuri;
         this.map_.fillRect(this.map_.rect,0);
         this.sygugomaq.ryseqyl(new Rectangle(this.zozo.x_*fybah,this.zozo.y_*fybah,_loc1_,_loc1_),this.map_,this.map_.rect);
         _loc2_=new Matrix();
         _loc2_.identity();
         _loc3_=fybah*this.sazapuri;
         if(this.sazapuri>2)
         {
            _loc4_=new BitmapData(tici/_loc3_,tici/_loc3_);
            _loc4_.copyPixels(this.dyvifug,new Rectangle(this.zozo.x_,this.zozo.y_,_loc1_,_loc1_),PointUtil.wota);
            _loc2_.scale(_loc3_,_loc3_);
            this.map_.draw(_loc4_,_loc2_);
         }
         else
         {
            _loc2_.translate(-this.zozo.x_,-this.zozo.y_);
            _loc2_.scale(_loc3_,_loc3_);
            this.map_.draw(this.dyvifug,_loc2_,null,null,this.map_.rect);
         }
         this.vare();
         return;
      }
   }

}