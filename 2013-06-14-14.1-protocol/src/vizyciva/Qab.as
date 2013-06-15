package vizyciva
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import wenono.Nuri;
   import flash.events.Event;
   import flash.events.MouseEvent;


   public class Qab extends Sprite
   {
      public function Qab(param1:Vector.<String>) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sybynylut=new Vector.<Hopenu>();
         this.vomo=new Sprite();
         this.ryfoc=new Nuri();
         super();
         this.roku=param1;
         this.cid();
         this.poz();
         addChild(this.vomo);
         this.vomo.visible=false;
         this.ryfoc.complete.addOnce(this.onComplete);
         return;
      }

      protected var roku:Vector.<String>;

      protected var w_:int = 0;

      protected const h_:int = 36;

      protected var selected_:Hopenu;

      private var sybynylut:Vector.<Hopenu>;

      private var vomo:Sprite;

      private var ryfoc:Nuri;

      public function getValue() : String {
         return this.selected_.getValue();
      }

      public function setValue(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = null;
         var _loc2_:int = this.roku.indexOf(param1);
         if(_loc2_>0)
         {
            _loc3_=this.roku[0];
            this.roku[_loc2_]=_loc3_;
            this.roku[0]=param1;
            this.poz();
            dispatchEvent(new Event(Event.CHANGE));
         }
         return;
      }

      public function rubovi() : int {
         return this.h_;
      }

      private function cid() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Hopenu = null;
         if(this.roku.length>0)
         {
            _loc1_=this.ryqikod(this.roku[0]);
            this.sybynylut.push(_loc1_);
            this.selected_=_loc1_;
            this.selected_.addEventListener(MouseEvent.CLICK,this.zug);
            addChild(this.selected_);
         }
         var _loc2_:* = 1;
         while(_loc2_<this.roku.length)
         {
            _loc1_=this.ryqikod(this.roku[_loc2_]);
            _loc1_.addEventListener(MouseEvent.CLICK,this.onSelect);
            _loc1_.y=this.h_*_loc2_;
            this.sybynylut.push(_loc1_);
            this.vomo.addChild(_loc1_);
            _loc2_++;
         }
         return;
      }

      private function ryqikod(param1:String) : Hopenu {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Hopenu = new Hopenu(param1,0,this.h_);
         this.ryfoc.push(_loc2_.qukahew());
         return _loc2_;
      }

      private function poz() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<this.roku.length)
         {
            this.sybynylut[_loc1_].setValue(this.roku[_loc1_]);
            this.sybynylut[_loc1_].setWidth(this.w_);
            _loc1_++;
         }
         if(this.sybynylut.length>0)
         {
            this.selected_=this.sybynylut[0];
         }
         return;
      }

      private function qosusad() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.addEventListener(MouseEvent.ROLL_OUT,this.raneqamy);
         this.vomo.visible=true;
         return;
      }

      private function jogugili() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.removeEventListener(MouseEvent.ROLL_OUT,this.raneqamy);
         this.vomo.visible=false;
         return;
      }

      private function onComplete() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Hopenu = null;
         var _loc1_:* = 83;
         for each (_loc2_ in this.sybynylut)
         {
            _loc1_=Math.max(_loc2_.width,_loc1_);
         }
         this.w_=_loc1_;
         this.poz();
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         this.selected_.removeEventListener(MouseEvent.CLICK,this.zug);
         this.selected_.addEventListener(MouseEvent.CLICK,this.onSelect);
         this.qosusad();
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.stopImmediatePropagation();
         this.selected_.addEventListener(MouseEvent.CLICK,this.zug);
         this.selected_.removeEventListener(MouseEvent.CLICK,this.onSelect);
         this.jogugili();
         var _loc2_:Hopenu = param1.target as Hopenu;
         this.setValue(_loc2_.getValue());
         return;
      }

      private function raneqamy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected_.addEventListener(MouseEvent.CLICK,this.zug);
         this.selected_.removeEventListener(MouseEvent.CLICK,this.onSelect);
         this.jogugili();
         return;
      }
   }

}