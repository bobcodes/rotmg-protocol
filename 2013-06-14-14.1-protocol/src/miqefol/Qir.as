package miqefol
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import zipirytab.Console;
   import zipirytab.Winit;
   import zipirytab.Vohodolol;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.text.TextFieldAutoSize;


   public class Qir extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qir(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.console=param1;
         this.bg=new Sprite();
         this.bg.name="background";
         addChild(this.bg);
         return;
      }

      public static const gajidehav:String = "draggingStarted";

      public static const wivolusus:String = "draggingEnded";

      public static const tynazevi:String = "scalingStarted";

      public static const nawisuce:String = "scalingEnded";

      public static const papudy:String = "visibilityChanged";

      private static const TEXT_ROLL:String = "TEXT_ROLL";

      private static function dagaj(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         TextField(param1.currentTarget).dispatchEvent(new TextEvent(TEXT_ROLL));
         return;
      }

      private static function dufuku(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
               if(_loc4_||(param1))
               {
                  url=null;
               }
            }
         }
         field.dispatchEvent(new TextEvent(TEXT_ROLL,false,false,url));
         return;
      }

      private var poqo:Array;

      private var powabyhem:Point;

      private var vafaryqoz:TextField;

      protected var console:Console;

      protected var bg:Sprite;

      protected var scaler:Sprite;

      protected var zyfile:TextField;

      protected var kavobada:int = 18;

      protected var wus:int = 18;

      private var ryruluzoz:Point;

      public var hymenijul:Boolean = true;

      protected function get config() : Winit {
         return this.console.config;
      }

      protected function get style() : Vohodolol {
         return this.console.config.style;
      }

      protected function init(param1:Number, param2:Number, param3:Boolean=false, param4:Number=-1, param5:Number=-1, param6:int=-1) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(param4>=0?param4:this.style.backgroundColor,param5>=0?param5:this.style.bacykasuv);
         if(param6<0)
         {
            param6=this.style.gyzugu;
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
         this.gynanol=param3;
         this.width=param1;
         this.height=param2;
         return;
      }

      public function close() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fobigap();
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
         dispatchEvent(new Event(papudy));
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<this.kavobada)
         {
            param1=this.kavobada;
         }
         if(this.scaler)
         {
            this.scaler.x=param1;
         }
         this.bg.width=param1;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<this.wus)
         {
            param1=this.wus;
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

      public function wesefaf(param1:Array, param2:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.poqo=[param1,param2];
         return;
      }

      protected function lyjunicut(param1:DisplayObject, param2:Boolean=false) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2)
         {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN,this.wosyfojo);
         }
         else
         {
            param1.addEventListener(MouseEvent.MOUSE_DOWN,this.wosyfojo,false,0,true);
         }
         return;
      }

      private function wosyfojo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!stage||!this.hymenijul)
         {
            return;
         }
         this.vafaryqoz=this.vykipiky("positioningField",true);
         this.vafaryqoz.mouseEnabled=false;
         this.vafaryqoz.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.vafaryqoz);
         this.dymuro();
         this.ryruluzoz=new Point(x,y);
         this.powabyhem=new Point(mouseX,mouseY);
         this.poqo=[[],[]];
         dispatchEvent(new Event(gajidehav));
         stage.addEventListener(MouseEvent.MOUSE_UP,this.palolaz,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.livygi,false,0,true);
         return;
      }

      private function livygi(param1:MouseEvent=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.style.momajuho==0)
         {
            return;
         }
         var _loc2_:Point = this.tahi(parent.mouseX-this.powabyhem.x,parent.mouseY-this.powabyhem.y);
         x=_loc2_.x;
         y=_loc2_.y;
         this.dymuro();
         return;
      }

      private function dymuro() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vafaryqoz.text="<low>"+x+","+y+"</low>";
         return;
      }

      private function palolaz(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fobigap();
         return;
      }

      private function fobigap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.poqo=null;
         if(stage)
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.palolaz);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.livygi);
         }
         if((this.vafaryqoz)&&(this.vafaryqoz.parent))
         {
            this.vafaryqoz.parent.removeChild(this.vafaryqoz);
         }
         this.vafaryqoz=null;
         dispatchEvent(new Event(wivolusus));
         return;
      }

      public function moveBackSafePosition() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.ryruluzoz!=null)
         {
            if(((x+this.width<10)||((stage)&&(stage.stageWidth<x+10)))||(y+this.height<10)||(stage)&&(stage.stageHeight<y+20))
            {
               x=this.ryruluzoz.x;
               y=this.ryruluzoz.y;
            }
            this.ryruluzoz=null;
         }
         return;
      }

      public function get gynanol() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.scaler?true:false;
      }

      public function set gynanol(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:uint = 0;
         if((param1)&&!this.scaler)
         {
            _loc2_=8+this.style.controlSize*0.5;
            this.scaler=new Sprite();
            this.scaler.name="scaler";
            this.scaler.graphics.beginFill(0,0);
            this.scaler.graphics.drawRect(-_loc2_*1.5,-_loc2_*1.5,_loc2_*1.5,_loc2_*1.5);
            this.scaler.graphics.endFill();
            this.scaler.graphics.beginFill(this.style.controlColor,this.style.bacykasuv);
            this.scaler.graphics.moveTo(0,0);
            this.scaler.graphics.lineTo(-_loc2_,0);
            this.scaler.graphics.lineTo(0,-_loc2_);
            this.scaler.graphics.endFill();
            this.scaler.buttonMode=true;
            this.scaler.doubleClickEnabled=true;
            this.scaler.addEventListener(MouseEvent.MOUSE_DOWN,this.piwibewah,false,0,true);
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

      private function piwibewah(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vafaryqoz=this.vykipiky("resizingField",true);
         this.vafaryqoz.mouseEnabled=false;
         this.vafaryqoz.autoSize=TextFieldAutoSize.RIGHT;
         this.vafaryqoz.x=-4;
         this.vafaryqoz.y=-17;
         this.scaler.addChild(this.vafaryqoz);
         this.vehylup();
         this.powabyhem=new Point(this.scaler.mouseX,this.scaler.mouseY);
         this.poqo=[[],[]];
         this.scaler.stage.addEventListener(MouseEvent.MOUSE_UP,this.demy,false,0,true);
         this.scaler.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.jumi,false,0,true);
         dispatchEvent(new Event(tynazevi));
         return;
      }

      private function jumi(param1:Event=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Point = this.tahi(x+mouseX-this.powabyhem.x,y+mouseY-this.powabyhem.x);
         _loc2_.x=_loc2_.x-x;
         _loc2_.y=_loc2_.y-y;
         this.width=_loc2_.x<this.kavobada?this.kavobada:_loc2_.x;
         this.height=_loc2_.y<this.wus?this.wus:_loc2_.y;
         this.vehylup();
         return;
      }

      private function vehylup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vafaryqoz.text="<low>"+this.width+","+this.height+"</low>";
         return;
      }

      public function bidosecij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.demy(null);
         return;
      }

      private function demy(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.scaler.stage.removeEventListener(MouseEvent.MOUSE_UP,this.demy);
         this.scaler.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.jumi);
         this.jumi();
         this.poqo=null;
         if((this.vafaryqoz)&&(this.vafaryqoz.parent))
         {
            this.vafaryqoz.parent.removeChild(this.vafaryqoz);
         }
         this.vafaryqoz=null;
         dispatchEvent(new Event(nawisuce));
         return;
      }

      public function vykipiky(param1:String, param2:Boolean=false) : TextField {
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

      private function tahi(param1:Number, param2:Number) : Point {
         return new Point(this.ciqedefi(param1,true),this.ciqedefi(param2,false));
      }

      private function ciqedefi(param1:Number, param2:Boolean) : Number {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:* = NaN;
         var _loc3_:Number = param1+this.width;
         var _loc4_:Array = this.poqo[param2?0:1];
         var _loc5_:int = this.style.momajuho;
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

      protected function tycucobyr(param1:TextField, param2:Function, param3:Function=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.addEventListener(MouseEvent.MOUSE_MOVE,dufuku,false,0,true);
         param1.addEventListener(MouseEvent.ROLL_OUT,dagaj,false,0,true);
         param1.addEventListener(TEXT_ROLL,param2,false,0,true);
         if(param3!=null)
         {
            param1.addEventListener(TextEvent.LINK,param3,false,0,true);
         }
         return;
      }
   }

}