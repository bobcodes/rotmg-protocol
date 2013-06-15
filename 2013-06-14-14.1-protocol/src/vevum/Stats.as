package vevum
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zenili=new Colors();
         super();
         this.gyser=0;
         this.xml=<xml><fps>FPS:</fps><ms>MS:</ms><mem>MEM:</mem><memMax>MAX:</memMax></xml>;
         this.style=new StyleSheet();
         this.style.setStyle("xml",
            {
               fontSize:"9px",
               fontFamily:"_sans",
               leading:"-2px"
            }
         );
         this.style.setStyle("fps",{color:this.fisomuz(this.zenili.fps)});
         this.style.setStyle("ms",{color:this.fisomuz(this.zenili.ms)});
         this.style.setStyle("mem",{color:this.fisomuz(this.zenili.mem)});
         this.style.setStyle("memMax",{color:this.fisomuz(this.zenili.memmax)});
         this.text=new TextField();
         this.text.width=this.WIDTH;
         this.text.height=50;
         this.text.styleSheet=this.style;
         this.text.condenseWhite=true;
         this.text.selectable=false;
         this.text.mouseEnabled=false;
         this.fohip=new Rectangle(this.WIDTH-1,0,1,this.HEIGHT-50);
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

      protected var hugin:uint;

      protected var mem:Number;

      protected var gyser:Number;

      protected var graph:BitmapData;

      protected var fohip:Rectangle;

      protected var wuva:uint;

      protected var maf:uint;

      protected var lokibic:uint;

      protected var zenili:Colors;

      private function init(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.beginFill(this.zenili.bg);
         graphics.drawRect(0,0,this.WIDTH,this.HEIGHT);
         graphics.endFill();
         addChild(this.text);
         this.graph=new BitmapData(this.WIDTH,this.HEIGHT-50,false,this.zenili.bg);
         graphics.beginBitmapFill(this.graph,new Matrix(1,0,0,1,0,50));
         graphics.drawRect(0,50,this.WIDTH,this.HEIGHT-50);
         addEventListener(MouseEvent.CLICK,this.zug);
         addEventListener(Event.ENTER_FRAME,this.update);
         return;
      }

      private function destroy(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         graphics.clear();
         while(numChildren>0)
         {
            removeChildAt(0);
         }
         this.graph.dispose();
         removeEventListener(MouseEvent.CLICK,this.zug);
         removeEventListener(Event.ENTER_FRAME,this.update);
         return;
      }

      private function update(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.timer=getTimer();
         if(this.timer-1000>this.hugin)
         {
            this.hugin=this.timer;
            this.mem=Number((System.totalMemory*9.54E-7).toFixed(3));
            this.gyser=this.gyser>this.mem?this.gyser:this.mem;
            this.wuva=Math.min(this.graph.height,this.fps/stage.frameRate*this.graph.height);
            this.maf=Math.min(this.graph.height,Math.sqrt(Math.sqrt(this.mem*5000)))-2;
            this.lokibic=Math.min(this.graph.height,Math.sqrt(Math.sqrt(this.gyser*5000)))-2;
            this.graph.scroll(-1,0);
            this.graph.fillRect(this.fohip,this.zenili.bg);
            this.graph.setPixel(this.graph.width-1,this.graph.height-this.wuva,this.zenili.fps);
            this.graph.setPixel(this.graph.width-1,this.graph.height-(this.timer-this.ms>>1),this.zenili.ms);
            this.graph.setPixel(this.graph.width-1,this.graph.height-this.maf,this.zenili.mem);
            this.graph.setPixel(this.graph.width-1,this.graph.height-this.lokibic,this.zenili.memmax);
            this.xml.fps="FPS: "+this.fps+" / "+stage.frameRate;
            this.xml.mem="MEM: "+this.mem;
            this.xml.memMax="MAX: "+this.gyser;
            this.fps=0;
         }
         this.fps++;
         this.xml.ms="MS: "+(this.timer-this.ms);
         this.ms=this.timer;
         this.text.htmlText=this.xml;
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
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

      private function fisomuz(param1:int) : String {
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
