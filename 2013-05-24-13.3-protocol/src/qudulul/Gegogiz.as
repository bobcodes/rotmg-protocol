package qudulul
{
   import flash.display.Sprite;
   import lutyfopo.Console;
   import lutyfopo.Huzujuty;
   import flash.geom.Rectangle;
   import flash.display.Shape;
   import flash.text.TextField;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.display.BlendMode;
   import flash.geom.Point;
   import lutyfopo.Syby;
   import flash.ui.Mouse;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.text.TextFieldAutoSize;
   import flash.display.Graphics;


   public class Gegogiz extends Sprite
   {
      public function Gegogiz(param1:Console) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.raw=param1;
         this._config=param1.config;
         buttonMode=true;
         this.witaluc=new Array();
         this.tytufi=new Shape();
         addChild(this.tytufi);
         var _loc2_:Point = new Point();
         _loc2_=globalToLocal(_loc2_);
         this.nuvohafaj=new Rectangle(-param1.stage.stageWidth*1.5+_loc2_.x,-param1.stage.stageHeight*1.5+_loc2_.y,param1.stage.stageWidth*3,param1.stage.stageHeight*3);
         graphics.beginFill(this._config.style.backgroundColor,0.2);
         graphics.drawRect(this.nuvohafaj.x,this.nuvohafaj.y,this.nuvohafaj.width,this.nuvohafaj.height);
         graphics.endFill();
         this.toc=this.raw.panels.mainPanel.goqyc("positionText",true);
         this.toc.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.toc);
         this.bujudi=new Bitmap();
         this.bujudi.scaleY=this.bujudi.scaleX=2;
         addChild(this.bujudi);
         addEventListener(MouseEvent.CLICK,this.hoso,false,0,true);
         addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove,false,0,true);
         this.onMouseMove();
         if(this._config.sovafotam)
         {
            Mouse.hide();
         }
         this.raw.report("<b>Ruler started. Click on two locations to measure.</b>",-1);
         return;
      }

      private var raw:Console;

      private var _config:Huzujuty;

      private var nuvohafaj:Rectangle;

      private var tytufi:Shape;

      private var toc:TextField;

      private var bujudi:Bitmap;

      private var witaluc:Array;

      private function onMouseMove(param1:MouseEvent=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var m:Matrix = null;
         var e:MouseEvent = param1;
         this.tytufi.graphics.clear();
         this.tytufi.graphics.lineStyle(1,11193344,1);
         this.tytufi.graphics.moveTo(this.nuvohafaj.x,mouseY);
         this.tytufi.graphics.lineTo(this.nuvohafaj.x+this.nuvohafaj.width,mouseY);
         this.tytufi.graphics.moveTo(mouseX,this.nuvohafaj.y);
         this.tytufi.graphics.lineTo(mouseX,this.nuvohafaj.y+this.nuvohafaj.height);
         this.tytufi.blendMode=BlendMode.INVERT;
         this.toc.text="<low>"+mouseX+","+mouseY+"</low>";
         var bmd:BitmapData = new BitmapData(30,30);
         try
         {
            m=new Matrix();
            m.tx=-stage.mouseX+15;
            m.ty=-stage.mouseY+15;
            bmd.draw(stage,m);
         }
         catch(err:Error)
         {
            if(_loc5_)
            {
               bmd=null;
            }
         }
         this.bujudi.bitmapData=bmd;
         var d:int = 10;
         this.toc.x=mouseX-this.toc.width-d;
         this.toc.y=mouseY-this.toc.height-d;
         this.bujudi.x=this.toc.x+this.toc.width-this.bujudi.width;
         this.bujudi.y=this.toc.y-this.bujudi.height;
         if(this.toc.x<16)
         {
            this.toc.x=mouseX+d;
            this.bujudi.x=this.toc.x;
         }
         if(this.toc.y<38)
         {
            this.toc.y=mouseY+d;
            this.bujudi.y=this.toc.y+this.toc.height;
         }
         return;
      }

      private function hoso(param1:MouseEvent) : void {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc2_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Point = null;
         var _loc9_:Point = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:TextField = null;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         param1.stopPropagation();
         var _loc3_:Syby = this._config.style;
         if(this.witaluc.length==0)
         {
            _loc2_=new Point(param1.localX,param1.localY);
            graphics.lineStyle(1,16711680);
            graphics.drawCircle(_loc2_.x,_loc2_.y,3);
            this.witaluc.push(_loc2_);
         }
         else
         {
            if(this.witaluc.length==1)
            {
               this.bujudi.bitmapData=null;
               if(this._config.sovafotam)
               {
                  Mouse.show();
               }
               removeChild(this.tytufi);
               removeChild(this.toc);
               removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
               _loc2_=this.witaluc[0];
               _loc4_=new Point(param1.localX,param1.localY);
               this.witaluc.push(_loc4_);
               graphics.clear();
               graphics.beginFill(_loc3_.backgroundColor,0.4);
               graphics.drawRect(this.nuvohafaj.x,this.nuvohafaj.y,this.nuvohafaj.width,this.nuvohafaj.height);
               graphics.endFill();
               graphics.lineStyle(1.5,16711680);
               graphics.drawCircle(_loc2_.x,_loc2_.y,4);
               graphics.lineStyle(1.5,16750848);
               graphics.drawCircle(_loc4_.x,_loc4_.y,4);
               _loc5_=Point.interpolate(_loc2_,_loc4_,0.5);
               graphics.lineStyle(1,11184810);
               graphics.drawCircle(_loc5_.x,_loc5_.y,4);
               _loc6_=_loc2_;
               _loc7_=_loc4_;
               if(_loc2_.x>_loc4_.x)
               {
                  _loc6_=_loc4_;
                  _loc7_=_loc2_;
               }
               _loc8_=_loc2_;
               _loc9_=_loc4_;
               if(_loc2_.y>_loc4_.y)
               {
                  _loc8_=_loc4_;
                  _loc9_=_loc2_;
               }
               _loc10_=_loc7_.x-_loc6_.x;
               _loc11_=_loc9_.y-_loc8_.y;
               _loc12_=Point.distance(_loc2_,_loc4_);
               _loc13_=this.lusifygoc(_loc3_.highColor);
               _loc13_.text=this.round(_loc2_.x)+","+this.round(_loc2_.y);
               _loc13_.x=_loc2_.x;
               _loc13_.y=_loc2_.y-(_loc8_==_loc2_?14:0);
               addChild(_loc13_);
               _loc13_=this.lusifygoc(_loc3_.highColor);
               _loc13_.text=this.round(_loc4_.x)+","+this.round(_loc4_.y);
               _loc13_.x=_loc4_.x;
               _loc13_.y=_loc4_.y-(_loc8_==_loc4_?14:0);
               addChild(_loc13_);
               if(_loc10_>40||_loc11_>25)
               {
                  _loc13_=this.lusifygoc(_loc3_.lowColor);
                  _loc13_.text=this.round(_loc5_.x)+","+this.round(_loc5_.y);
                  _loc13_.x=_loc5_.x;
                  _loc13_.y=_loc5_.y;
                  addChild(_loc13_);
               }
               graphics.lineStyle(1,11193344,0.5);
               graphics.moveTo(this.nuvohafaj.x,_loc8_.y);
               graphics.lineTo(this.nuvohafaj.x+this.nuvohafaj.width,_loc8_.y);
               graphics.moveTo(this.nuvohafaj.x,_loc9_.y);
               graphics.lineTo(this.nuvohafaj.x+this.nuvohafaj.width,_loc9_.y);
               graphics.moveTo(_loc6_.x,this.nuvohafaj.y);
               graphics.lineTo(_loc6_.x,this.nuvohafaj.y+this.nuvohafaj.height);
               graphics.moveTo(_loc7_.x,this.nuvohafaj.y);
               graphics.lineTo(_loc7_.x,this.nuvohafaj.y+this.nuvohafaj.height);
               _loc14_=this.round(this.angle(_loc2_,_loc4_),100);
               _loc15_=this.round(this.angle(_loc4_,_loc2_),100);
               graphics.lineStyle(1,11141120,0.8);
               this.jiq(graphics,10,_loc2_,_loc14_,-90);
               graphics.lineStyle(1,13404160,0.8);
               this.jiq(graphics,10,_loc4_,_loc15_,-90);
               graphics.lineStyle(2,65280,0.7);
               graphics.moveTo(_loc2_.x,_loc2_.y);
               graphics.lineTo(_loc4_.x,_loc4_.y);
               this.raw.report("Ruler results: (red) <b>["+_loc2_.x+","+_loc2_.y+"]</b> to (orange) <b>["+_loc4_.x+","+_loc4_.y+"]</b>",-2);
               this.raw.report("Distance: <b>"+this.round(_loc12_,100)+"</b>",-2);
               this.raw.report("Mid point: <b>["+_loc5_.x+","+_loc5_.y+"]</b>",-2);
               this.raw.report("Width:<b>"+_loc10_+"</b>, Height: <b>"+_loc11_+"</b>",-2);
               this.raw.report("Angle from first point (red): <b>"+_loc14_+"°</b>",-2);
               this.raw.report("Angle from second point (orange): <b>"+_loc15_+"°</b>",-2);
            }
            else
            {
               this.exit();
            }
         }
         return;
      }

      public function exit() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.raw=null;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function lusifygoc(param1:Number, param2:Boolean=true) : TextField {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:TextFormat = new TextFormat(this._config.style.menuFont,this._config.style.menuFontSize,param1,param2,true,null,null,TextFormatAlign.RIGHT);
         var _loc4_:TextField = new TextField();
         _loc4_.autoSize=TextFieldAutoSize.RIGHT;
         _loc4_.selectable=false;
         _loc4_.defaultTextFormat=_loc3_;
         return _loc4_;
      }

      private function round(param1:Number, param2:uint=10) : Number {
         return Math.round(param1*param2)/param2;
      }

      private function angle(param1:Point, param2:Point) : Number {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Number = Math.atan2(param2.y-param1.y,param2.x-param1.x)/Math.PI*180;
         _loc3_=_loc3_+90;
         if(_loc3_>180)
         {
            _loc3_=_loc3_-360;
         }
         return _loc3_;
      }

      private function jiq(param1:Graphics, param2:Number, param3:Point, param4:Number=180, param5:Number=0) : Point {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Point = null;
         var _loc6_:* = false;
         if(param4<0)
         {
            _loc6_=true;
            param4=Math.abs(param4);
         }
         var _loc7_:Number = param4*Math.PI/180;
         var _loc8_:Number = param5*Math.PI/180;
         var _loc9_:Point = this.ser(param2,_loc8_);
         _loc9_.offset(param3.x,param3.y);
         param1.moveTo(_loc9_.x,_loc9_.y);
         var _loc10_:Number = 0;
         var _loc11_:* = 1;
         while(_loc11_<=_loc7_+1)
         {
            _loc12_=_loc11_<=_loc7_?_loc11_:_loc7_;
            _loc13_=_loc12_-_loc10_;
            _loc14_=1+0.12*_loc13_*_loc13_;
            _loc15_=this.ser(param2*_loc14_,(_loc12_-_loc13_/2)*(1)+_loc8_);
            _loc15_.offset(param3.x,param3.y);
            _loc9_=this.ser(param2,_loc12_*(1)+_loc8_);
            _loc9_.offset(param3.x,param3.y);
            param1.curveTo(_loc15_.x,_loc15_.y,_loc9_.x,_loc9_.y);
            _loc10_=_loc12_;
            _loc11_++;
         }
         return _loc9_;
      }

      private function ser(param1:Number, param2:Number) : Point {
         return new Point(param1*Math.cos(param2),param1*Math.sin(param2));
      }
   }

}