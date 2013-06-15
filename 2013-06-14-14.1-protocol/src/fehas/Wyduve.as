package fehas
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.ui.Vovoj;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.geom.Point;


   public class Wyduve extends Sprite
   {
      public function Wyduve(param1:Vector.<String>, param2:int, param3:int, param4:String=null) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.vomo=new Sprite();
         super();
         this.roku=param1;
         this.w_=param2;
         this.h_=param3;
         if(param4!=null)
         {
            this.labelText_=new Vovoj(16,16777215,false,0,0);
            this.labelText_.setBold(true);
            this.labelText_.text=param4+":";
            this.labelText_.dog();
            addChild(this.labelText_);
            this.dojynob=this.labelText_.width+5;
         }
         this.nujeg(0);
         return;
      }

      protected var roku:Vector.<String>;

      protected var w_:int;

      protected var h_:int;

      protected var labelText_:Vovoj;

      protected var dojynob:int = 0;

      protected var selected_:Ribys;

      protected var vomo:Sprite;

      public function getValue() : String {
         return this.selected_.getValue();
      }

      public function setValue(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.roku.length)
         {
            if(param1==this.roku[_loc2_])
            {
               this.nujeg(_loc2_);
               return;
            }
            _loc2_++;
         }
         return;
      }

      public function nujeg(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSelected(this.roku[param1]);
         return;
      }

      public function pavopa() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_<this.roku.length)
         {
            if(this.selected_.getValue()==this.roku[_loc1_])
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return -1;
      }

      private function setSelected(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         _loc2_=this.selected_!=null?this.selected_.getValue():null;
         this.selected_=new Ribys(param1,this.w_,this.h_);
         this.selected_.x=this.dojynob;
         this.selected_.y=0;
         addChild(this.selected_);
         this.selected_.addEventListener(MouseEvent.CLICK,this.zug);
         if(param1!=_loc2_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.selected_.removeEventListener(MouseEvent.CLICK,this.zug);
         if(contains(this.selected_))
         {
            removeChild(this.selected_);
         }
         this.qosusad();
         return;
      }

      private function qosusad() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Point = null;
         var _loc4_:Ribys = null;
         var _loc1_:* = 0;
         _loc2_=parent.localToGlobal(new Point(x,y));
         this.vomo.x=_loc2_.x;
         this.vomo.y=_loc2_.y;
         var _loc3_:* = 0;
         while(_loc3_<this.roku.length)
         {
            _loc4_=new Ribys(this.roku[_loc3_],this.w_,this.h_);
            _loc4_.addEventListener(MouseEvent.CLICK,this.onSelect);
            _loc4_.x=this.dojynob;
            _loc4_.y=_loc1_;
            this.vomo.addChild(_loc4_);
            _loc1_=_loc1_+_loc4_.h_;
            _loc3_++;
         }
         this.vomo.addEventListener(MouseEvent.ROLL_OUT,this.raneqamy);
         stage.addChild(this.vomo);
         return;
      }

      private function jogugili() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vomo.removeEventListener(MouseEvent.ROLL_OUT,this.raneqamy);
         stage.removeChild(this.vomo);
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.stopImmediatePropagation();
         this.jogugili();
         var _loc2_:Ribys = param1.target as Ribys;
         this.setSelected(_loc2_.getValue());
         return;
      }

      private function raneqamy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jogugili();
         this.setSelected(this.selected_.getValue());
         return;
      }
   }

}