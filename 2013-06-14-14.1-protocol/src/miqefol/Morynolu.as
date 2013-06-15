package miqefol
{
   import rikewu.Nama;
   import rikewu.Vakegopo;
   import flash.display.Shape;
   import flash.text.TextField;
   import flash.display.Graphics;
   import flash.events.TextEvent;
   import zipirytab.Console;
   import flash.text.TextFormat;


   public class Morynolu extends Qir
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Morynolu(param1:Console, param2:int, param3:int, param4:String=null) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.cohed=new Object();
         super(param1);
         this.vite=param4;
         lyjunicut(bg);
         kavobada=32;
         wus=26;
         var _loc5_:TextFormat = new TextFormat();
         var _loc6_:Object = style.styleSheet.getStyle("low");
         _loc5_.font=_loc6_.fontFamily;
         _loc5_.size=_loc6_.fontSize;
         _loc5_.color=style.lowColor;
         this.gasegafof=new TextField();
         this.gasegafof.name="lowestField";
         this.gasegafof.defaultTextFormat=_loc5_;
         this.gasegafof.mouseEnabled=false;
         this.gasegafof.height=style.menuFontSize+2;
         addChild(this.gasegafof);
         this.fyzebyfyb=new TextField();
         this.fyzebyfyb.name="highestField";
         this.fyzebyfyb.defaultTextFormat=_loc5_;
         this.fyzebyfyb.mouseEnabled=false;
         this.fyzebyfyb.height=style.menuFontSize+2;
         this.fyzebyfyb.y=style.menuFontSize-4;
         addChild(this.fyzebyfyb);
         zyfile=vykipiky("menuField");
         zyfile.height=style.menuFontSize+4;
         zyfile.y=-3;
         tycucobyr(zyfile,this.onMenuRollOver,this.sidadene);
         lyjunicut(zyfile);
         addChild(zyfile);
         this.pyqudedys=new Shape();
         addChild(this.pyqudedys);
         this.graph=new Shape();
         this.graph.name="graph";
         this.graph.y=style.menuFontSize;
         addChild(this.graph);
         this.poqyfa="<menu>";
         if(this.vite==lojebywo)
         {
            this.poqyfa=this.poqyfa+" <a href=\"event:gc\">G</a> ";
         }
         this.poqyfa=this.poqyfa+"<a href=\"event:reset\">R</a> <a href=\"event:close\">X</a></menu></low></r>";
         init(param2,param3,true);
         return;
      }

      public static const faforu:String = "fpsPanel";

      public static const lojebywo:String = "memoryPanel";

      private var miginu:Nama;

      private var zeticy:Vakegopo;

      private var cohed:Object;

      private var poqyfa:String;

      private var vite:String;

      private var wim:Boolean;

      private var pyqudedys:Shape;

      private var graph:Shape;

      private var gasegafof:TextField;

      private var fyzebyfyb:TextField;

      public var hopaj:int = 5;

      private function stop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.miginu)
         {
            console.graphing.remove(this.miginu.name);
         }
         return;
      }

      public function get group() : Nama {
         return this.miginu;
      }

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cohed={};
         this.graph.graphics.clear();
         if(!this.miginu.fixed)
         {
            this.miginu.low=NaN;
            this.miginu.levycen=NaN;
         }
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super.height=param1;
         this.gasegafof.y=param1-style.menuFontSize;
         this.wim=true;
         var _loc2_:Graphics = this.pyqudedys.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(1,style.controlColor,0.6);
         _loc2_.moveTo(0,this.graph.y);
         _loc2_.lineTo(width-this.hopaj,this.graph.y);
         _loc2_.lineTo(width-this.hopaj,param1);
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.width=param1;
         this.gasegafof.width=param1;
         this.fyzebyfyb.width=param1;
         zyfile.width=param1;
         zyfile.scrollH=zyfile.maxScrollH;
         this.graph.graphics.clear();
         this.wim=true;
         return;
      }

      public function update(param1:Nama, param2:Boolean) : void {
         var _loc27_:* = true;
         var _loc28_:* = false;
         var _loc11_:Vakegopo = null;
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
         this.miginu=param1;
         var _loc3_:* = 1;
         if(param1.cekarov>0)
         {
            _loc3_=0;
            if(!this.wim)
            {
               return;
            }
         }
         if(this.wim)
         {
            param2=true;
         }
         this.wim=false;
         var _loc4_:Array = param1.interests;
         var _loc5_:int = width-this.hopaj;
         var _loc6_:int = height-this.graph.y;
         var _loc7_:Number = param1.low;
         var _loc8_:Number = param1.levycen;
         var _loc9_:Number = _loc8_-_loc7_;
         var _loc10_:* = false;
         if(param2)
         {
            TextField(param1.kynaloqu?this.fyzebyfyb:this.gasegafof).text=String(param1.low);
            TextField(param1.kynaloqu?this.gasegafof:this.fyzebyfyb).text=String(param1.levycen);
            this.graph.graphics.clear();
         }
         for each (this.zeticy in _loc4_)
         {
            _loc13_=this.zeticy.key;
            _loc14_=this.cohed[_loc13_];
            if(_loc14_==null)
            {
               _loc10_=true;
               _loc14_=new Array(this.zeticy.col.toString(16),new Array());
               this.cohed[_loc13_]=_loc14_;
            }
            _loc15_=_loc14_[1];
            if(param1.type==Nama.faforu)
            {
               _loc17_=Math.floor(param1.levycen/this.zeticy.v);
               if(_loc17_>30)
               {
                  _loc17_=30;
               }
               while(_loc17_>0)
               {
                  _loc15_.push(this.zeticy.v);
                  _loc17_--;
               }
            }
            else
            {
               _loc15_.push(this.zeticy.v);
            }
            _loc16_=Math.floor(_loc5_)+10;
            while(_loc15_.length>_loc16_)
            {
               _loc15_.shift();
            }
            if(param2)
            {
               _loc18_=_loc15_.length;
               this.graph.graphics.lineStyle(1,this.zeticy.col);
               _loc19_=_loc5_>_loc18_?_loc18_:_loc5_;
               _loc20_=1;
               while(_loc20_<_loc19_)
               {
                  _loc21_=(_loc9_?(_loc15_[_loc18_-_loc20_]-_loc7_)/_loc9_:0.5)*_loc6_;
                  if(!param1.kynaloqu)
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
               if((isNaN(this.zeticy.avg))&&(_loc9_))
               {
                  _loc21_=(this.zeticy.avg-_loc7_)/_loc9_*_loc6_;
                  if(!param1.kynaloqu)
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
                  this.graph.graphics.lineStyle(1,this.zeticy.col,0.3);
                  this.graph.graphics.moveTo(0,_loc21_);
                  this.graph.graphics.lineTo(_loc5_,_loc21_);
               }
            }
         }
         for (_loc12_ in this.cohed)
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
               delete this.cohed[[_loc12_]];
            }
         }
         if((param2)&&((_loc10_)||(this.vite)))
         {
            this.pejiq();
         }
         return;
      }

      public function pejiq() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         var _loc1_:* = "<r><low>";
         if(this.vite)
         {
            if(isNaN(this.zeticy.v))
            {
               _loc1_=_loc1_+"no input";
            }
            else
            {
               if(this.vite==faforu)
               {
                  _loc1_=_loc1_+this.zeticy.avg.toFixed(1);
               }
               else
               {
                  _loc1_=_loc1_+(this.zeticy.v+"mb");
               }
            }
         }
         else
         {
            for (_loc2_ in this.cohed)
            {
               _loc1_=_loc1_+(" <font color=\'#"+this.cohed[_loc2_][0]+"\'>"+_loc2_+"</font>");
            }
            _loc1_=_loc1_+" |";
         }
         zyfile.htmlText=_loc1_+this.poqyfa;
         zyfile.scrollH=zyfile.maxScrollH;
         return;
      }

      protected function sidadene(param1:TextEvent) : void {
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
               if(this.vite==faforu)
               {
                  console.fpsMonitor=false;
               }
               else
               {
                  if(this.vite==lojebywo)
                  {
                     console.memoryMonitor=false;
                  }
                  else
                  {
                     this.stop();
                  }
               }
               console.panels.removeGraph(this.miginu);
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