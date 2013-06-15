package miqefol
{
   import zipirytab.Console;
   import flash.text.TextField;
   import flash.geom.Rectangle;
   import rikewu.Nama;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;


   public class Fyzyz extends Object
   {
      public function Fyzyz(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.romyhibu={};
         super();
         this.console=param1;
         this._mainPanel=new Fulorag(this.console);
         this.zoqutyp=this.mainPanel.vykipiky("tooltip",true);
         this.zoqutyp.mouseEnabled=false;
         this.zoqutyp.autoSize=TextFieldAutoSize.CENTER;
         this.zoqutyp.multiline=true;
         this.tyl(this._mainPanel);
         return;
      }

      private var console:Console;

      private var _mainPanel:Fulorag;

      private var jymem:Wum;

      private var cowy:Niqicud;

      private var wic:Morynolu;

      private var sot:Morynolu;

      private var romyhibu:Object;

      private var mycyreto:uint = 0;

      private var zoqutyp:TextField;

      private var curojuq:Boolean;

      public function tyl(param1:Qir) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.console.contains(this.zoqutyp))
         {
            this.console.addChildAt(param1,this.console.getChildIndex(this.zoqutyp));
         }
         else
         {
            this.console.addChild(param1);
         }
         param1.addEventListener(Qir.gajidehav,this.gekeniq,false,0,true);
         param1.addEventListener(Qir.tynazevi,this.gekeniq,false,0,true);
         return;
      }

      public function purabu(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Qir = this.console.getChildByName(param1) as Qir;
         if(_loc2_)
         {
            _loc2_.close();
         }
         return;
      }

      public function getPanel(param1:String) : Qir {
         return this.console.getChildByName(param1) as Qir;
      }

      public function get mainPanel() : Fulorag {
         return this._mainPanel;
      }

      public function hamoqymyb(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.console.getChildByName(param1) as Qir?true:false;
      }

      public function wyci(param1:String, param2:Rectangle) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Qir = this.getPanel(param1);
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._mainPanel.updateMenu();
         var _loc1_:Niqicud = this.getPanel(Niqicud.NAME) as Niqicud;
         if(_loc1_)
         {
            _loc1_.update();
         }
         return;
      }

      public function update(param1:Boolean, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.curojuq=!param1;
         this._mainPanel.update(!param1&&(param2));
         if(!param1)
         {
            if((param2)&&!(this.cowy==null))
            {
               this.cowy.update();
            }
         }
         return;
      }

      public function updateGraphs(param1:Array) : void {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc2_:Object = null;
         var _loc3_:Nama = null;
         var _loc4_:Nama = null;
         var _loc5_:Nama = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Morynolu = null;
         var _loc9_:Rectangle = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         this.mycyreto=0;
         for each (_loc5_ in param1)
         {
            if(_loc5_.type==Nama.faforu)
            {
               _loc3_=_loc5_;
            }
            else
            {
               if(_loc5_.type==Nama.lojebywo)
               {
                  _loc4_=_loc5_;
               }
               else
               {
                  _loc7_=_loc5_.name;
                  _loc8_=this.romyhibu[_loc7_] as Morynolu;
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
                        _loc12_=this.mycyreto%_loc11_;
                        _loc13_=Math.floor(this.mycyreto/_loc11_);
                        _loc9_.x=this._mainPanel.x+_loc10_+_loc12_*_loc10_;
                        _loc9_.y=this._mainPanel.y+_loc10_*0.6+_loc13_*_loc10_;
                        this.mycyreto++;
                     }
                     if(_loc9_.width<=0||(isNaN(_loc9_.width)))
                     {
                        _loc9_.width=_loc10_;
                     }
                     if(_loc9_.height<=0||(isNaN(_loc9_.height)))
                     {
                        _loc9_.height=_loc10_;
                     }
                     _loc8_=new Morynolu(this.console,_loc9_.width,_loc9_.height);
                     _loc8_.x=_loc9_.x;
                     _loc8_.y=_loc9_.y;
                     _loc8_.name="graph_"+_loc7_;
                     this.romyhibu[_loc7_]=_loc8_;
                     this.tyl(_loc8_);
                  }
                  if(_loc2_==null)
                  {
                     _loc2_={};
                  }
                  _loc2_[_loc7_]=true;
                  _loc8_.update(_loc5_,this.curojuq);
               }
            }
         }
         for (_loc6_ in this.romyhibu)
         {
            if(_loc2_==null||!_loc2_[_loc6_])
            {
               this.romyhibu[_loc6_].close();
               GlobalNotificationActionte this.romyhibu[[_loc6_]];
            }
         }
         if(_loc3_!=null)
         {
            if(this.wic==null)
            {
               this.wic=new Morynolu(this.console,80,40,Morynolu.faforu);
               this.wic.name=Morynolu.faforu;
               this.wic.x=this._mainPanel.x+this._mainPanel.width-160;
               this.wic.y=this._mainPanel.y+15;
               this.tyl(this.wic);
               this._mainPanel.updateMenu();
            }
            this.wic.update(_loc3_,this.curojuq);
         }
         else
         {
            if(this.wic!=null)
            {
               this.purabu(Morynolu.faforu);
               this.wic=null;
            }
         }
         if(_loc4_!=null)
         {
            if(this.sot==null)
            {
               this.sot=new Morynolu(this.console,80,40,Morynolu.lojebywo);
               this.sot.name=Morynolu.lojebywo;
               this.sot.x=this._mainPanel.x+this._mainPanel.width-80;
               this.sot.y=this._mainPanel.y+15;
               this.tyl(this.sot);
               this._mainPanel.updateMenu();
            }
            this.sot.update(_loc4_,this.curojuq);
         }
         else
         {
            if(this.sot!=null)
            {
               this.purabu(Morynolu.lojebywo);
               this.sot=null;
            }
         }
         this.curojuq=false;
         return;
      }

      public function removeGraph(param1:Nama) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Morynolu = null;
         if((this.wic)&&param1==this.wic.group)
         {
            this.wic.close();
            this.wic=null;
         }
         else
         {
            if((this.sot)&&param1==this.sot.group)
            {
               this.sot.close();
               this.sot=null;
            }
            else
            {
               _loc2_=this.romyhibu[param1.name];
               if(_loc2_)
               {
                  _loc2_.close();
                  GlobalNotificationActionte this.romyhibu[[param1.name]];
               }
            }
         }
         return;
      }

      public function get displayRoller() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.getPanel(Dity.NAME) as Dity?true:false;
      }

      public function set displayRoller(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dity = null;
         if(this.displayRoller!=param1)
         {
            if(param1)
            {
               if(this.console.config.displayRollerEnabled)
               {
                  _loc2_=new Dity(this.console);
                  _loc2_.x=this._mainPanel.x+this._mainPanel.width-180;
                  _loc2_.y=this._mainPanel.y+55;
                  this.tyl(_loc2_);
               }
               else
               {
                  this.console.report("Display roller is disabled in config.",9);
               }
            }
            else
            {
               this.purabu(Dity.NAME);
            }
            this._mainPanel.updateMenu();
         }
         return;
      }

      public function get channelsPanel() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.cowy==null);
      }

      public function set channelsPanel(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.channelsPanel!=param1)
         {
            this.console.logs.vipo();
            if(param1)
            {
               this.cowy=new Niqicud(this.console);
               this.cowy.x=this._mainPanel.x+this._mainPanel.width-332;
               this.cowy.y=this._mainPanel.y-2;
               this.tyl(this.cowy);
               this.cowy.update();
               this.updateMenu();
            }
            else
            {
               this.purabu(Niqicud.NAME);
               this.cowy=null;
            }
            this.updateMenu();
         }
         return;
      }

      public function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.sot==null);
      }

      public function get fpsMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.wic==null);
      }

      public function tooltip(param1:String=null, param2:Qir=null) : void {
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
            this.console.addChild(this.zoqutyp);
            this.zoqutyp.wordWrap=false;
            this.zoqutyp.htmlText="<tt>"+param1+"</tt>";
            if(this.zoqutyp.width>120)
            {
               this.zoqutyp.width=120;
               this.zoqutyp.wordWrap=true;
            }
            this.zoqutyp.x=this.console.mouseX-this.zoqutyp.width/2;
            this.zoqutyp.y=this.console.mouseY+20;
            if(param2)
            {
               _loc4_=this.zoqutyp.getBounds(this.console);
               _loc5_=new Rectangle(param2.x,param2.y,param2.width,param2.height);
               _loc6_=_loc4_.bottom-_loc5_.bottom;
               if(_loc6_>0)
               {
                  if(this.zoqutyp.y-_loc6_>this.console.mouseY+15)
                  {
                     this.zoqutyp.y=this.zoqutyp.y-_loc6_;
                  }
                  else
                  {
                     if(_loc5_.y<this.console.mouseY-24&&_loc4_.y>_loc5_.bottom)
                     {
                        this.zoqutyp.y=this.console.mouseY-this.zoqutyp.height-15;
                     }
                  }
               }
               _loc7_=_loc4_.left-_loc5_.left;
               _loc8_=_loc4_.right-_loc5_.right;
               if(_loc7_<0)
               {
                  this.zoqutyp.x=this.zoqutyp.x-_loc7_;
               }
               else
               {
                  if(_loc8_>0)
                  {
                     this.zoqutyp.x=this.zoqutyp.x-_loc8_;
                  }
               }
            }
         }
         else
         {
            if(this.console.contains(this.zoqutyp))
            {
               this.console.removeChild(this.zoqutyp);
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
         this.jymem=new Wum(this.console);
         this.jymem.addEventListener(Event.COMPLETE,this.vuduquze,false,0,true);
         this.console.addChild(this.jymem);
         this._mainPanel.updateMenu();
         return;
      }

      public function get rulerActive() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.jymem)&&(this.console.contains(this.jymem))?true:false;
      }

      private function vuduquze(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.jymem)&&(this.console.contains(this.jymem)))
         {
            this.console.removeChild(this.jymem);
         }
         this.jymem=null;
         this._mainPanel.updateMenu();
         return;
      }

      private function gekeniq(param1:Event) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Qir = null;
         var _loc2_:Qir = param1.currentTarget as Qir;
         if(this.console.config.style.momajuho)
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
               _loc7_=this.console.getChildAt(_loc6_) as Qir;
               if((_loc7_)&&(_loc7_.visible))
               {
                  _loc3_.push(_loc7_.x,_loc7_.x+_loc7_.width);
                  _loc4_.push(_loc7_.y,_loc7_.y+_loc7_.height);
               }
               _loc6_++;
            }
            _loc2_.wesefaf(_loc3_,_loc4_);
         }
         return;
      }
   }

}