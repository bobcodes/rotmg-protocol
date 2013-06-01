package ryma
{
[CLASS1904]   import cakajitez.Rinicu;
   import cakajitez.Lyviqih;
   import flash.display.Shape;
   import flash.text.TextField;
   import flash.display.Graphics;
   import flash.events.TextEvent;
   import wacic.Console;
   import flash.text.TextFormat;


   public class Latemy extends Nil
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Latemy(param1:Console, param2:int, param3:int, param4:String=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.cipulu=new Object();
         super(param1);
         this.qimopipoz=param4;
         qatada(bg);
         wufetowup=32;
         cudu=26;
         var _loc5_:TextFormat = new TextFormat();
         var _loc6_:Object = style.styleSheet.getStyle("low");
         _loc5_.font=_loc6_.fontFamily;
         _loc5_.size=_loc6_.fontSize;
         _loc5_.color=style.lowColor;
         this.wycasu=new TextField();
         this.wycasu.name="lowestField";
         this.wycasu.defaultTextFormat=_loc5_;
         this.wycasu.mouseEnabled=false;
         this.wycasu.height=style.menuFontSize+2;
         addChild(this.wycasu);
         this.lus=new TextField();
         this.lus.name="highestField";
         this.lus.defaultTextFormat=_loc5_;
         this.lus.mouseEnabled=false;
         this.lus.height=style.menuFontSize+2;
         this.lus.y=style.menuFontSize-4;
         addChild(this.lus);
         hanapoje=bula("menuField");
         hanapoje.height=style.menuFontSize+4;
         hanapoje.y=-3;
         qisur(hanapoje,this.onMenuRollOver,this.dylivep);
         qatada(hanapoje);
         addChild(hanapoje);
         this.mydisopi=new Shape();
         addChild(this.mydisopi);
         this.graph=new Shape();
         this.graph.name="graph";
         this.graph.y=style.menuFontSize;
         addChild(this.graph);
         this.moladaq="<menu>";
         if(this.qimopipoz==copukuvi)
         {
            this.moladaq=this.moladaq+" <a href=\"event:gc\">G</a> ";
         }
         this.moladaq=this.moladaq+"<a href=\"event:reset\">R</a> <a href=\"event:close\">X</a></menu></low></r>";
         init(param2,param3,true);
         return;
      }

      public static const pasal:String = "fpsPanel";

      public static const copukuvi:String = "memoryPanel";

      private var wujosijok:Rinicu;

      private var mekefyp:Lyviqih;

      private var cipulu:Object;

      private var moladaq:String;

      private var qimopipoz:String;

      private var doceso:Boolean;

      private var mydisopi:Shape;

      private var graph:Shape;

      private var wycasu:TextField;

      private var lus:TextField;

      public var hydavo:int = 5;

      private function stop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.wujosijok)
         {
            console.graphing.remove(this.wujosijok.name);
         }
         return;
      }

      public function get group() : Rinicu {
         return this.wujosijok;
      }

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cipulu={};
         this.graph.graphics.clear();
         if(!this.wujosijok.fixed)
         {
            this.wujosijok.low=NaN;
            this.wujosijok.wubo=NaN;
         }
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super.height=param1;
         this.wycasu.y=param1-style.menuFontSize;
         this.doceso=true;
         var _loc2_:Graphics = this.mydisopi.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(1,style.controlColor,0.6);
         _loc2_.moveTo(0,this.graph.y);
         _loc2_.lineTo(width-this.hydavo,this.graph.y);
         _loc2_.lineTo(width-this.hydavo,param1);
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.width=param1;
         this.wycasu.width=param1;
         this.lus.width=param1;
         hanapoje.width=param1;
         hanapoje.scrollH=hanapoje.maxScrollH;
         this.graph.graphics.clear();
         this.doceso=true;
         return;
      }

      public function update(param1:Rinicu, param2:Boolean) : void {
         var _loc27_:* = false;
         var _loc28_:* = true;
         var _loc11_:Lyviqih = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:* = 0;
         var _loc21_:* = NaN;
         var _loc22_:* = false;
         this.wujosijok=param1;
         var _loc3_:* = 1;
         if(param1.rakahi>0)
         {
            _loc3_=0;
            if(!this.doceso)
            {
               return;
            }
         }
         if(this.doceso)
         {
            param2=true;
         }
         this.doceso=false;
         var _loc4_:Array = param1.interests;
         var _loc5_:int = width-this.hydavo;
         var _loc6_:int = height-this.graph.y;
         var _loc7_:Number = param1.low;
         var _loc8_:Number = param1.wubo;
         var _loc9_:Number = _loc8_-_loc7_;
         var _loc10_:* = false;
         if(param2)
         {
            TextField(param1.cisiz?this.lus:this.wycasu).text=String(param1.low);
            TextField(param1.cisiz?this.wycasu:this.lus).text=String(param1.wubo);
            this.graph.graphics.clear();
         }
         for each (this.mekefyp in _loc4_)
         {
            _loc13_=this.mekefyp.key;
            _loc14_=this.cipulu[_loc13_];
            if(_loc14_==null)
            {
               _loc10_=true;
               _loc14_=new Array(this.mekefyp.col.toString(16),new Array());
               this.cipulu[_loc13_]=_loc14_;
            }
            _loc15_=_loc14_[1];
            if(param1.type==Rinicu.pasal)
            {
               _loc17_=Math.floor(param1.wubo/this.mekefyp.v);
               if(_loc17_>30)
               {
                  _loc17_=30;
               }
               while(_loc17_>0)
               {
                  _loc15_.push(this.mekefyp.v);
                  _loc17_--;
               }
            }
            else
            {
               _loc15_.push(this.mekefyp.v);
            }
            _loc16_=Math.floor(_loc5_)+10;
            while(_loc15_.length>_loc16_)
            {
               _loc15_.shift();
            }
            if(param2)
            {
               _loc18_=_loc15_.length;
               this.graph.graphics.lineStyle(1,this.mekefyp.col);
               _loc19_=_loc5_>_loc18_?_loc18_:_loc5_;
               _loc20_=1;
               while(_loc20_<_loc19_)
               {
                  _loc21_=(_loc9_?(_loc15_[_loc18_-_loc20_]-_loc7_)/_loc9_:0.5)*_loc6_;
                  if(!param1.cisiz)
                  {
                     _loc21_=_loc6_-_loc21_;
                  }
                  if(_loc21_<0)
                  {
                     _loc21_=0;
                  }
                  if(_loc21_>_loc6_)
                  {
                     _loc21_=_loc6_;
                  }
                  if(_loc20_==1)
                  {
                     this.graph.graphics.moveTo(width,_loc21_);
                  }
                  this.graph.graphics.lineTo(_loc5_-_loc20_,_loc21_);
                  _loc20_++;
               }
               if((isNaN(this.mekefyp.avg))&&(_loc9_))
               {
                  _loc21_=(this.mekefyp.avg-_loc7_)/_loc9_*_loc6_;
                  if(!param1.cisiz)
                  {
                     _loc21_=_loc6_-_loc21_;
                  }
                  if(_loc21_<0)
                  {
                     _loc21_=0;
                  }
                  if(_loc21_>_loc6_)
                  {
                     _loc21_=_loc6_;
                  }
                  this.graph.graphics.lineStyle(1,this.mekefyp.col,0.3);
                  this.graph.graphics.moveTo(0,_loc21_);
                  this.graph.graphics.lineTo(_loc5_,_loc21_);
               }
            }
         }
         for (_loc12_ in this.cipulu)
         {
            for each (_loc11_ in _loc4_)
            {
               if(_loc11_.key==_loc12_)
               {
                  _loc22_=true;
               }
            }
            if(!_loc22_)
            {
               _loc10_=true;
               delete this.cipulu[[_loc12_]];
            }
         }
         if((param2)&&((_loc10_)||(this.qimopipoz)))
         {
            this.jiquhi();
         }
         return;
      }

      public function jiquhi() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         var _loc1_:* = "<r><low>";
         if(this.qimopipoz)
         {
            if(isNaN(this.mekefyp.v))
            {
               _loc1_=_loc1_+"no input";
            }
            else
            {
               if(this.qimopipoz==pasal)
               {
                  _loc1_=_loc1_+this.mekefyp.avg.toFixed(1);
               }
               else
               {
                  _loc1_=_loc1_+(this.mekefyp.v+"mb");
               }
            }
         }
         else
         {
            for (_loc2_ in this.cipulu)
            {
               _loc1_=_loc1_+(" <font color=\'#"+this.cipulu[_loc2_][0]+"\'>"+_loc2_+"</font>");
            }
            _loc1_=_loc1_+" |";
         }
         hanapoje.htmlText=_loc1_+this.moladaq;
         hanapoje.scrollH=hanapoje.maxScrollH;
         return;
      }

      protected function dylivep(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         TextField(param1.currentTarget).setSelection(0,0);
         if(param1.text=="reset")
         {
            this.reset();
         }
         else
         {
            if(param1.text=="close")
            {
               if(this.qimopipoz==pasal)
               {
                  console.fpsMonitor=false;
               }
               else
               {
                  if(this.qimopipoz==copukuvi)
                  {
                     console.memoryMonitor=false;
                  }
                  else
                  {
                     this.stop();
                  }
               }
               console.panels.removeGraph(this.wujosijok);
            }
            else
            {
               if(param1.text=="gc")
               {
                  console.gc();
               }
            }
         }
         param1.stopPropagation();
         return;
      }

      protected function onMenuRollOver(param1:TextEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.text?param1.text.replace("event:",""):null;
         if(_loc2_=="gc")
         {
            _loc2_="Garbage collect::Requires debugger version of flash player";
         }
         console.panels.tooltip(_loc2_,this);
         return;
      }
   }
[/CLASS]
}