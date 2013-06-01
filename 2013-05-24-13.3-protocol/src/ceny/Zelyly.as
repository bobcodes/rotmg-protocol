package ceny
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import pepyca.Fifu;


   public class Zelyly extends Sprite
   {
      public function Zelyly(param1:int=7, param2:uint=150) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.fif=new Vector.<Hom>();
         this.vit=new Vector.<Hom>();
         this.lunoh=param1;
         this.dycakanyc=param2;
         this.index=0;
         this.wyjamyqa=true;
         this.timer.addEventListener(TimerEvent.TIMER,this.tyj);
         this.timer.start();
         return;
      }

      private var fif:Vector.<Hom>;

      private var vit:Vector.<Hom>;

      private var lunoh:int;

      private var index:int;

      private var wyjamyqa:Boolean;

      private const timer:Timer = new Timer(1000);

      private const dabolihys:Vector.<Hom> = new Vector.<Hom>();

      private var jole:Boolean = false;

      private var dycakanyc:int;

      private function tyj(param1:TimerEvent) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Hom = null;
         var _loc3_:Hom = null;
         for each (_loc2_ in this.vit)
         {
            if((_loc2_.saka())&&!this.jole)
            {
               this.dabolihys.push(_loc2_);
               continue;
            }
            break;
         }
         while(this.dabolihys.length>0)
         {
            this.qidupa(this.dabolihys.pop());
            if(!this.wyjamyqa)
            {
               _loc3_=this.fif[this.index++];
               if(!_loc3_.saka())
               {
                  this.sevonajob(_loc3_);
                  this.wyjamyqa=this.index==this.fif.length;
                  this.tyguz();
               }
            }
         }
         return;
      }

      public function setup(param1:Fifu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lunoh=param1.lunoh;
         return;
      }

      public function labykyhif(param1:Hom) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Hom = null;
         if(this.fif.length>this.dycakanyc)
         {
            _loc2_=this.fif.shift();
            this.qidupa(_loc2_);
            this.index--;
         }
         this.fif.push(param1);
         if(this.wyjamyqa)
         {
            this.honazytof(param1);
         }
         return;
      }

      private function qidupa(param1:Hom) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.vit.indexOf(param1);
         if(_loc2_!=-1)
         {
            removeChild(param1);
            this.vit.splice(_loc2_,1);
            this.wyjamyqa=this.index==this.fif.length;
         }
         return;
      }

      private function honazytof(param1:Hom) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.index++;
         this.sevonajob(param1);
         this.zule();
         this.tyguz();
         return;
      }

      public function gusula() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.jole)&&(this.dacucoju()))
         {
            this.wetaraky();
         }
         else
         {
            this.jyget();
         }
         this.jole=true;
         return;
      }

      public function jyget() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Hom = null;
         var _loc1_:int = this.index-this.vit.length-1;
         var _loc2_:int = Math.max(0,this.index-this.lunoh-1);
         var _loc3_:int = _loc1_;
         while(_loc3_>_loc2_)
         {
            _loc4_=this.fif[_loc3_];
            if(this.vit.indexOf(_loc4_)==-1)
            {
               this.puqal(_loc4_);
            }
            _loc3_--;
         }
         this.tyguz();
         return;
      }

      public function fidypera() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.jole)
         {
            this.jole=false;
            this.myre();
            this.tyj(null);
         }
         if(!this.wyjamyqa)
         {
            this.tor();
         }
         else
         {
            if(this.jole)
            {
               this.jole=false;
            }
         }
         return;
      }

      public function myre() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(!this.wyjamyqa)
         {
            this.tor();
         }
         return;
      }

      private function sevonajob(param1:Hom) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vit.push(param1);
         addChild(param1);
         return;
      }

      private function zule() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vit.length>this.lunoh)
         {
            removeChild(this.vit.shift());
         }
         return;
      }

      private function dacucoju() : Boolean {
         return this.index>this.lunoh;
      }

      private function wetaraky() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Hom = this.fif[--this.index-this.lunoh];
         this.puqal(_loc1_);
         this.gegynyfuf();
         this.tyguz();
         this.wyjamyqa=false;
         return;
      }

      private function tor() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Hom = this.fif[this.index++];
         this.sevonajob(_loc1_);
         this.zule();
         this.wyjamyqa=this.index==this.fif.length;
         this.tyguz();
         return;
      }

      private function puqal(param1:Hom) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vit.unshift(param1);
         addChild(param1);
         return;
      }

      private function gegynyfuf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vit.length>this.lunoh)
         {
            removeChild(this.vit.pop());
         }
         return;
      }

      private function tyguz() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Hom = null;
         var _loc1_:* = 0;
         var _loc2_:int = this.vit.length;
         while(_loc2_--)
         {
            _loc3_=this.vit[_loc2_];
            _loc3_.y=_loc1_;
            _loc1_=_loc1_-_loc3_.height;
         }
         return;
      }
   }

}