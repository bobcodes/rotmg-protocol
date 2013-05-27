package qudulul
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import lutyfopo.Console;
   import lutyfopo.Huzujuty;
   import lutyfopo.Syby;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.text.TextFieldAutoSize;


   public class Hycoba extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hycoba(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.console=param1;
         this.bg=new Sprite();
         this.bg.name="background";
         addChild(this.bg);
         return;
      }

      public static const mowof:String = "draggingStarted";

      public static const jukeremeg:String = "draggingEnded";

      public static const qik:String = "scalingStarted";

      public static const lytylyfu:String = "scalingEnded";

      public static const mowode:String = "visibilityChanged";

      private static const TEXT_ROLL:String = "TEXT_ROLL";

      private static function nicu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         TextField(param1.currentTarget).dispatchEvent(new TextEvent(TEXT_ROLL));
         return;
      }

      private static function cepijy(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var index:int = 0;
         var scrollH:Number = NaN;
         var w:Number = NaN;
         var X:XML = null;
         var txtformat:XML = null;
         var e:MouseEvent = param1;
         var field:TextField = e.currentTarget as TextField;
         if(field.scrollH>0)
         {
            scrollH=field.scrollH;
            w=field.width;
            field.width=w+scrollH;
            index=field.getCharIndexAtPoint(field.mouseX+scrollH,field.mouseY);
            field.width=w;
            field.scrollH=scrollH;
         }
         else
         {
            index=field.getCharIndexAtPoint(field.mouseX,field.mouseY);
         }
         var url:String = null;
         if(index>0)
         {
            try
            {
               X=new XML(field.getXMLText(index,index+1));
               if(X.hasOwnProperty("textformat"))
               {
                  txtformat=X["textformat"][0] as XML;
                  if(txtformat)
                  {
                     url=txtformat.@url;
                  }
               }
            }
            catch(err:Error)
            {
               if(!_loc4_)
               {
                  url=null;
               }
            }
         }
         field.dispatchEvent(new TextEvent(TEXT_ROLL,false,false,url));
         return;
      }

      private var pyqozofo:Array;

      private var hokugapo:Point;

      private var tijefovo:TextField;

      protected var console:Console;

      protected var bg:Sprite;

      protected var scaler:Sprite;

      protected var zem:TextField;

      protected var vamaboby:int = 18;

      protected var dabapiku:int = 18;

      private var ciwec:Point;

      public var weju:Boolean = true;

      protected function get config() : Huzujuty {
         return this.console.config;
      }

      protected function get style() : Syby {
         return this.console.config.style;
      }

      protected function init(param1:Number, param2:Number, param3:Boolean=false, param4:Number=-1, param5:Number=-1, param6:int=-1) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(param4>=0?param4:this.style.backgroundColor,param5>=0?param5:this.style.lotezika);
         if(param6<0)
         {
            param6=this.style.semeqez;
         }
         if(param6<=0)
         {
            this.bg.graphics.drawRect(0,0,100,100);
         }
         else
         {
            this.bg.graphics.drawRoundRect(0,0,param6+10,param6+10,param6,param6);
            this.bg.scale9Grid=new Rectangle(param6*0.5,param6*0.5,10,10);
         }
         this.kuwyqazo=param3;
         this.width=param1;
         this.height=param2;
         return;
      }

      public function close() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hyvevyjaq();
         this.console.panels.tooltip();
         if(parent)
         {
            parent.removeChild(this);
         }
         dispatchEvent(new Event(Event.CLOSE));
         return;
      }

      override public function set visible(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.visible=param1;
         dispatchEvent(new Event(mowode));
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<this.vamaboby)
         {
            param1=this.vamaboby;
         }
         if(this.scaler)
         {
            this.scaler.x=param1;
         }
         this.bg.width=param1;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<this.dabapiku)
         {
            param1=this.dabapiku;
         }
         if(this.scaler)
         {
            this.scaler.y=param1;
         }
         this.bg.height=param1;
         return;
      }

      override public function get width() : Number {
         return this.bg.width;
      }

      override public function get height() : Number {
         return this.bg.height;
      }

      public function cazerono(param1:Array, param2:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.pyqozofo=[param1,param2];
         return;
      }

      protected function kehiza(param1:DisplayObject, param2:Boolean=false) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2)
         {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN,this.dicu);
         }
         else
         {
            param1.addEventListener(MouseEvent.MOUSE_DOWN,this.dicu,false,0,true);
         }
         return;
      }

      private function dicu(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!stage||!this.weju)
         {
            return;
         }
         this.tijefovo=this.goqyc("positioningField",true);
         this.tijefovo.mouseEnabled=false;
         this.tijefovo.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.tijefovo);
         this.tyfuzofy();
         this.ciwec=new Point(x,y);
         this.hokugapo=new Point(mouseX,mouseY);
         this.pyqozofo=[[],[]];
         dispatchEvent(new Event(mowof));
         stage.addEventListener(MouseEvent.MOUSE_UP,this.jozoqaf,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.qozydice,false,0,true);
         return;
      }

      private function qozydice(param1:MouseEvent=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.style.cicosuva==0)
         {
            return;
         }
         var _loc2_:Point = this.tocujy(parent.mouseX-this.hokugapo.x,parent.mouseY-this.hokugapo.y);
         x=_loc2_.x;
         y=_loc2_.y;
         this.tyfuzofy();
         return;
      }

      private function tyfuzofy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tijefovo.text="<low>"+x+","+y+"</low>";
         return;
      }

      private function jozoqaf(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyvevyjaq();
         return;
      }

      private function hyvevyjaq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pyqozofo=null;
         if(stage)
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.jozoqaf);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.qozydice);
         }
         if((this.tijefovo)&&(this.tijefovo.parent))
         {
            this.tijefovo.parent.removeChild(this.tijefovo);
         }
         this.tijefovo=null;
         dispatchEvent(new Event(jukeremeg));
         return;
      }

      public function moveBackSafePosition() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.ciwec!=null)
         {
            if(((x+this.width<10)||((stage)&&(stage.stageWidth<x+10)))||(y+this.height<10)||(stage)&&(stage.stageHeight<y+20))
            {
               x=this.ciwec.x;
               y=this.ciwec.y;
            }
            this.ciwec=null;
         }
         return;
      }

      public function get kuwyqazo() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.scaler?true:false;
      }

      public function set kuwyqazo(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = 0;
         if((param1)&&!this.scaler)
         {
            _loc2_=8+this.style.controlSize*0.5;
            this.scaler=new Sprite();
            this.scaler.name="scaler";
            this.scaler.graphics.beginFill(0,0);
            this.scaler.graphics.drawRect(-_loc2_*1.5,-_loc2_*1.5,_loc2_*1.5,_loc2_*1.5);
            this.scaler.graphics.endFill();
            this.scaler.graphics.beginFill(this.style.controlColor,this.style.lotezika);
            this.scaler.graphics.moveTo(0,0);
            this.scaler.graphics.lineTo(-_loc2_,0);
            this.scaler.graphics.lineTo(0,-_loc2_);
            this.scaler.graphics.endFill();
            this.scaler.buttonMode=true;
            this.scaler.doubleClickEnabled=true;
            this.scaler.addEventListener(MouseEvent.MOUSE_DOWN,this.wehe,false,0,true);
            addChildAt(this.scaler,getChildIndex(this.bg)+1);
         }
         else
         {
            if(!param1&&(this.scaler))
            {
               if(contains(this.scaler))
               {
                  removeChild(this.scaler);
               }
               this.scaler=null;
            }
         }
         return;
      }

      private function wehe(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tijefovo=this.goqyc("resizingField",true);
         this.tijefovo.mouseEnabled=false;
         this.tijefovo.autoSize=TextFieldAutoSize.RIGHT;
         this.tijefovo.x=-4;
         this.tijefovo.y=-17;
         this.scaler.addChild(this.tijefovo);
         this.qij();
         this.hokugapo=new Point(this.scaler.mouseX,this.scaler.mouseY);
         this.pyqozofo=[[],[]];
         this.scaler.stage.addEventListener(MouseEvent.MOUSE_UP,this.takawiq,false,0,true);
         this.scaler.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.kova,false,0,true);
         dispatchEvent(new Event(qik));
         return;
      }

      private function kova(param1:Event=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Point = this.tocujy(x+mouseX-this.hokugapo.x,y+mouseY-this.hokugapo.x);
         _loc2_.x=_loc2_.x-x;
         _loc2_.y=_loc2_.y-y;
         this.width=_loc2_.x<this.vamaboby?this.vamaboby:_loc2_.x;
         this.height=_loc2_.y<this.dabapiku?this.dabapiku:_loc2_.y;
         this.qij();
         return;
      }

      private function qij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tijefovo.text="<low>"+this.width+","+this.height+"</low>";
         return;
      }

      public function kareby() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.takawiq(null);
         return;
      }

      private function takawiq(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.scaler.stage.removeEventListener(MouseEvent.MOUSE_UP,this.takawiq);
         this.scaler.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.kova);
         this.kova();
         this.pyqozofo=null;
         if((this.tijefovo)&&(this.tijefovo.parent))
         {
            this.tijefovo.parent.removeChild(this.tijefovo);
         }
         this.tijefovo=null;
         dispatchEvent(new Event(lytylyfu));
         return;
      }

      public function goqyc(param1:String, param2:Boolean=false) : TextField {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:TextField = new TextField();
         _loc3_.name=param1;
         _loc3_.styleSheet=this.style.styleSheet;
         if(param2)
         {
            _loc3_.background=true;
            _loc3_.backgroundColor=this.style.backgroundColor;
         }
         return _loc3_;
      }

      private function tocujy(param1:Number, param2:Number) : Point {
         return new Point(this.sikopo(param1,true),this.sikopo(param2,false));
      }

      private function sikopo(param1:Number, param2:Boolean) : Number {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:* = NaN;
         var _loc3_:Number = param1+this.width;
         var _loc4_:Array = this.pyqozofo[param2?0:1];
         var _loc5_:int = this.style.cicosuva;
         for each (_loc6_ in _loc4_)
         {
            if(Math.abs(_loc6_-param1)<_loc5_)
            {
               return _loc6_;
            }
            if(Math.abs(_loc6_-_loc3_)<_loc5_)
            {
               return _loc6_-this.width;
            }
         }
         return param1;
      }

      protected function kek(param1:TextField, param2:Function, param3:Function=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.addEventListener(MouseEvent.MOUSE_MOVE,cepijy,false,0,true);
         param1.addEventListener(MouseEvent.ROLL_OUT,nicu,false,0,true);
         param1.addEventListener(TEXT_ROLL,param2,false,0,true);
         if(param3!=null)
         {
            param1.addEventListener(TextEvent.LINK,param3,false,0,true);
         }
         return;
      }
   }

}