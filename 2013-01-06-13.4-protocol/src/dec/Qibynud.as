package dec
{
[CLASS1636]   import flash.display.Sprite;
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
   import com.company.util.Sojef;
   import com.company.assembleegameclient.map.Lakum;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vin;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import com.company.util.PointUtil;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;


   class Qibynud extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Qibynud() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gymutir=new Dictionary();
         this.ligizy=new Tilazanet(siqecupyz*jecuk,siqecupyz*jecuk,true,0);
         this.desa=new BitmapData(siqecupyz,siqecupyz,true,0);
         this.map_=new BitmapData(soga,soga,true,0);
         this.pitylur=new Shape();
         super();
         graphics.beginBitmapFill(nydoquj,null,true);
         graphics.drawRect(0,0,soga,soga);
         addChild(new Bitmap(this.map_));
         addChild(this.pitylur);
         this.womike=new IntPoint(siqecupyz/2-this.putimyp()/2,siqecupyz/2-this.putimyp()/2);
         this.lanamoc=AssetLibrary.zovy("invisible",0);
         this.siwyl=AssetLibrary.zovy("lofiObj3",255);
         this.draw();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static var fedikac:Class = Rehihan;

      private static var nydoquj:BitmapData = new fedikac().bitmapData;

      public static const siqecupyz:int = 512;

      public static const jecuk:int = 16;

      public static const soga:int = 512;

      public static const gepewi:Number = 0.0625;

      public static const typi:Number = 16;

      public var gymutir:Dictionary;

      public var ligizy:Tilazanet;

      public var desa:BitmapData;

      public var map_:BitmapData;

      public var pitylur:Shape;

      public var womike:IntPoint;

      public var jiso:Number = 1;

      private var lylyhe:IntPoint = null;

      private var vitosyw:IntPoint = null;

      private var lanamoc:BitmapData;

      private var siwyl:BitmapData;

      public function getType(param1:int, param2:int, param3:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Luvotat = this.qifybege(param1,param2);
         if(_loc4_==null)
         {
            return -1;
         }
         return _loc4_.lakejuzyg[param3];
      }

      public function qifybege(param1:int, param2:int) : Luvotat {
         return this.gymutir[param1+param2*siqecupyz];
      }

      public function wegowe(param1:int, param2:int, param3:int, param4:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Luvotat = this.juji(param1,param2);
         if(_loc5_.lakejuzyg[param3]==param4)
         {
            return;
         }
         _loc5_.lakejuzyg[param3]=param4;
         this.gujoruj(param1,param2,_loc5_);
         return;
      }

      public function togiwy(param1:int, param2:int) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Luvotat = this.qifybege(param1,param2);
         if(_loc3_==null)
         {
            return null;
         }
         return _loc3_.semes;
      }

      public function cyhynoty(param1:int, param2:int, param3:String) : void {
         var _loc4_:Luvotat = this.juji(param1,param2);
         _loc4_.semes=param3;
         return;
      }

      public function gudiba() : Vector.<IntPoint> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         var _loc1_:Vector.<IntPoint> = new Vector.<IntPoint>();
         for (_loc2_ in this.gymutir)
         {
            _loc3_=int(_loc2_);
            _loc1_.push(new IntPoint(_loc3_%siqecupyz,_loc3_/siqecupyz));
         }
         return _loc1_;
      }

      public function motoguho(param1:int, param2:int, param3:Luvotat) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var param3:Luvotat = param3.clone();
         this.gymutir[param1+param2*siqecupyz]=param3;
         this.gujoruj(param1,param2,param3);
         return;
      }

      public function monugepum(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.tizuvony(param1,param2);
         this.gujoruj(param1,param2,null);
         return;
      }

      public function clear() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         for (_loc1_ in this.gymutir)
         {
            _loc2_=int(_loc1_);
            this.monugepum(_loc2_%siqecupyz,_loc2_/siqecupyz);
         }
         return;
      }

      public function tufewimu() : Rectangle {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc5_:String = null;
         var _loc6_:Luvotat = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:int = siqecupyz;
         var _loc2_:int = siqecupyz;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         for (_loc5_ in this.gymutir)
         {
            _loc6_=this.gymutir[_loc5_];
            if(_loc6_.isEmpty())
            {
            }
            else
            {
               _loc7_=int(_loc5_);
               _loc8_=_loc7_%siqecupyz;
               _loc9_=_loc7_/siqecupyz;
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

      private function putimyp() : int {
         return soga/jecuk*this.jiso;
      }

      private function cucu(param1:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param1>1&&this.jiso>=typi||param1<1&&this.jiso<=gepewi)
         {
            return;
         }
         var _loc2_:IntPoint = this.pif();
         this.jiso=this.jiso*param1;
         var _loc3_:IntPoint = this.pif();
         this.bupu(_loc2_.x_-_loc3_.x_,_loc2_.y_-_loc3_.y_);
         return;
      }

      private function bekulu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.lylyhe==null&&this.vitosyw==null;
      }

      private function kup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.bekulu())
         {
            return;
         }
         this.cucu(2);
         this.draw();
         return;
      }

      private function zeziv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.bekulu())
         {
            return;
         }
         this.cucu(0.5);
         this.draw();
         return;
      }

      private function moveLeft() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.bekulu())
         {
            return;
         }
         this.bupu(-1,0);
         this.draw();
         return;
      }

      private function moveRight() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.bekulu())
         {
            return;
         }
         this.bupu(1,0);
         this.draw();
         return;
      }

      private function moveUp() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.bekulu())
         {
            return;
         }
         this.bupu(0,-1);
         this.draw();
         return;
      }

      private function moveDown() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.bekulu())
         {
            return;
         }
         this.bupu(0,1);
         this.draw();
         return;
      }

      private function bupu(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:int = siqecupyz-this.putimyp();
         this.womike.x_=Math.max(_loc3_,Math.min(_loc4_,this.womike.x_+param1));
         this.womike.y_=Math.max(_loc3_,Math.min(_loc4_,this.womike.y_+param2));
         return;
      }

      private function pif() : IntPoint {
         var _loc1_:int = Math.max(0,Math.min(soga-1,mouseX));
         var _loc2_:int = Math.max(0,Math.min(soga-1,mouseY));
         return new IntPoint(this.womike.x_+_loc1_/jecuk*this.jiso,this.womike.y_+_loc2_/jecuk*this.jiso);
      }

      public function wotu() : Rectangle {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:IntPoint = this.pif();
         if(this.lylyhe==null)
         {
            return new Rectangle(_loc1_.x_,_loc1_.y_,1,1);
         }
         return new Rectangle(Math.min(_loc1_.x_,this.lylyhe.x_),Math.min(_loc1_.y_,this.lylyhe.y_),Math.abs(_loc1_.x_-this.lylyhe.x_)+1,Math.abs(_loc1_.y_-this.lylyhe.y_)+1);
      }

      private function kuqifyl(param1:IntPoint) : IntPoint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return new IntPoint((param1.x_-this.womike.x_)*jecuk*this.jiso,(param1.y_-this.womike.y_)*jecuk*this.jiso);
      }

      private function votab(param1:int) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1*this.jiso*jecuk;
      }

      private function ruvibu() : Rectangle {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = this.wotu();
         var _loc2_:IntPoint = this.kuqifyl(new IntPoint(_loc1_.x,_loc1_.y));
         _loc1_.x=_loc2_.x_;
         _loc1_.y=_loc2_.y_;
         _loc1_.width=this.votab(_loc1_.width)-1;
         _loc1_.height=this.votab(_loc1_.height)-1;
         return _loc1_;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(MouseEvent.MOUSE_WHEEL,this.jybep);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.jybep);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case Keyboard.SHIFT:
               if(this.lylyhe!=null)
               {
               }
               else
               {
                  this.lylyhe=this.pif();
               }
               break;
            case Keyboard.CONTROL:
               if(this.vitosyw!=null)
               {
               }
               else
               {
                  this.vitosyw=this.pif();
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
            case Sojef.tugivobi:
               this.zeziv();
               break;
            case Sojef.vybazeqom:
               this.kup();
               break;
         }
         this.draw();
         return;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case Keyboard.SHIFT:
               this.lylyhe=null;
               break;
            case Keyboard.CONTROL:
               this.vitosyw=null;
               break;
         }
         this.draw();
         return;
      }

      private function jybep(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.delta>0)
         {
            this.kup();
         }
         else
         {
            if(param1.delta<0)
            {
               this.zeziv();
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:* = 0;
         var _loc2_:Rectangle = this.wotu();
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
         dispatchEvent(new Muviw(_loc3_));
         return;
      }

      private function onMouseMove(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:IntPoint = null;
         if(!param1.shiftKey)
         {
            this.lylyhe=null;
         }
         else
         {
            if(this.lylyhe==null)
            {
               this.lylyhe=this.pif();
            }
         }
         if(!param1.ctrlKey)
         {
            this.vitosyw=null;
         }
         else
         {
            if(this.vitosyw==null)
            {
               this.vitosyw=this.pif();
            }
         }
         if(param1.buttonDown)
         {
            new Vector.<IntPoint>(1)[0]=this.pif();
            dispatchEvent(new Muviw(new Vector.<IntPoint>(1)));
         }
         if(this.vitosyw!=null)
         {
            _loc2_=this.pif();
            this.bupu(this.vitosyw.x_-_loc2_.x_,this.vitosyw.y_-_loc2_.y_);
            this.draw();
         }
         else
         {
            this.cywyzi();
         }
         return;
      }

      private function juji(param1:int, param2:int) : Luvotat {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = param1+param2*siqecupyz;
         var _loc4_:Luvotat = this.gymutir[_loc3_];
         if(_loc4_!=null)
         {
            return _loc4_;
         }
         _loc4_=new Luvotat();
         this.gymutir[_loc3_]=_loc4_;
         return _loc4_;
      }

      private function tizuvony(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         delete this.gymutir[[param1+param2*siqecupyz]];
         return;
      }

      private function gujoruj(param1:int, param2:int, param3:Luvotat) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:BitmapData = null;
         var _loc6_:BitmapData = null;
         var _loc7_:uint = 0;
         var _loc4_:Rectangle = new Rectangle(param1*jecuk,param2*jecuk,jecuk,jecuk);
         this.ligizy.pyqozarel(_loc4_);
         this.desa.setPixel32(param1,param2,0);
         if(param3==null)
         {
            return;
         }
         if(param3.lakejuzyg[Duj.jejem]!=-1)
         {
            _loc5_=Lakum.getBitmapData(param3.lakejuzyg[Duj.jejem]);
            this.ligizy.copyTo(_loc5_,_loc5_.rect,_loc4_);
         }
         if(param3.lakejuzyg[Duj.kehozyby]!=-1)
         {
            _loc6_=ObjectLibrary.getTextureFromType(param3.lakejuzyg[Duj.kehozyby]);
            if(_loc6_==null||_loc6_==this.lanamoc)
            {
               this.ligizy.copyTo(this.siwyl,this.siwyl.rect,_loc4_);
            }
            else
            {
               this.ligizy.copyTo(_loc6_,_loc6_.rect,_loc4_);
            }
         }
         if(param3.lakejuzyg[Duj.kumuguz]!=-1)
         {
            _loc7_=Vin.getColor(param3.lakejuzyg[Duj.kumuguz]);
            this.desa.setPixel32(param1,param2,1593835520|_loc7_);
         }
         return;
      }

      private function cywyzi() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Rectangle = this.ruvibu();
         var _loc2_:Graphics = this.pitylur.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(1,16777215);
         _loc2_.beginFill(16777215,0.1);
         _loc2_.drawRect(_loc1_.x,_loc1_.y,_loc1_.width,_loc1_.height);
         _loc2_.endFill();
         _loc2_.lineStyle();
         return;
      }

      public function draw() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Matrix = null;
         var _loc3_:* = 0;
         var _loc4_:BitmapData = null;
         var _loc1_:int = soga/this.jiso;
         this.map_.fillRect(this.map_.rect,0);
         this.ligizy.goqocama(new Rectangle(this.womike.x_*jecuk,this.womike.y_*jecuk,_loc1_,_loc1_),this.map_,this.map_.rect);
         _loc2_=new Matrix();
         _loc2_.identity();
         _loc3_=jecuk*this.jiso;
         if(this.jiso>2)
         {
            _loc4_=new BitmapData(soga/_loc3_,soga/_loc3_);
            _loc4_.copyPixels(this.desa,new Rectangle(this.womike.x_,this.womike.y_,_loc1_,_loc1_),PointUtil.tirumyf);
            _loc2_.scale(_loc3_,_loc3_);
            this.map_.draw(_loc4_,_loc2_);
         }
         else
         {
            _loc2_.translate(-this.womike.x_,-this.womike.y_);
            _loc2_.scale(_loc3_,_loc3_);
            this.map_.draw(this.desa,_loc2_,null,null,this.map_.rect);
         }
         this.cywyzi();
         return;
      }
   }
[/CLASS]
}