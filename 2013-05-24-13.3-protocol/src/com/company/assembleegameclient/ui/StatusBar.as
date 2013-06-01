package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;
   import nec.Nara;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;


   public class StatusBar extends Sprite
   {
      public function StatusBar(param1:int, param2:int, param3:uint, param4:uint, param5:String=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.nurup=new Sprite();
         super();
         addChild(this.nurup);
         this.w_=param1;
         this.h_=param2;
         this.qygohaf=this.color_=param3;
         this.nevi=this.zunigiwa=param4;
         this.fyverafu=16777215;
         if(!(param5==null)&&!(param5.length==0))
         {
            this.labelText_=new Lufub().setSize(14).setColor(this.fyverafu);
            this.labelText_.setBold(true);
            this.kepepuvu=new Sire().setParams(param5);
            this.labelText_.setStringBuilder(this.kepepuvu);
            this.vejehabej(this.labelText_);
            this.labelText_.filters=[new DropShadowFilter(0,0,0)];
            addChild(this.labelText_);
         }
         this.nuzat=new Lufub().setSize(14).setColor(16777215);
         this.nuzat.setBold(true);
         this.nuzat.filters=[new DropShadowFilter(0,0,0)];
         this.vejehabej(this.nuzat);
         this.fuvepym=new Nara();
         this.telik=new Lufub().setSize(14).setColor(this.fyverafu);
         this.telik.setBold(true);
         this.telik.alpha=0.6;
         this.vejehabej(this.telik);
         this.telik.filters=[new DropShadowFilter(0,0,0)];
         this.kybyzube=new Sprite();
         this.kybyzube.x=this.w_-25;
         this.kybyzube.y=-3;
         this.kybyzube.graphics.beginFill(16711935,0.0);
         this.kybyzube.graphics.drawRect(0,0,20,20);
         this.kybyzube.addEventListener(MouseEvent.MOUSE_OVER,this.hibidas);
         this.kybyzube.addEventListener(MouseEvent.MOUSE_OUT,this.cukybe);
         this.pupyvareq=new Lufub().setSize(14).setColor(9493531);
         this.pupyvareq.setBold(true);
         this.pupyvareq.setStringBuilder(new Nara("x2"));
         this.pupyvareq.filters=[new DropShadowFilter(0,0,0)];
         this.kybyzube.addChild(this.pupyvareq);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         return;
      }

      public var w_:int;

      public var h_:int;

      public var color_:uint;

      public var zunigiwa:uint;

      public var jabutyru:uint;

      public var fyverafu:uint;

      public var val_:int = -1;

      public var fapyfotoj:int = -1;

      public var boost_:int = -1;

      public var kap:int = -1;

      private var labelText_:Lufub;

      private var kepepuvu:Sire;

      private var nuzat:Lufub;

      private var fuvepym:Nara;

      private var telik:Lufub;

      private var pupyvareq:Lufub;

      public var kybyzube:Sprite;

      private var nurup:Sprite;

      private var qygohaf:Number;

      private var nevi:Number;

      public var vefymyjul:Boolean = false;

      private var nysiryvo:Boolean = false;

      public function vejehabej(param1:Lufub) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.setVerticalAlign(Lufub.MIDDLE);
         param1.y=this.h_/2+1;
         return;
      }

      private function hibidas(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event("MULTIPLIER_OVER"));
         return;
      }

      private function cukybe(param1:MouseEvent) : void {
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
         if(param1==this.val_&&param2==this.fapyfotoj&&param3==this.boost_&&param4==this.kap)
         {
            return;
         }
         this.val_=param1;
         this.fapyfotoj=param2;
         this.boost_=param3;
         this.kap=param4;
         this.buvima();
         return;
      }

      public function bevuzinu(param1:String, param2:Object=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.kepepuvu.setParams(param1,param2);
         this.labelText_.setStringBuilder(this.kepepuvu);
         return;
      }

      private function tomoz(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fyverafu=param1;
         if(this.telik!=null)
         {
            this.telik.setColor(this.fyverafu);
         }
         this.nuzat.setColor(this.fyverafu);
         return;
      }

      private function buvima() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         this.nurup.graphics.clear();
         var _loc1_:uint = 16777215;
         if(this.kap>0&&this.fapyfotoj-this.boost_==this.kap)
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
         if(this.fyverafu!=_loc1_)
         {
            this.tomoz(_loc1_);
         }
         graphics.beginFill(this.zunigiwa);
         graphics.drawRect(0,0,this.w_,this.h_);
         graphics.endFill();
         if(this.nysiryvo)
         {
            this.nurup.graphics.beginFill(this.jabutyru);
            this.nurup.graphics.drawRect(0,0,this.w_,this.h_);
         }
         this.nurup.graphics.beginFill(this.color_);
         if(this.fapyfotoj>0)
         {
            this.nurup.graphics.drawRect(0,0,this.w_*this.val_/this.fapyfotoj,this.h_);
         }
         else
         {
            this.nurup.graphics.drawRect(0,0,this.w_,this.h_);
         }
         this.nurup.graphics.endFill();
         if((this.vefymyjul)&&this.h_>4)
         {
            this.pihob();
         }
         else
         {
            if(contains(this.nuzat))
            {
               removeChild(this.nuzat);
            }
            if(contains(this.telik))
            {
               removeChild(this.telik);
            }
         }
         return;
      }

      public function pihob() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.fapyfotoj>0)
         {
            this.nuzat.setStringBuilder(this.fuvepym.setString(this.val_+"/"+this.fapyfotoj));
         }
         else
         {
            this.nuzat.setStringBuilder(this.fuvepym.setString(""+this.val_));
         }
         if(!contains(this.nuzat))
         {
            addChild(this.nuzat);
         }
         if(this.boost_!=0)
         {
            this.telik.setStringBuilder(this.fuvepym.setString(" ("+(this.boost_>0?"+":"")+this.boost_.toString()+")"));
            this.nuzat.x=this.w_/2-(this.nuzat.width+this.telik.width)/2;
            this.telik.x=this.nuzat.x+this.nuzat.width;
            if(!contains(this.telik))
            {
               addChild(this.telik);
            }
         }
         else
         {
            this.nuzat.x=this.w_/2-this.nuzat.width/2;
            if(contains(this.telik))
            {
               removeChild(this.telik);
            }
         }
         return;
      }

      public function ryba() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.kybyzube);
         this.nudovuhi(3,9493531,16777215);
         return;
      }

      public function pobimufy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.kybyzube.parent)
         {
            removeChild(this.kybyzube);
         }
         return;
      }

      public function nudovuhi(param1:Number, param2:Number, param3:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.nysiryvo=true;
         this.color_=param2;
         this.jabutyru=param3;
         this.puqudo=param1;
         this.buvima();
         addEventListener(Event.ENTER_FRAME,this.kukyfojen);
         return;
      }

      private var puqudo:int;

      private var nedowun:int = -1;

      private var speed:Number = 0.1;

      private function kukyfojen(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.nurup.alpha>1||this.nurup.alpha<0)
         {
            this.nedowun=this.nedowun*-1;
            if(this.nurup.alpha>1)
            {
               this.puqudo--;
               if(!this.puqudo)
               {
                  this.nysiryvo=false;
                  this.color_=this.qygohaf;
                  this.zunigiwa=this.nevi;
                  this.nurup.alpha=1;
                  this.buvima();
                  removeEventListener(Event.ENTER_FRAME,this.kukyfojen);
               }
            }
         }
         this.nurup.alpha=this.nurup.alpha+this.speed*this.nedowun;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vefymyjul=true;
         this.buvima();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vefymyjul=false;
         this.buvima();
         return;
      }
   }

}