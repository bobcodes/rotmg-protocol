package hine
{
[CLASS1132]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import setuv.Tufyz;


   public class Myr extends Sprite
   {
      public function Myr(param1:int=7, param2:uint=150) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.pyce=new Vector.<Bityn>();
         this.vagyd=new Vector.<Bityn>();
         this.puzylata=param1;
         this.feru=param2;
         this.index=0;
         this.huwaha=true;
         this.timer.addEventListener(TimerEvent.TIMER,this.givuwide);
         this.timer.start();
         return;
      }

      private var pyce:Vector.<Bityn>;

      private var vagyd:Vector.<Bityn>;

      private var puzylata:int;

      private var index:int;

      private var huwaha:Boolean;

      private const timer:Timer = new Timer(1000);

      private const wakuk:Vector.<Bityn> = new Vector.<Bityn>();

      private var cyqe:Boolean = false;

      private var feru:int;

      private function givuwide(param1:TimerEvent) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Bityn = null;
         var _loc3_:Bityn = null;
         for each (_loc2_ in this.vagyd)
         {
            if((_loc2_.lely())&&!this.cyqe)
            {
               this.wakuk.push(_loc2_);
               continue;
            }
            break;
         }
         while(this.wakuk.length>0)
         {
            this.hequsa(this.wakuk.pop());
            if(!this.huwaha)
            {
               _loc3_=this.pyce[this.index++];
               if(!_loc3_.lely())
               {
                  this.merydet(_loc3_);
                  this.huwaha=this.index==this.pyce.length;
                  this.loqocy();
               }
            }
         }
         return;
      }

      public function setup(param1:Tufyz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.puzylata=param1.puzylata;
         return;
      }

      public function qakaza(param1:Bityn) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Bityn = null;
         if(this.pyce.length>this.feru)
         {
            _loc2_=this.pyce.shift();
            this.hequsa(_loc2_);
            this.index--;
         }
         this.pyce.push(param1);
         if(this.huwaha)
         {
            this.rilicelih(param1);
         }
         return;
      }

      private function hequsa(param1:Bityn) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.vagyd.indexOf(param1);
         if(_loc2_!=-1)
         {
            removeChild(param1);
            this.vagyd.splice(_loc2_,1);
            this.huwaha=this.index==this.pyce.length;
         }
         return;
      }

      private function rilicelih(param1:Bityn) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.index++;
         this.merydet(param1);
         this.bori();
         this.loqocy();
         return;
      }

      public function dufol() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.cyqe)&&(this.cicici()))
         {
            this.jedov();
         }
         else
         {
            this.womemoke();
         }
         this.cyqe=true;
         return;
      }

      public function womemoke() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Bityn = null;
         var _loc1_:int = this.index-this.vagyd.length-1;
         var _loc2_:int = Math.max(0,this.index-this.puzylata-1);
         var _loc3_:int = _loc1_;
         while(_loc3_>_loc2_)
         {
            _loc4_=this.pyce[_loc3_];
            if(this.vagyd.indexOf(_loc4_)==-1)
            {
               this.jyqek(_loc4_);
            }
            _loc3_--;
         }
         this.loqocy();
         return;
      }

      public function tyj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.cyqe)
         {
            this.cyqe=false;
            this.sil();
            this.givuwide(null);
         }
         if(!this.huwaha)
         {
            this.cyvo();
         }
         else
         {
            if(this.cyqe)
            {
               this.cyqe=false;
            }
         }
         return;
      }

      public function sil() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(!this.huwaha)
         {
            this.cyvo();
         }
         return;
      }

      private function merydet(param1:Bityn) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vagyd.push(param1);
         addChild(param1);
         return;
      }

      private function bori() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vagyd.length>this.puzylata)
         {
            removeChild(this.vagyd.shift());
         }
         return;
      }

      private function cicici() : Boolean {
         return this.index>this.puzylata;
      }

      private function jedov() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Bityn = this.pyce[--this.index-this.puzylata];
         this.jyqek(_loc1_);
         this.defowohyv();
         this.loqocy();
         this.huwaha=false;
         return;
      }

      private function cyvo() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Bityn = this.pyce[this.index++];
         this.merydet(_loc1_);
         this.bori();
         this.huwaha=this.index==this.pyce.length;
         this.loqocy();
         return;
      }

      private function jyqek(param1:Bityn) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vagyd.unshift(param1);
         addChild(param1);
         return;
      }

      private function defowohyv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vagyd.length>this.puzylata)
         {
            removeChild(this.vagyd.pop());
         }
         return;
      }

      private function loqocy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Bityn = null;
         var _loc1_:* = 0;
         var _loc2_:int = this.vagyd.length;
         while(_loc2_--)
         {
            _loc3_=this.vagyd[_loc2_];
            _loc3_.y=_loc1_;
            _loc1_=_loc1_-_loc3_.height;
         }
         return;
      }
   }
[/CLASS]
}