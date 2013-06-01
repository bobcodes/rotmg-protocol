package ryma
{
[CLASS1846]   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import wacic.Console;
   import wacic.Mosu;
   import wacic.Gewyl;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.text.TextFieldAutoSize;


   public class Nil extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nil(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.console=param1;
         this.bg=new Sprite();
         this.bg.name="background";
         addChild(this.bg);
         return;
      }

      public static const lomyk:String = "draggingStarted";

      public static const niso:String = "draggingEnded";

      public static const mato:String = "scalingStarted";

      public static const furo:String = "scalingEnded";

      public static const seweritu:String = "visibilityChanged";

      private static const TEXT_ROLL:String = "TEXT_ROLL";

      private static function guqyto(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         TextField(param1.currentTarget).dispatchEvent(new TextEvent(TEXT_ROLL));
         return;
      }

      private static function terih(param1:MouseEvent) : void {
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

      private var cidygugat:Array;

      private var soca:Point;

      private var binenuc:TextField;

      protected var console:Console;

      protected var bg:Sprite;

      protected var scaler:Sprite;

      protected var hanapoje:TextField;

      protected var wufetowup:int = 18;

      protected var cudu:int = 18;

      private var hozi:Point;

      public var qecez:Boolean = true;

      protected function get config() : Mosu {
         return this.console.config;
      }

      protected function get style() : Gewyl {
         return this.console.config.style;
      }

      protected function init(param1:Number, param2:Number, param3:Boolean=false, param4:Number=-1, param5:Number=-1, param6:int=-1) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(param4>=0?param4:this.style.backgroundColor,param5>=0?param5:this.style.gazi);
         if(param6<0)
         {
            param6=this.style.gezikup;
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
         this.gof=param3;
         this.width=param1;
         this.height=param2;
         return;
      }

      public function close() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gazupaji();
         this.console.panels.tooltip();
         if(parent)
         {
            parent.removeChild(this);
         }
         dispatchEvent(new Event(Event.CLOSE));
         return;
      }

      override public function set visible(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.visible=param1;
         dispatchEvent(new Event(seweritu));
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<this.wufetowup)
         {
            param1=this.wufetowup;
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
         if(param1<this.cudu)
         {
            param1=this.cudu;
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

      public function disiq(param1:Array, param2:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.cidygugat=[param1,param2];
         return;
      }

      protected function qatada(param1:DisplayObject, param2:Boolean=false) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param2)
         {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN,this.qene);
         }
         else
         {
            param1.addEventListener(MouseEvent.MOUSE_DOWN,this.qene,false,0,true);
         }
         return;
      }

      private function qene(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!stage||!this.qecez)
         {
            return;
         }
         this.binenuc=this.bula("positioningField",true);
         this.binenuc.mouseEnabled=false;
         this.binenuc.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.binenuc);
         this.rematoc();
         this.hozi=new Point(x,y);
         this.soca=new Point(mouseX,mouseY);
         this.cidygugat=[[],[]];
         dispatchEvent(new Event(lomyk));
         stage.addEventListener(MouseEvent.MOUSE_UP,this.wudiqe,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.wiwiwyly,false,0,true);
         return;
      }

      private function wiwiwyly(param1:MouseEvent=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.style.pujup==0)
         {
            return;
         }
         var _loc2_:Point = this.hadotape(parent.mouseX-this.soca.x,parent.mouseY-this.soca.y);
         x=_loc2_.x;
         y=_loc2_.y;
         this.rematoc();
         return;
      }

      private function rematoc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.binenuc.text="<low>"+x+","+y+"</low>";
         return;
      }

      private function wudiqe(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gazupaji();
         return;
      }

      private function gazupaji() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cidygugat=null;
         if(stage)
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.wudiqe);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.wiwiwyly);
         }
         if((this.binenuc)&&(this.binenuc.parent))
         {
            this.binenuc.parent.removeChild(this.binenuc);
         }
         this.binenuc=null;
         dispatchEvent(new Event(niso));
         return;
      }

      public function moveBackSafePosition() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.hozi!=null)
         {
            if(((x+this.width<10)||((stage)&&(stage.stageWidth<x+10)))||(y+this.height<10)||(stage)&&(stage.stageHeight<y+20))
            {
               x=this.hozi.x;
               y=this.hozi.y;
            }
            this.hozi=null;
         }
         return;
      }

      public function get gof() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.scaler?true:false;
      }

      public function set gof(param1:Boolean) : void {
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
            this.scaler.graphics.beginFill(this.style.controlColor,this.style.gazi);
            this.scaler.graphics.moveTo(0,0);
            this.scaler.graphics.lineTo(-_loc2_,0);
            this.scaler.graphics.lineTo(0,-_loc2_);
            this.scaler.graphics.endFill();
            this.scaler.buttonMode=true;
            this.scaler.doubleClickEnabled=true;
            this.scaler.addEventListener(MouseEvent.MOUSE_DOWN,this.jeza,false,0,true);
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

      private function jeza(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.binenuc=this.bula("resizingField",true);
         this.binenuc.mouseEnabled=false;
         this.binenuc.autoSize=TextFieldAutoSize.RIGHT;
         this.binenuc.x=-4;
         this.binenuc.y=-17;
         this.scaler.addChild(this.binenuc);
         this.deres();
         this.soca=new Point(this.scaler.mouseX,this.scaler.mouseY);
         this.cidygugat=[[],[]];
         this.scaler.stage.addEventListener(MouseEvent.MOUSE_UP,this.wut,false,0,true);
         this.scaler.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.zogyjy,false,0,true);
         dispatchEvent(new Event(mato));
         return;
      }

      private function zogyjy(param1:Event=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Point = this.hadotape(x+mouseX-this.soca.x,y+mouseY-this.soca.x);
         _loc2_.x=_loc2_.x-x;
         _loc2_.y=_loc2_.y-y;
         this.width=_loc2_.x<this.wufetowup?this.wufetowup:_loc2_.x;
         this.height=_loc2_.y<this.cudu?this.cudu:_loc2_.y;
         this.deres();
         return;
      }

      private function deres() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.binenuc.text="<low>"+this.width+","+this.height+"</low>";
         return;
      }

      public function nav() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wut(null);
         return;
      }

      private function wut(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.scaler.stage.removeEventListener(MouseEvent.MOUSE_UP,this.wut);
         this.scaler.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.zogyjy);
         this.zogyjy();
         this.cidygugat=null;
         if((this.binenuc)&&(this.binenuc.parent))
         {
            this.binenuc.parent.removeChild(this.binenuc);
         }
         this.binenuc=null;
         dispatchEvent(new Event(furo));
         return;
      }

      public function bula(param1:String, param2:Boolean=false) : TextField {
         var _loc4_:* = true;
         var _loc5_:* = false;
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

      private function hadotape(param1:Number, param2:Number) : Point {
         return new Point(this.gapenuk(param1,true),this.gapenuk(param2,false));
      }

      private function gapenuk(param1:Number, param2:Boolean) : Number {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:* = NaN;
         var _loc3_:Number = param1+this.width;
         var _loc4_:Array = this.cidygugat[param2?0:1];
         var _loc5_:int = this.style.pujup;
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

      protected function qisur(param1:TextField, param2:Function, param3:Function=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.addEventListener(MouseEvent.MOUSE_MOVE,terih,false,0,true);
         param1.addEventListener(MouseEvent.ROLL_OUT,guqyto,false,0,true);
         param1.addEventListener(TEXT_ROLL,param2,false,0,true);
         if(param3!=null)
         {
            param1.addEventListener(TextEvent.LINK,param3,false,0,true);
         }
         return;
      }
   }
[/CLASS]
}