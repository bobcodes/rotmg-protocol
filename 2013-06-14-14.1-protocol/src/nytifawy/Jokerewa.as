package nytifawy
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import pumoc.Zesihag;


   public class Jokerewa extends Sprite
   {
      public function Jokerewa(param1:int=7, param2:uint=150) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         this.jihopon=new Vector.<Qetejobu>();
         this.mywuruzyv=new Vector.<Qetejobu>();
         this.bisyvy=param1;
         this.gewigywaz=param2;
         this.index=0;
         this.gybud=true;
         this.timer.addEventListener(TimerEvent.TIMER,this.qaboma);
         this.timer.start();
         return;
      }

      private var jihopon:Vector.<Qetejobu>;

      private var mywuruzyv:Vector.<Qetejobu>;

      private var bisyvy:int;

      private var index:int;

      private var gybud:Boolean;

      private const timer:Timer = new Timer(1000);

      private const kevave:Vector.<Qetejobu> = new Vector.<Qetejobu>();

      private var watyto:Boolean = false;

      private var gewigywaz:int;

      private function qaboma(param1:TimerEvent) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Qetejobu = null;
         var _loc3_:Qetejobu = null;
         for each (_loc2_ in this.mywuruzyv)
         {
            if((_loc2_.magafehi())&&!this.watyto)
            {
               this.kevave.push(_loc2_);
               continue;
            }
            break;
         }
         while(this.kevave.length>0)
         {
            this.modah(this.kevave.pop());
            if(!this.gybud)
            {
               _loc3_=this.jihopon[this.index++];
               if(!_loc3_.magafehi())
               {
                  this.sigota(_loc3_);
                  this.gybud=this.index==this.jihopon.length;
                  this.fugezuzus();
               }
            }
         }
         return;
      }

      public function setup(param1:Zesihag) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bisyvy=param1.bisyvy;
         return;
      }

      public function vucevaz(param1:Qetejobu) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Qetejobu = null;
         if(this.jihopon.length>this.gewigywaz)
         {
            _loc2_=this.jihopon.shift();
            this.modah(_loc2_);
            this.index--;
         }
         this.jihopon.push(param1);
         if(this.gybud)
         {
            this.jybyhagyz(param1);
         }
         return;
      }

      private function modah(param1:Qetejobu) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.mywuruzyv.indexOf(param1);
         if(_loc2_!=-1)
         {
            removeChild(param1);
            this.mywuruzyv.splice(_loc2_,1);
            this.gybud=this.index==this.jihopon.length;
         }
         return;
      }

      private function jybyhagyz(param1:Qetejobu) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.index++;
         this.sigota(param1);
         this.qywe();
         this.fugezuzus();
         return;
      }

      public function mymabihe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.watyto)&&(this.nekijo()))
         {
            this.zaw();
         }
         else
         {
            this.wamo();
         }
         this.watyto=true;
         return;
      }

      public function wamo() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Qetejobu = null;
         var _loc1_:int = this.index-this.mywuruzyv.length-1;
         var _loc2_:int = Math.max(0,this.index-this.bisyvy-1);
         var _loc3_:int = _loc1_;
         while(_loc3_>_loc2_)
         {
            _loc4_=this.jihopon[_loc3_];
            if(this.mywuruzyv.indexOf(_loc4_)==-1)
            {
               this.loreb(_loc4_);
            }
            _loc3_--;
         }
         this.fugezuzus();
         return;
      }

      public function fowi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.watyto)
         {
            this.watyto=false;
            this.lujyt();
            this.qaboma(null);
         }
         if(!this.gybud)
         {
            this.liroh();
         }
         else
         {
            if(this.watyto)
            {
               this.watyto=false;
            }
         }
         return;
      }

      public function lujyt() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(!this.gybud)
         {
            this.liroh();
         }
         return;
      }

      public function vyqe() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(!this.watyto)
         {
            this.wamo();
            this.watyto=true;
         }
         else
         {
            _loc1_=0;
            while(_loc1_<this.bisyvy)
            {
               if(this.nekijo())
               {
                  this.zaw();
                  _loc1_++;
                  continue;
               }
               break;
            }
         }
         return;
      }

      public function zaf() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.bisyvy)
         {
            if(!this.gybud)
            {
               this.liroh();
               _loc1_++;
               continue;
            }
            this.watyto=false;
            break;
         }
         return;
      }

      private function sigota(param1:Qetejobu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mywuruzyv.push(param1);
         addChild(param1);
         return;
      }

      private function qywe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mywuruzyv.length>this.bisyvy)
         {
            removeChild(this.mywuruzyv.shift());
         }
         return;
      }

      private function nekijo() : Boolean {
         return this.index>this.bisyvy;
      }

      private function zaw() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Qetejobu = this.jihopon[--this.index-this.bisyvy];
         this.loreb(_loc1_);
         this.zahanucak();
         this.fugezuzus();
         this.gybud=false;
         return;
      }

      private function liroh() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Qetejobu = this.jihopon[this.index++];
         this.sigota(_loc1_);
         this.qywe();
         this.gybud=this.index==this.jihopon.length;
         this.fugezuzus();
         return;
      }

      private function loreb(param1:Qetejobu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mywuruzyv.unshift(param1);
         addChild(param1);
         return;
      }

      private function zahanucak() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mywuruzyv.length>this.bisyvy)
         {
            removeChild(this.mywuruzyv.pop());
         }
         return;
      }

      private function fugezuzus() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Qetejobu = null;
         var _loc1_:* = 0;
         var _loc2_:int = this.mywuruzyv.length;
         while(_loc2_--)
         {
            _loc3_=this.mywuruzyv[_loc2_];
            _loc3_.y=_loc1_;
            _loc1_=_loc1_-_loc3_.height;
         }
         return;
      }
   }

}