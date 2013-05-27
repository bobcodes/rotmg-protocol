package fatehymo
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.StyleSheet;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import flash.system.System;


   public class Stats extends Sprite
   {
      public function Stats() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.feky=new Colors();
         super();
         this.leledahi=0;
         this.xml=<xml><fps>FPS:</fps><ms>MS:</ms><mem>MEM:</mem><memMax>MAX:</memMax></xml>;
         this.style=new StyleSheet();
         this.style.setStyle("xml",
            {
               fontSize:"9px",
               fontFamily:"_sans",
               leading:"-2px"
            }
         );
         this.style.setStyle("fps",{color:this.qopope(this.feky.fps)});
         this.style.setStyle("ms",{color:this.qopope(this.feky.ms)});
         this.style.setStyle("mem",{color:this.qopope(this.feky.mem)});
         this.style.setStyle("memMax",{color:this.qopope(this.feky.memmax)});
         this.text=new TextField();
         this.text.width=this.WIDTH;
         this.text.height=50;
         this.text.styleSheet=this.style;
         this.text.condenseWhite=true;
         this.text.selectable=false;
         this.text.mouseEnabled=false;
         this.goduviv=new Rectangle(this.WIDTH-1,0,1,this.HEIGHT-50);
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.destroy,false,0,true);
         return;
      }

      protected const WIDTH:uint = 70;

      protected const HEIGHT:uint = 100;

      protected var xml:XML;

      protected var text:TextField;

      protected var style:StyleSheet;

      protected var timer:uint;

      protected var fps:uint;

      protected var ms:uint;

      protected var dah:uint;

      protected var mem:Number;

      protected var leledahi:Number;

      protected var graph:BitmapData;

      protected var goduviv:Rectangle;

      protected var tasari:uint;

      protected var tynyzebo:uint;

      protected var janat:uint;

      protected var feky:Colors;

      private function init(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         graphics.beginFill(this.feky.bg);
         graphics.drawRect(0,0,this.WIDTH,this.HEIGHT);
         graphics.endFill();
         addChild(this.text);
         this.graph=new BitmapData(this.WIDTH,this.HEIGHT-50,false,this.feky.bg);
         graphics.beginBitmapFill(this.graph,new Matrix(1,0,0,1,0,50));
         graphics.drawRect(0,50,this.WIDTH,this.HEIGHT-50);
         addEventListener(MouseEvent.CLICK,this.zeg);
         addEventListener(Event.ENTER_FRAME,this.update);
         return;
      }

      private function destroy(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         while(numChildren>0)
         {
            removeChildAt(0);
         }
         this.graph.dispose();
         removeEventListener(MouseEvent.CLICK,this.zeg);
         removeEventListener(Event.ENTER_FRAME,this.update);
         return;
      }

      private function update(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.timer=getTimer();
         if(this.timer-1000>this.dah)
         {
            this.dah=this.timer;
            this.mem=Number((System.totalMemory*9.54E-7).toFixed(3));
            this.leledahi=this.leledahi>this.mem?this.leledahi:this.mem;
            this.tasari=Math.min(this.graph.height,this.fps/stage.frameRate*this.graph.height);
            this.tynyzebo=Math.min(this.graph.height,Math.sqrt(Math.sqrt(this.mem*5000)))-2;
            this.janat=Math.min(this.graph.height,Math.sqrt(Math.sqrt(this.leledahi*5000)))-2;
            this.graph.scroll(-1,0);
            this.graph.fillRect(this.goduviv,this.feky.bg);
            this.graph.setPixel(this.graph.width-1,this.graph.height-this.tasari,this.feky.fps);
            this.graph.setPixel(this.graph.width-1,this.graph.height-(this.timer-this.ms>>1),this.feky.ms);
            this.graph.setPixel(this.graph.width-1,this.graph.height-this.tynyzebo,this.feky.mem);
            this.graph.setPixel(this.graph.width-1,this.graph.height-this.janat,this.feky.memmax);
            this.xml.fps="FPS: "+this.fps+" / "+stage.frameRate;
            this.xml.mem="MEM: "+this.mem;
            this.xml.memMax="MAX: "+this.leledahi;
            this.fps=0;
         }
         this.fps++;
         this.xml.ms="MS: "+(this.timer-this.ms);
         this.ms=this.timer;
         this.text.htmlText=this.xml;
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(mouseY/height>0.5)
         {
            stage.frameRate--;
         }
         else
         {
            stage.frameRate++;
         }
         this.xml.fps="FPS: "+this.fps+" / "+stage.frameRate;
         this.text.htmlText=this.xml;
         return;
      }

      private function qopope(param1:int) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "#"+param1.toString(16);
      }
   }

}

   class Colors extends Object
   {
      function Colors() {
         super();
         return;
      }

      public var bg:uint = 51;

      public var fps:uint = 16776960;

      public var ms:uint = 65280;

      public var mem:uint = 65535;

      public var memmax:uint = 16711792;
   }
