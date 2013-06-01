package com.company.assembleegameclient.ui
{
[CLASS1042]   import flash.display.Sprite;
   import pudev.Capitu;
   import totuhare.Zufi;
   import totuhare.Javo;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;


   public class StatusBar extends Sprite
   {
      public function StatusBar(param1:int, param2:int, param3:uint, param4:uint, param5:String=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.pafod=new Sprite();
         super();
         addChild(this.pafod);
         this.w_=param1;
         this.h_=param2;
         this.curika=this.color_=param3;
         this.vybezudu=this.syqyjina=param4;
         this.winudihuv=16777215;
         if(!(param5==null)&&!(param5.length==0))
         {
            this.labelText_=new Capitu().setSize(14).setColor(this.winudihuv);
            this.labelText_.setBold(true);
            this.dokagapel=new Zufi().setParams(param5);
            this.labelText_.setStringBuilder(this.dokagapel);
            this.loqenot(this.labelText_);
            this.labelText_.filters=[new DropShadowFilter(0,0,0)];
            addChild(this.labelText_);
         }
         this.bulimizyn=new Capitu().setSize(14).setColor(16777215);
         this.bulimizyn.setBold(true);
         this.bulimizyn.filters=[new DropShadowFilter(0,0,0)];
         this.loqenot(this.bulimizyn);
         this.fibabefe=new Javo();
         this.bowit=new Capitu().setSize(14).setColor(this.winudihuv);
         this.bowit.setBold(true);
         this.bowit.alpha=0.6;
         this.loqenot(this.bowit);
         this.bowit.filters=[new DropShadowFilter(0,0,0)];
         this.jequ=new Sprite();
         this.jequ.x=this.w_-25;
         this.jequ.y=-3;
         this.jequ.graphics.beginFill(16711935,0.0);
         this.jequ.graphics.drawRect(0,0,20,20);
         this.jequ.addEventListener(MouseEvent.MOUSE_OVER,this.tanylytit);
         this.jequ.addEventListener(MouseEvent.MOUSE_OUT,this.gujobom);
         this.fyvavucus=new Capitu().setSize(14).setColor(9493531);
         this.fyvavucus.setBold(true);
         this.fyvavucus.setStringBuilder(new Javo("x2"));
         this.fyvavucus.filters=[new DropShadowFilter(0,0,0)];
         this.jequ.addChild(this.fyvavucus);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         return;
      }

      public var w_:int;

      public var h_:int;

      public var color_:uint;

      public var syqyjina:uint;

      public var ninabe:uint;

      public var winudihuv:uint;

      public var val_:int = -1;

      public var vanapupel:int = -1;

      public var boost_:int = -1;

      public var tyzares:int = -1;

      private var labelText_:Capitu;

      private var dokagapel:Zufi;

      private var bulimizyn:Capitu;

      private var fibabefe:Javo;

      private var bowit:Capitu;

      private var fyvavucus:Capitu;

      public var jequ:Sprite;

      private var pafod:Sprite;

      private var curika:Number;

      private var vybezudu:Number;

      public var dupo:Boolean = false;

      private var pulupiti:Boolean = false;

      public function loqenot(param1:Capitu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setVerticalAlign(Capitu.MIDDLE);
         param1.y=this.h_/2+1;
         return;
      }

      private function tanylytit(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event("MULTIPLIER_OVER"));
         return;
      }

      private function gujobom(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event("MULTIPLIER_OUT"));
         return;
      }

      public function draw(param1:int, param2:int, param3:int, param4:int=-1) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param2>0)
         {
            param1=Math.min(param2,Math.max(0,param1));
         }
         if(param1==this.val_&&param2==this.vanapupel&&param3==this.boost_&&param4==this.tyzares)
         {
            return;
         }
         this.val_=param1;
         this.vanapupel=param2;
         this.boost_=param3;
         this.tyzares=param4;
         this.mypu();
         return;
      }

      public function qycema(param1:String, param2:Object=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.dokagapel.setParams(param1,param2);
         this.labelText_.setStringBuilder(this.dokagapel);
         return;
      }

      private function son(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.winudihuv=param1;
         if(this.bowit!=null)
         {
            this.bowit.setColor(this.winudihuv);
         }
         this.bulimizyn.setColor(this.winudihuv);
         return;
      }

      private function mypu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         this.pafod.graphics.clear();
         var _loc1_:uint = 16777215;
         if(this.tyzares>0&&this.vanapupel-this.boost_==this.tyzares)
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
         if(this.winudihuv!=_loc1_)
         {
            this.son(_loc1_);
         }
         graphics.beginFill(this.syqyjina);
         graphics.drawRect(0,0,this.w_,this.h_);
         graphics.endFill();
         if(this.pulupiti)
         {
            this.pafod.graphics.beginFill(this.ninabe);
            this.pafod.graphics.drawRect(0,0,this.w_,this.h_);
         }
         this.pafod.graphics.beginFill(this.color_);
         if(this.vanapupel>0)
         {
            this.pafod.graphics.drawRect(0,0,this.w_*this.val_/this.vanapupel,this.h_);
         }
         else
         {
            this.pafod.graphics.drawRect(0,0,this.w_,this.h_);
         }
         this.pafod.graphics.endFill();
         if((this.dupo)&&this.h_>4)
         {
            this.bijogi();
         }
         else
         {
            if(contains(this.bulimizyn))
            {
               removeChild(this.bulimizyn);
            }
            if(contains(this.bowit))
            {
               removeChild(this.bowit);
            }
         }
         return;
      }

      public function bijogi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vanapupel>0)
         {
            this.bulimizyn.setStringBuilder(this.fibabefe.setString(this.val_+"/"+this.vanapupel));
         }
         else
         {
            this.bulimizyn.setStringBuilder(this.fibabefe.setString(""+this.val_));
         }
         if(!contains(this.bulimizyn))
         {
            addChild(this.bulimizyn);
         }
         if(this.boost_!=0)
         {
            this.bowit.setStringBuilder(this.fibabefe.setString(" ("+(this.boost_>0?"+":"")+this.boost_.toString()+")"));
            this.bulimizyn.x=this.w_/2-(this.bulimizyn.width+this.bowit.width)/2;
            this.bowit.x=this.bulimizyn.x+this.bulimizyn.width;
            if(!contains(this.bowit))
            {
               addChild(this.bowit);
            }
         }
         else
         {
            this.bulimizyn.x=this.w_/2-this.bulimizyn.width/2;
            if(contains(this.bowit))
            {
               removeChild(this.bowit);
            }
         }
         return;
      }

      public function legoh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.jequ);
         this.regepijuc(3,9493531,16777215);
         return;
      }

      public function tasohegyl() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.jequ.parent)
         {
            removeChild(this.jequ);
         }
         return;
      }

      public function regepijuc(param1:Number, param2:Number, param3:Number) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.pulupiti=true;
         this.color_=param2;
         this.ninabe=param3;
         this.dyk=param1;
         this.mypu();
         addEventListener(Event.ENTER_FRAME,this.pyj);
         return;
      }

      private var dyk:int;

      private var mezawid:int = -1;

      private var speed:Number = 0.1;

      private function pyj(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.pafod.alpha>1||this.pafod.alpha<0)
         {
            this.mezawid=this.mezawid*-1;
            if(this.pafod.alpha>1)
            {
               this.dyk--;
               if(!this.dyk)
               {
                  this.pulupiti=false;
                  this.color_=this.curika;
                  this.syqyjina=this.vybezudu;
                  this.pafod.alpha=1;
                  this.mypu();
                  removeEventListener(Event.ENTER_FRAME,this.pyj);
               }
            }
         }
         this.pafod.alpha=this.pafod.alpha+this.speed*this.mezawid;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dupo=true;
         this.mypu();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dupo=false;
         this.mypu();
         return;
      }
   }
[/CLASS]
}