package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import jediwip.Vofezuzy;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;


   public class StatusBar extends Sprite
   {
      public function StatusBar(param1:int, param2:int, param3:uint, param4:uint, param5:String=null) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.tafuseraj=new Sprite();
         super();
         addChild(this.tafuseraj);
         this.w_=param1;
         this.h_=param2;
         this.hufapypal=this.color_=param3;
         this.howoda=this.mekeculem=param4;
         this.bilaqo=16777215;
         if(!(param5==null)&&!(param5.length==0))
         {
            this.labelText_=new Guzowoja().setSize(14).setColor(this.bilaqo);
            this.labelText_.setBold(true);
            this.pehygy=new Kybidu().setParams(param5);
            this.labelText_.setStringBuilder(this.pehygy);
            this.vuvydot(this.labelText_);
            this.labelText_.filters=[new DropShadowFilter(0,0,0)];
            addChild(this.labelText_);
         }
         this.feh=new Guzowoja().setSize(14).setColor(16777215);
         this.feh.setBold(true);
         this.feh.filters=[new DropShadowFilter(0,0,0)];
         this.vuvydot(this.feh);
         this.ceto=new Vofezuzy();
         this.gew=new Guzowoja().setSize(14).setColor(this.bilaqo);
         this.gew.setBold(true);
         this.gew.alpha=0.6;
         this.vuvydot(this.gew);
         this.gew.filters=[new DropShadowFilter(0,0,0)];
         this.duhorepiq=new Sprite();
         this.duhorepiq.x=this.w_-25;
         this.duhorepiq.y=-3;
         this.duhorepiq.graphics.beginFill(16711935,0.0);
         this.duhorepiq.graphics.drawRect(0,0,20,20);
         this.duhorepiq.addEventListener(MouseEvent.MOUSE_OVER,this.nydelap);
         this.duhorepiq.addEventListener(MouseEvent.MOUSE_OUT,this.dyjul);
         this.cufo=new Guzowoja().setSize(14).setColor(9493531);
         this.cufo.setBold(true);
         this.cufo.setStringBuilder(new Vofezuzy("x2"));
         this.cufo.filters=[new DropShadowFilter(0,0,0)];
         this.duhorepiq.addChild(this.cufo);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         return;
      }

      public var w_:int;

      public var h_:int;

      public var color_:uint;

      public var mekeculem:uint;

      public var hebyby:uint;

      public var bilaqo:uint;

      public var val_:int = -1;

      public var naqahe:int = -1;

      public var boost_:int = -1;

      public var siha:int = -1;

      private var labelText_:Guzowoja;

      private var pehygy:Kybidu;

      private var feh:Guzowoja;

      private var ceto:Vofezuzy;

      private var gew:Guzowoja;

      private var cufo:Guzowoja;

      public var duhorepiq:Sprite;

      private var tafuseraj:Sprite;

      private var hufapypal:Number;

      private var howoda:Number;

      public var picolumah:Boolean = false;

      private var kikodawe:Boolean = false;

      public function vuvydot(param1:Guzowoja) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setVerticalAlign(Guzowoja.MIDDLE);
         param1.y=this.h_/2+1;
         return;
      }

      private function nydelap(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event("MULTIPLIER_OVER"));
         return;
      }

      private function dyjul(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event("MULTIPLIER_OUT"));
         return;
      }

      public function draw(param1:int, param2:int, param3:int, param4:int=-1) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(param2>0)
         {
            param1=Math.min(param2,Math.max(0,param1));
         }
         if(param1==this.val_&&param2==this.naqahe&&param3==this.boost_&&param4==this.siha)
         {
            return;
         }
         this.val_=param1;
         this.naqahe=param2;
         this.boost_=param3;
         this.siha=param4;
         this.puluqodi();
         return;
      }

      public function mujet(param1:String, param2:Object=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pehygy.setParams(param1,param2);
         this.labelText_.setStringBuilder(this.pehygy);
         return;
      }

      private function buho(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bilaqo=param1;
         if(this.gew!=null)
         {
            this.gew.setColor(this.bilaqo);
         }
         this.feh.setColor(this.bilaqo);
         return;
      }

      private function puluqodi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         graphics.clear();
         this.tafuseraj.graphics.clear();
         var _loc1_:uint = 16777215;
         if(this.siha>0&&this.naqahe-this.boost_==this.siha)
         {
            _loc1_=16572160;
         }
         else
         {
            if(this.boost_>0)
            {
               _loc1_=6206769;
            }
         }
         if(this.bilaqo!=_loc1_)
         {
            this.buho(_loc1_);
         }
         graphics.beginFill(this.mekeculem);
         graphics.drawRect(0,0,this.w_,this.h_);
         graphics.endFill();
         if(this.kikodawe)
         {
            this.tafuseraj.graphics.beginFill(this.hebyby);
            this.tafuseraj.graphics.drawRect(0,0,this.w_,this.h_);
         }
         this.tafuseraj.graphics.beginFill(this.color_);
         if(this.naqahe>0)
         {
            this.tafuseraj.graphics.drawRect(0,0,this.w_*this.val_/this.naqahe,this.h_);
         }
         else
         {
            this.tafuseraj.graphics.drawRect(0,0,this.w_,this.h_);
         }
         this.tafuseraj.graphics.endFill();
         if((this.picolumah)&&this.h_>4)
         {
            this.wibaf();
         }
         else
         {
            if(contains(this.feh))
            {
               removeChild(this.feh);
            }
            if(contains(this.gew))
            {
               removeChild(this.gew);
            }
         }
         return;
      }

      public function wibaf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.naqahe>0)
         {
            this.feh.setStringBuilder(this.ceto.setString(this.val_+"/"+this.naqahe));
         }
         else
         {
            this.feh.setStringBuilder(this.ceto.setString(""+this.val_));
         }
         if(!contains(this.feh))
         {
            addChild(this.feh);
         }
         if(this.boost_!=0)
         {
            this.gew.setStringBuilder(this.ceto.setString(" ("+(this.boost_>0?"+":"")+this.boost_.toString()+")"));
            this.feh.x=this.w_/2-(this.feh.width+this.gew.width)/2;
            this.gew.x=this.feh.x+this.feh.width;
            if(!contains(this.gew))
            {
               addChild(this.gew);
            }
         }
         else
         {
            this.feh.x=this.w_/2-this.feh.width/2;
            if(contains(this.gew))
            {
               removeChild(this.gew);
            }
         }
         return;
      }

      public function masyhebun() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.duhorepiq);
         this.goterybem(3,9493531,16777215);
         return;
      }

      public function rujeb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.duhorepiq.parent)
         {
            removeChild(this.duhorepiq);
         }
         return;
      }

      public function goterybem(param1:Number, param2:Number, param3:Number) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.kikodawe=true;
         this.color_=param2;
         this.hebyby=param3;
         this.tonaker=param1;
         this.puluqodi();
         addEventListener(Event.ENTER_FRAME,this.rygobom);
         return;
      }

      private var tonaker:int;

      private var foqu:int = -1;

      private var speed:Number = 0.1;

      private function rygobom(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.tafuseraj.alpha>1||this.tafuseraj.alpha<0)
         {
            this.foqu=this.foqu*-1;
            if(this.tafuseraj.alpha>1)
            {
               this.tonaker--;
               if(!this.tonaker)
               {
                  this.kikodawe=false;
                  this.color_=this.hufapypal;
                  this.mekeculem=this.howoda;
                  this.tafuseraj.alpha=1;
                  this.puluqodi();
                  removeEventListener(Event.ENTER_FRAME,this.rygobom);
               }
            }
         }
         this.tafuseraj.alpha=this.tafuseraj.alpha+this.speed*this.foqu;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.picolumah=true;
         this.puluqodi();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.picolumah=false;
         this.puluqodi();
         return;
      }
   }

}