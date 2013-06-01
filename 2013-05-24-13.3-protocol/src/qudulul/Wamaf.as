package qudulul
{
   import lutyfopo.Console;
   import flash.text.TextField;
   import flash.geom.Rectangle;
   import vajurym.Sosycijaj;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;


   public class Wamaf extends Object
   {
      public function Wamaf(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tyhejev={};
         super();
         this.console=param1;
         this._mainPanel=new Suvavi(this.console);
         this.pyh=this.mainPanel.goqyc("tooltip",true);
         this.pyh.mouseEnabled=false;
         this.pyh.autoSize=TextFieldAutoSize.CENTER;
         this.pyh.multiline=true;
         this.vazametis(this._mainPanel);
         return;
      }

      private var console:Console;

      private var _mainPanel:Suvavi;

      private var cezih:Gegogiz;

      private var gisa:Lywyliz;

      private var lovywise:Difamujom;

      private var goni:Difamujom;

      private var tyhejev:Object;

      private var dowesokyd:uint = 0;

      private var pyh:TextField;

      private var miriny:Boolean;

      public function vazametis(param1:Hycoba) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.console.contains(this.pyh))
         {
            this.console.addChildAt(param1,this.console.getChildIndex(this.pyh));
         }
         else
         {
            this.console.addChild(param1);
         }
         param1.addEventListener(Hycoba.mowof,this.poqamekyj,false,0,true);
         param1.addEventListener(Hycoba.qik,this.poqamekyj,false,0,true);
         return;
      }

      public function desag(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Hycoba = this.console.getChildByName(param1) as Hycoba;
         if(_loc2_)
         {
            _loc2_.close();
         }
         return;
      }

      public function nokociqoc(param1:String) : Hycoba {
         return this.console.getChildByName(param1) as Hycoba;
      }

      public function get mainPanel() : Suvavi {
         return this._mainPanel;
      }

      public function qehati(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.console.getChildByName(param1) as Hycoba?true:false;
      }

      public function fiqybehup(param1:String, param2:Rectangle) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Hycoba = this.nokociqoc(param1);
         if(_loc3_)
         {
            _loc3_.x=param2.x;
            _loc3_.y=param2.y;
            if(param2.width)
            {
               _loc3_.width=param2.width;
            }
            if(param2.height)
            {
               _loc3_.height=param2.height;
            }
         }
         return;
      }

      public function updateMenu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._mainPanel.updateMenu();
         var _loc1_:Lywyliz = this.nokociqoc(Lywyliz.NAME) as Lywyliz;
         if(_loc1_)
         {
            _loc1_.update();
         }
         return;
      }

      public function update(param1:Boolean, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.miriny=!param1;
         this._mainPanel.update(!param1&&(param2));
         if(!param1)
         {
            if((param2)&&!(this.gisa==null))
            {
               this.gisa.update();
            }
         }
         return;
      }

      public function updateGraphs(param1:Array) : void {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc2_:Object = null;
         var _loc3_:Sosycijaj = null;
         var _loc4_:Sosycijaj = null;
         var _loc5_:Sosycijaj = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Difamujom = null;
         var _loc9_:Rectangle = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         this.dowesokyd=0;
         for each (_loc5_ in param1)
         {
            if(_loc5_.type==Sosycijaj.koconeniw)
            {
               _loc3_=_loc5_;
            }
            else
            {
               if(_loc5_.type==Sosycijaj.gymyt)
               {
                  _loc4_=_loc5_;
               }
               else
               {
                  _loc7_=_loc5_.name;
                  _loc8_=this.tyhejev[_loc7_] as Difamujom;
                  if(!_loc8_)
                  {
                     _loc9_=_loc5_.rect;
                     if(_loc9_==null)
                     {
                        _loc9_=new Rectangle(NaN,NaN,0,0);
                     }
                     _loc10_=100;
                     if((isNaN(_loc9_.x))||(isNaN(_loc9_.y)))
                     {
                        if(this._mainPanel.width<150)
                        {
                           _loc10_=50;
                        }
                        _loc11_=Math.floor(this._mainPanel.width/_loc10_)-1;
                        if(_loc11_<=1)
                        {
                           _loc11_=2;
                        }
                        _loc12_=this.dowesokyd%_loc11_;
                        _loc13_=Math.floor(this.dowesokyd/_loc11_);
                        _loc9_.x=this._mainPanel.x+_loc10_+_loc12_*_loc10_;
                        _loc9_.y=this._mainPanel.y+_loc10_*0.6+_loc13_*_loc10_;
                        this.dowesokyd++;
                     }
                     if(_loc9_.width<=0||(isNaN(_loc9_.width)))
                     {
                        _loc9_.width=_loc10_;
                     }
                     if(_loc9_.height<=0||(isNaN(_loc9_.height)))
                     {
                        _loc9_.height=_loc10_;
                     }
                     _loc8_=new Difamujom(this.console,_loc9_.width,_loc9_.height);
                     _loc8_.x=_loc9_.x;
                     _loc8_.y=_loc9_.y;
                     _loc8_.name="graph_"+_loc7_;
                     this.tyhejev[_loc7_]=_loc8_;
                     this.vazametis(_loc8_);
                  }
                  if(_loc2_==null)
                  {
                     _loc2_={};
                  }
                  _loc2_[_loc7_]=true;
                  _loc8_.update(_loc5_,this.miriny);
               }
            }
         }
         for (_loc6_ in this.tyhejev)
         {
            if(_loc2_==null||!_loc2_[_loc6_])
            {
               this.tyhejev[_loc6_].close();
               delete this.tyhejev[[_loc6_]];
            }
         }
         if(_loc3_!=null)
         {
            if(this.lovywise==null)
            {
               this.lovywise=new Difamujom(this.console,80,40,Difamujom.koconeniw);
               this.lovywise.name=Difamujom.koconeniw;
               this.lovywise.x=this._mainPanel.x+this._mainPanel.width-160;
               this.lovywise.y=this._mainPanel.y+15;
               this.vazametis(this.lovywise);
               this._mainPanel.updateMenu();
            }
            this.lovywise.update(_loc3_,this.miriny);
         }
         else
         {
            if(this.lovywise!=null)
            {
               this.desag(Difamujom.koconeniw);
               this.lovywise=null;
            }
         }
         if(_loc4_!=null)
         {
            if(this.goni==null)
            {
               this.goni=new Difamujom(this.console,80,40,Difamujom.gymyt);
               this.goni.name=Difamujom.gymyt;
               this.goni.x=this._mainPanel.x+this._mainPanel.width-80;
               this.goni.y=this._mainPanel.y+15;
               this.vazametis(this.goni);
               this._mainPanel.updateMenu();
            }
            this.goni.update(_loc4_,this.miriny);
         }
         else
         {
            if(this.goni!=null)
            {
               this.desag(Difamujom.gymyt);
               this.goni=null;
            }
         }
         this.miriny=false;
         return;
      }

      public function removeGraph(param1:Sosycijaj) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Difamujom = null;
         if((this.lovywise)&&param1==this.lovywise.group)
         {
            this.lovywise.close();
            this.lovywise=null;
         }
         else
         {
            if((this.goni)&&param1==this.goni.group)
            {
               this.goni.close();
               this.goni=null;
            }
            else
            {
               _loc2_=this.tyhejev[param1.name];
               if(_loc2_)
               {
                  _loc2_.close();
                  delete this.tyhejev[[param1.name]];
               }
            }
         }
         return;
      }

      public function get displayRoller() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.nokociqoc(Cudy.NAME) as Cudy?true:false;
      }

      public function set displayRoller(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cudy = null;
         if(this.displayRoller!=param1)
         {
            if(param1)
            {
               if(this.console.config.displayRollerEnabled)
               {
                  _loc2_=new Cudy(this.console);
                  _loc2_.x=this._mainPanel.x+this._mainPanel.width-180;
                  _loc2_.y=this._mainPanel.y+55;
                  this.vazametis(_loc2_);
               }
               else
               {
                  this.console.report("Display roller is disabled in config.",9);
               }
            }
            else
            {
               this.desag(Cudy.NAME);
            }
            this._mainPanel.updateMenu();
         }
         return;
      }

      public function get channelsPanel() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.gisa==null);
      }

      public function set channelsPanel(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.channelsPanel!=param1)
         {
            this.console.logs.cunosimuq();
            if(param1)
            {
               this.gisa=new Lywyliz(this.console);
               this.gisa.x=this._mainPanel.x+this._mainPanel.width-332;
               this.gisa.y=this._mainPanel.y-2;
               this.vazametis(this.gisa);
               this.gisa.update();
               this.updateMenu();
            }
            else
            {
               this.desag(Lywyliz.NAME);
               this.gisa=null;
            }
            this.updateMenu();
         }
         return;
      }

      public function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.goni==null);
      }

      public function get fpsMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.lovywise==null);
      }

      public function tooltip(param1:String=null, param2:Hycoba=null) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:Array = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if((param1)&&!this.rulerActive)
         {
            _loc3_=param1.split("::");
            param1=_loc3_[0];
            if(_loc3_.length>1)
            {
               param1=param1+("<br/><low>"+_loc3_[1]+"</low>");
            }
            this.console.addChild(this.pyh);
            this.pyh.wordWrap=false;
            this.pyh.htmlText="<tt>"+param1+"</tt>";
            if(this.pyh.width>120)
            {
               this.pyh.width=120;
               this.pyh.wordWrap=true;
            }
            this.pyh.x=this.console.mouseX-this.pyh.width/2;
            this.pyh.y=this.console.mouseY+20;
            if(param2)
            {
               _loc4_=this.pyh.getBounds(this.console);
               _loc5_=new Rectangle(param2.x,param2.y,param2.width,param2.height);
               _loc6_=_loc4_.bottom-_loc5_.bottom;
               if(_loc6_>0)
               {
                  if(this.pyh.y-_loc6_>this.console.mouseY+15)
                  {
                     this.pyh.y=this.pyh.y-_loc6_;
                  }
                  else
                  {
                     if(_loc5_.y<this.console.mouseY-24&&_loc4_.y>_loc5_.bottom)
                     {
                        this.pyh.y=this.console.mouseY-this.pyh.height-15;
                     }
                  }
               }
               _loc7_=_loc4_.left-_loc5_.left;
               _loc8_=_loc4_.right-_loc5_.right;
               if(_loc7_<0)
               {
                  this.pyh.x=this.pyh.x-_loc7_;
               }
               else
               {
                  if(_loc8_>0)
                  {
                     this.pyh.x=this.pyh.x-_loc8_;
                  }
               }
            }
         }
         else
         {
            if(this.console.contains(this.pyh))
            {
               this.console.removeChild(this.pyh);
            }
         }
         return;
      }

      public function startRuler() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.rulerActive)
         {
            return;
         }
         this.cezih=new Gegogiz(this.console);
         this.cezih.addEventListener(Event.COMPLETE,this.jisane,false,0,true);
         this.console.addChild(this.cezih);
         this._mainPanel.updateMenu();
         return;
      }

      public function get rulerActive() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.cezih)&&(this.console.contains(this.cezih))?true:false;
      }

      private function jisane(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.cezih)&&(this.console.contains(this.cezih)))
         {
            this.console.removeChild(this.cezih);
         }
         this.cezih=null;
         this._mainPanel.updateMenu();
         return;
      }

      private function poqamekyj(param1:Event) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Hycoba = null;
         var _loc2_:Hycoba = param1.currentTarget as Hycoba;
         if(this.console.config.style.cicosuva)
         {
            _loc3_=[0];
            _loc4_=[0];
            if(this.console.stage)
            {
               _loc3_.push(this.console.stage.stageWidth);
               _loc4_.push(this.console.stage.stageHeight);
            }
            _loc5_=this.console.numChildren;
            _loc6_=0;
            while(_loc6_<_loc5_)
            {
               _loc7_=this.console.getChildAt(_loc6_) as Hycoba;
               if((_loc7_)&&(_loc7_.visible))
               {
                  _loc3_.push(_loc7_.x,_loc7_.x+_loc7_.width);
                  _loc4_.push(_loc7_.y,_loc7_.y+_loc7_.height);
               }
               _loc6_++;
            }
            _loc2_.cazerono(_loc3_,_loc4_);
         }
         return;
      }
   }

}