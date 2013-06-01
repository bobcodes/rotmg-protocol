package tiromisyg
{
[CLASS1040]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import tidi.Dak;
   import flash.events.Event;
   import flash.events.MouseEvent;


   public class Hez extends Sprite
   {
      public function Hez(param1:Vector.<String>) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bojaq=new Vector.<Wopigam>();
         this.lyqyhy=new Sprite();
         this.juwocez=new Dak();
         super();
         this.tajofecy=param1;
         this.tapudydo();
         this.vihuram();
         addChild(this.lyqyhy);
         this.lyqyhy.visible=false;
         this.juwocez.complete.addOnce(this.onComplete);
         return;
      }

      protected var tajofecy:Vector.<String>;

      protected var w_:int = 0;

      protected const h_:int = 36;

      protected var selected_:Wopigam;

      private var bojaq:Vector.<Wopigam>;

      private var lyqyhy:Sprite;

      private var juwocez:Dak;

      public function getValue() : String {
         return this.selected_.getValue();
      }

      public function setValue(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc2_:int = this.tajofecy.indexOf(param1);
         if(_loc2_>0)
         {
            _loc3_=this.tajofecy[0];
            this.tajofecy[_loc2_]=_loc3_;
            this.tajofecy[0]=param1;
            this.vihuram();
            dispatchEvent(new Event(Event.CHANGE));
         }
         return;
      }

      public function goqeneveb() : int {
         return this.h_;
      }

      private function tapudydo() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Wopigam = null;
         if(this.tajofecy.length>0)
         {
            _loc1_=this.guloz(this.tajofecy[0]);
            this.bojaq.push(_loc1_);
            this.selected_=_loc1_;
            this.selected_.addEventListener(MouseEvent.CLICK,this.nonolypyr);
            addChild(this.selected_);
         }
         var _loc2_:* = 1;
         while(_loc2_<this.tajofecy.length)
         {
            _loc1_=this.guloz(this.tajofecy[_loc2_]);
            _loc1_.addEventListener(MouseEvent.CLICK,this.onSelect);
            _loc1_.y=this.h_*_loc2_;
            this.bojaq.push(_loc1_);
            this.lyqyhy.addChild(_loc1_);
            _loc2_++;
         }
         return;
      }

      private function guloz(param1:String) : Wopigam {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Wopigam = new Wopigam(param1,0,this.h_);
         this.juwocez.push(_loc2_.nifohetac());
         return _loc2_;
      }

      private function vihuram() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<this.tajofecy.length)
         {
            this.bojaq[_loc1_].setValue(this.tajofecy[_loc1_]);
            this.bojaq[_loc1_].setWidth(this.w_);
            _loc1_++;
         }
         if(this.bojaq.length>0)
         {
            this.selected_=this.bojaq[0];
         }
         return;
      }

      private function dyfyzyfel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.addEventListener(MouseEvent.ROLL_OUT,this.dawatu);
         this.lyqyhy.visible=true;
         return;
      }

      private function sedyne() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.removeEventListener(MouseEvent.ROLL_OUT,this.dawatu);
         this.lyqyhy.visible=false;
         return;
      }

      private function onComplete() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Wopigam = null;
         var _loc1_:* = 83;
         for each (_loc2_ in this.bojaq)
         {
            _loc1_=Math.max(_loc2_.width,_loc1_);
         }
         this.w_=_loc1_;
         this.vihuram();
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.selected_.removeEventListener(MouseEvent.CLICK,this.nonolypyr);
         this.selected_.addEventListener(MouseEvent.CLICK,this.onSelect);
         this.dyfyzyfel();
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.stopImmediatePropagation();
         this.selected_.addEventListener(MouseEvent.CLICK,this.nonolypyr);
         this.selected_.removeEventListener(MouseEvent.CLICK,this.onSelect);
         this.sedyne();
         var _loc2_:Wopigam = param1.target as Wopigam;
         this.setValue(_loc2_.getValue());
         return;
      }

      private function dawatu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected_.addEventListener(MouseEvent.CLICK,this.nonolypyr);
         this.selected_.removeEventListener(MouseEvent.CLICK,this.onSelect);
         this.sedyne();
         return;
      }
   }
[/CLASS]
}