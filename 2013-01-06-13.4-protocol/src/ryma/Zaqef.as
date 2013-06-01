package ryma
{
[CLASS1849]   import wacic.Console;
   import flash.text.TextField;
   import flash.geom.Rectangle;
   import cakajitez.Rinicu;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;


   public class Zaqef extends Object
   {
      public function Zaqef(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.myj={};
         super();
         this.console=param1;
         this._mainPanel=new Rap(this.console);
         this.wywevykez=this.mainPanel.bula("tooltip",true);
         this.wywevykez.mouseEnabled=false;
         this.wywevykez.autoSize=TextFieldAutoSize.CENTER;
         this.wywevykez.multiline=true;
         this.cyd(this._mainPanel);
         return;
      }

      private var console:Console;

      private var _mainPanel:Rap;

      private var kekuvef:Netuwiq;

      private var cojukimum:Nocydokyb;

      private var fisi:Latemy;

      private var qamelek:Latemy;

      private var myj:Object;

      private var jepewuje:uint = 0;

      private var wywevykez:TextField;

      private var fububypi:Boolean;

      public function cyd(param1:Nil) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.console.contains(this.wywevykez))
         {
            this.console.addChildAt(param1,this.console.getChildIndex(this.wywevykez));
         }
         else
         {
            this.console.addChild(param1);
         }
         param1.addEventListener(Nil.lomyk,this.ducyd,false,0,true);
         param1.addEventListener(Nil.mato,this.ducyd,false,0,true);
         return;
      }

      public function dilef(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nil = this.console.getChildByName(param1) as Nil;
         if(_loc2_)
         {
            _loc2_.close();
         }
         return;
      }

      public function bukywijej(param1:String) : Nil {
         return this.console.getChildByName(param1) as Nil;
      }

      public function get mainPanel() : Rap {
         return this._mainPanel;
      }

      public function nup(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.console.getChildByName(param1) as Nil?true:false;
      }

      public function cyzu(param1:String, param2:Rectangle) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Nil = this.bukywijej(param1);
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
         var _loc1_:Nocydokyb = this.bukywijej(Nocydokyb.NAME) as Nocydokyb;
         if(_loc1_)
         {
            _loc1_.update();
         }
         return;
      }

      public function update(param1:Boolean, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fububypi=!param1;
         this._mainPanel.update(!param1&&(param2));
         if(!param1)
         {
            if((param2)&&!(this.cojukimum==null))
            {
               this.cojukimum.update();
            }
         }
         return;
      }

      public function updateGraphs(param1:Array) : void {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc2_:Object = null;
         var _loc3_:Rinicu = null;
         var _loc4_:Rinicu = null;
         var _loc5_:Rinicu = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Latemy = null;
         var _loc9_:Rectangle = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         this.jepewuje=0;
         for each (_loc5_ in param1)
         {
            if(_loc5_.type==Rinicu.pasal)
            {
               _loc3_=_loc5_;
            }
            else
            {
               if(_loc5_.type==Rinicu.copukuvi)
               {
                  _loc4_=_loc5_;
               }
               else
               {
                  _loc7_=_loc5_.name;
                  _loc8_=this.myj[_loc7_] as Latemy;
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
                        _loc12_=this.jepewuje%_loc11_;
                        _loc13_=Math.floor(this.jepewuje/_loc11_);
                        _loc9_.x=this._mainPanel.x+_loc10_+_loc12_*_loc10_;
                        _loc9_.y=this._mainPanel.y+_loc10_*0.6+_loc13_*_loc10_;
                        this.jepewuje++;
                     }
                     if(_loc9_.width<=0||(isNaN(_loc9_.width)))
                     {
                        _loc9_.width=_loc10_;
                     }
                     if(_loc9_.height<=0||(isNaN(_loc9_.height)))
                     {
                        _loc9_.height=_loc10_;
                     }
                     _loc8_=new Latemy(this.console,_loc9_.width,_loc9_.height);
                     _loc8_.x=_loc9_.x;
                     _loc8_.y=_loc9_.y;
                     _loc8_.name="graph_"+_loc7_;
                     this.myj[_loc7_]=_loc8_;
                     this.cyd(_loc8_);
                  }
                  if(_loc2_==null)
                  {
                     _loc2_={};
                  }
                  _loc2_[_loc7_]=true;
                  _loc8_.update(_loc5_,this.fububypi);
               }
            }
         }
         for (_loc6_ in this.myj)
         {
            if(_loc2_==null||!_loc2_[_loc6_])
            {
               this.myj[_loc6_].close();
               delete this.myj[[_loc6_]];
            }
         }
         if(_loc3_!=null)
         {
            if(this.fisi==null)
            {
               this.fisi=new Latemy(this.console,80,40,Latemy.pasal);
               this.fisi.name=Latemy.pasal;
               this.fisi.x=this._mainPanel.x+this._mainPanel.width-160;
               this.fisi.y=this._mainPanel.y+15;
               this.cyd(this.fisi);
               this._mainPanel.updateMenu();
            }
            this.fisi.update(_loc3_,this.fububypi);
         }
         else
         {
            if(this.fisi!=null)
            {
               this.dilef(Latemy.pasal);
               this.fisi=null;
            }
         }
         if(_loc4_!=null)
         {
            if(this.qamelek==null)
            {
               this.qamelek=new Latemy(this.console,80,40,Latemy.copukuvi);
               this.qamelek.name=Latemy.copukuvi;
               this.qamelek.x=this._mainPanel.x+this._mainPanel.width-80;
               this.qamelek.y=this._mainPanel.y+15;
               this.cyd(this.qamelek);
               this._mainPanel.updateMenu();
            }
            this.qamelek.update(_loc4_,this.fububypi);
         }
         else
         {
            if(this.qamelek!=null)
            {
               this.dilef(Latemy.copukuvi);
               this.qamelek=null;
            }
         }
         this.fububypi=false;
         return;
      }

      public function removeGraph(param1:Rinicu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Latemy = null;
         if((this.fisi)&&param1==this.fisi.group)
         {
            this.fisi.close();
            this.fisi=null;
         }
         else
         {
            if((this.qamelek)&&param1==this.qamelek.group)
            {
               this.qamelek.close();
               this.qamelek=null;
            }
            else
            {
               _loc2_=this.myj[param1.name];
               if(_loc2_)
               {
                  _loc2_.close();
                  delete this.myj[[param1.name]];
               }
            }
         }
         return;
      }

      public function get displayRoller() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.bukywijej(Lory.NAME) as Lory?true:false;
      }

      public function set displayRoller(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Lory = null;
         if(this.displayRoller!=param1)
         {
            if(param1)
            {
               if(this.console.config.displayRollerEnabled)
               {
                  _loc2_=new Lory(this.console);
                  _loc2_.x=this._mainPanel.x+this._mainPanel.width-180;
                  _loc2_.y=this._mainPanel.y+55;
                  this.cyd(_loc2_);
               }
               else
               {
                  this.console.report("Display roller is disabled in config.",9);
               }
            }
            else
            {
               this.dilef(Lory.NAME);
            }
            this._mainPanel.updateMenu();
         }
         return;
      }

      public function get channelsPanel() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.cojukimum==null);
      }

      public function set channelsPanel(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.channelsPanel!=param1)
         {
            this.console.logs.tumyr();
            if(param1)
            {
               this.cojukimum=new Nocydokyb(this.console);
               this.cojukimum.x=this._mainPanel.x+this._mainPanel.width-332;
               this.cojukimum.y=this._mainPanel.y-2;
               this.cyd(this.cojukimum);
               this.cojukimum.update();
               this.updateMenu();
            }
            else
            {
               this.dilef(Nocydokyb.NAME);
               this.cojukimum=null;
            }
            this.updateMenu();
         }
         return;
      }

      public function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.qamelek==null);
      }

      public function get fpsMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.fisi==null);
      }

      public function tooltip(param1:String=null, param2:Nil=null) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
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
            this.console.addChild(this.wywevykez);
            this.wywevykez.wordWrap=false;
            this.wywevykez.htmlText="<tt>"+param1+"</tt>";
            if(this.wywevykez.width>120)
            {
               this.wywevykez.width=120;
               this.wywevykez.wordWrap=true;
            }
            this.wywevykez.x=this.console.mouseX-this.wywevykez.width/2;
            this.wywevykez.y=this.console.mouseY+20;
            if(param2)
            {
               _loc4_=this.wywevykez.getBounds(this.console);
               _loc5_=new Rectangle(param2.x,param2.y,param2.width,param2.height);
               _loc6_=_loc4_.bottom-_loc5_.bottom;
               if(_loc6_>0)
               {
                  if(this.wywevykez.y-_loc6_>this.console.mouseY+15)
                  {
                     this.wywevykez.y=this.wywevykez.y-_loc6_;
                  }
                  else
                  {
                     if(_loc5_.y<this.console.mouseY-24&&_loc4_.y>_loc5_.bottom)
                     {
                        this.wywevykez.y=this.console.mouseY-this.wywevykez.height-15;
                     }
                  }
               }
               _loc7_=_loc4_.left-_loc5_.left;
               _loc8_=_loc4_.right-_loc5_.right;
               if(_loc7_<0)
               {
                  this.wywevykez.x=this.wywevykez.x-_loc7_;
               }
               else
               {
                  if(_loc8_>0)
                  {
                     this.wywevykez.x=this.wywevykez.x-_loc8_;
                  }
               }
            }
         }
         else
         {
            if(this.console.contains(this.wywevykez))
            {
               this.console.removeChild(this.wywevykez);
            }
         }
         return;
      }

      public function startRuler() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.rulerActive)
         {
            return;
         }
         this.kekuvef=new Netuwiq(this.console);
         this.kekuvef.addEventListener(Event.COMPLETE,this.bakub,false,0,true);
         this.console.addChild(this.kekuvef);
         this._mainPanel.updateMenu();
         return;
      }

      public function get rulerActive() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.kekuvef)&&(this.console.contains(this.kekuvef))?true:false;
      }

      private function bakub(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.kekuvef)&&(this.console.contains(this.kekuvef)))
         {
            this.console.removeChild(this.kekuvef);
         }
         this.kekuvef=null;
         this._mainPanel.updateMenu();
         return;
      }

      private function ducyd(param1:Event) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Nil = null;
         var _loc2_:Nil = param1.currentTarget as Nil;
         if(this.console.config.style.pujup)
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
               _loc7_=this.console.getChildAt(_loc6_) as Nil;
               if((_loc7_)&&(_loc7_.visible))
               {
                  _loc3_.push(_loc7_.x,_loc7_.x+_loc7_.width);
                  _loc4_.push(_loc7_.y,_loc7_.y+_loc7_.height);
               }
               _loc6_++;
            }
            _loc2_.disiq(_loc3_,_loc4_);
         }
         return;
      }
   }
[/CLASS]
}