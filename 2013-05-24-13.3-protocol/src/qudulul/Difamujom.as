package qudulul
{
   import vajurym.Sosycijaj;
   import vajurym.Pemovofe;
   import flash.display.Shape;
   import flash.text.TextField;
   import flash.display.Graphics;
   import flash.events.TextEvent;
   import lutyfopo.Console;
   import flash.text.TextFormat;


   public class Difamujom extends Hycoba
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Difamujom(param1:Console, param2:int, param3:int, param4:String=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.remet=new Object();
         super(param1);
         this.cuwiqytid=param4;
         kehiza(bg);
         vamaboby=32;
         dabapiku=26;
         var _loc5_:TextFormat = new TextFormat();
         var _loc6_:Object = style.styleSheet.getStyle("low");
         _loc5_.font=_loc6_.fontFamily;
         _loc5_.size=_loc6_.fontSize;
         _loc5_.color=style.lowColor;
         this.femybugad=new TextField();
         this.femybugad.name="lowestField";
         this.femybugad.defaultTextFormat=_loc5_;
         this.femybugad.mouseEnabled=false;
         this.femybugad.height=style.menuFontSize+2;
         addChild(this.femybugad);
         this.notemum=new TextField();
         this.notemum.name="highestField";
         this.notemum.defaultTextFormat=_loc5_;
         this.notemum.mouseEnabled=false;
         this.notemum.height=style.menuFontSize+2;
         this.notemum.y=style.menuFontSize-4;
         addChild(this.notemum);
         zem=goqyc("menuField");
         zem.height=style.menuFontSize+4;
         zem.y=-3;
         kek(zem,this.onMenuRollOver,this.vaq);
         kehiza(zem);
         addChild(zem);
         this.fovipi=new Shape();
         addChild(this.fovipi);
         this.graph=new Shape();
         this.graph.name="graph";
         this.graph.y=style.menuFontSize;
         addChild(this.graph);
         this.mifety="<menu>";
         if(this.cuwiqytid==gymyt)
         {
            this.mifety=this.mifety+" <a href=\"event:gc\">G</a> ";
         }
         this.mifety=this.mifety+"<a href=\"event:reset\">R</a> <a href=\"event:close\">X</a></menu></low></r>";
         init(param2,param3,true);
         return;
      }

      public static const koconeniw:String = "fpsPanel";

      public static const gymyt:String = "memoryPanel";

      private var daluty:Sosycijaj;

      private var guta:Pemovofe;

      private var remet:Object;

      private var mifety:String;

      private var cuwiqytid:String;

      private var febucu:Boolean;

      private var fovipi:Shape;

      private var graph:Shape;

      private var femybugad:TextField;

      private var notemum:TextField;

      public var nyhoka:int = 5;

      private function stop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.daluty)
         {
            console.graphing.remove(this.daluty.name);
         }
         return;
      }

      public function get group() : Sosycijaj {
         return this.daluty;
      }

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.remet={};
         this.graph.graphics.clear();
         if(!this.daluty.fixed)
         {
            this.daluty.low=NaN;
            this.daluty.has=NaN;
         }
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super.height=param1;
         this.femybugad.y=param1-style.menuFontSize;
         this.febucu=true;
         var _loc2_:Graphics = this.fovipi.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(1,style.controlColor,0.6);
         _loc2_.moveTo(0,this.graph.y);
         _loc2_.lineTo(width-this.nyhoka,this.graph.y);
         _loc2_.lineTo(width-this.nyhoka,param1);
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.width=param1;
         this.femybugad.width=param1;
         this.notemum.width=param1;
         zem.width=param1;
         zem.scrollH=zem.maxScrollH;
         this.graph.graphics.clear();
         this.febucu=true;
         return;
      }

      public function update(param1:Sosycijaj, param2:Boolean) : void {
         var _loc27_:* = true;
         var _loc28_:* = false;
         var _loc11_:Pemovofe = null;
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
         this.daluty=param1;
         var _loc3_:* = 1;
         if(param1.nif>0)
         {
            _loc3_=0;
            if(!this.febucu)
            {
               return;
            }
         }
         if(this.febucu)
         {
            param2=true;
         }
         this.febucu=false;
         var _loc4_:Array = param1.interests;
         var _loc5_:int = width-this.nyhoka;
         var _loc6_:int = height-this.graph.y;
         var _loc7_:Number = param1.low;
         var _loc8_:Number = param1.has;
         var _loc9_:Number = _loc8_-_loc7_;
         var _loc10_:* = false;
         if(param2)
         {
            TextField(param1.mitapeqa?this.notemum:this.femybugad).text=String(param1.low);
            TextField(param1.mitapeqa?this.femybugad:this.notemum).text=String(param1.has);
            this.graph.graphics.clear();
         }
         for each (this.guta in _loc4_)
         {
            _loc13_=this.guta.key;
            _loc14_=this.remet[_loc13_];
            if(_loc14_==null)
            {
               _loc10_=true;
               _loc14_=new Array(this.guta.col.toString(16),new Array());
               this.remet[_loc13_]=_loc14_;
            }
            _loc15_=_loc14_[1];
            if(param1.type==Sosycijaj.koconeniw)
            {
               _loc17_=Math.floor(param1.has/this.guta.v);
               if(_loc17_>30)
               {
                  _loc17_=30;
               }
               while(_loc17_>0)
               {
                  _loc15_.push(this.guta.v);
                  _loc17_--;
               }
            }
            else
            {
               _loc15_.push(this.guta.v);
            }
            _loc16_=Math.floor(_loc5_)+10;
            while(_loc15_.length>_loc16_)
            {
               _loc15_.shift();
            }
            if(param2)
            {
               _loc18_=_loc15_.length;
               this.graph.graphics.lineStyle(1,this.guta.col);
               _loc19_=_loc5_>_loc18_?_loc18_:_loc5_;
               _loc20_=1;
               while(_loc20_<_loc19_)
               {
                  _loc21_=(_loc9_?(_loc15_[_loc18_-_loc20_]-_loc7_)/_loc9_:0.5)*_loc6_;
                  if(!param1.mitapeqa)
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
               if((isNaN(this.guta.avg))&&(_loc9_))
               {
                  _loc21_=(this.guta.avg-_loc7_)/_loc9_*_loc6_;
                  if(!param1.mitapeqa)
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
                  this.graph.graphics.lineStyle(1,this.guta.col,0.3);
                  this.graph.graphics.moveTo(0,_loc21_);
                  this.graph.graphics.lineTo(_loc5_,_loc21_);
               }
            }
         }
         for (_loc12_ in this.remet)
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
               delete this.remet[[_loc12_]];
            }
         }
         if((param2)&&((_loc10_)||(this.cuwiqytid)))
         {
            this.liruz();
         }
         return;
      }

      public function liruz() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         var _loc1_:* = "<r><low>";
         if(this.cuwiqytid)
         {
            if(isNaN(this.guta.v))
            {
               _loc1_=_loc1_+"no input";
            }
            else
            {
               if(this.cuwiqytid==koconeniw)
               {
                  _loc1_=_loc1_+this.guta.avg.toFixed(1);
               }
               else
               {
                  _loc1_=_loc1_+(this.guta.v+"mb");
               }
            }
         }
         else
         {
            for (_loc2_ in this.remet)
            {
               _loc1_=_loc1_+(" <font color=\'#"+this.remet[_loc2_][0]+"\'>"+_loc2_+"</font>");
            }
            _loc1_=_loc1_+" |";
         }
         zem.htmlText=_loc1_+this.mifety;
         zem.scrollH=zem.maxScrollH;
         return;
      }

      protected function vaq(param1:TextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         TextField(param1.currentTarget).setSelection(0,0);
         if(param1.text=="reset")
         {
            this.reset();
         }
         else
         {
            if(param1.text=="close")
            {
               if(this.cuwiqytid==koconeniw)
               {
                  console.fpsMonitor=false;
               }
               else
               {
                  if(this.cuwiqytid==gymyt)
                  {
                     console.memoryMonitor=false;
                  }
                  else
                  {
                     this.stop();
                  }
               }
               console.panels.removeGraph(this.daluty);
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
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.text?param1.text.replace("event:",""):null;
         if(_loc2_=="gc")
         {
            _loc2_="Garbage collect::Requires debugger version of flash player";
         }
         console.panels.tooltip(_loc2_,this);
         return;
      }
   }

}