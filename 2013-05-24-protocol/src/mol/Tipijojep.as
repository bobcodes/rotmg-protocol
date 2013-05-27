package mol
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.ui.Sytubyvyg;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.geom.Point;


   public class Tipijojep extends Sprite
   {
      public function Tipijojep(param1:Vector.<String>, param2:int, param3:int, param4:String=null) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.gymehuw=new Sprite();
         super();
         this.nuli=param1;
         this.w_=param2;
         this.h_=param3;
         if(param4!=null)
         {
            this.labelText_=new Sytubyvyg(16,16777215,false,0,0);
            this.labelText_.setBold(true);
            this.labelText_.text=param4+":";
            this.labelText_.nuji();
            addChild(this.labelText_);
            this.mimacegus=this.labelText_.width+5;
         }
         this.bakowov(0);
         return;
      }

      protected var nuli:Vector.<String>;

      protected var w_:int;

      protected var h_:int;

      protected var labelText_:Sytubyvyg;

      protected var mimacegus:int = 0;

      protected var selected_:Gozujo;

      protected var gymehuw:Sprite;

      public function getValue() : String {
         return this.selected_.getValue();
      }

      public function setValue(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.nuli.length)
         {
            if(param1==this.nuli[_loc2_])
            {
               this.bakowov(_loc2_);
               return;
            }
            _loc2_++;
         }
         return;
      }

      public function bakowov(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSelected(this.nuli[param1]);
         return;
      }

      public function haq() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.nuli.length)
         {
            if(this.selected_.getValue()==this.nuli[_loc1_])
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return -1;
      }

      private function setSelected(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = this.selected_!=null?this.selected_.getValue():null;
         this.selected_=new Gozujo(param1,this.w_,this.h_);
         this.selected_.x=this.mimacegus;
         this.selected_.y=0;
         addChild(this.selected_);
         this.selected_.addEventListener(MouseEvent.CLICK,this.zeg);
         if(param1!=_loc2_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.selected_.removeEventListener(MouseEvent.CLICK,this.zeg);
         if(contains(this.selected_))
         {
            removeChild(this.selected_);
         }
         this.bycesa();
         return;
      }

      private function bycesa() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Point = null;
         var _loc4_:Gozujo = null;
         var _loc1_:* = 0;
         _loc2_=parent.localToGlobal(new Point(x,y));
         this.gymehuw.x=_loc2_.x;
         this.gymehuw.y=_loc2_.y;
         var _loc3_:* = 0;
         while(_loc3_<this.nuli.length)
         {
            _loc4_=new Gozujo(this.nuli[_loc3_],this.w_,this.h_);
            _loc4_.addEventListener(MouseEvent.CLICK,this.onSelect);
            _loc4_.x=this.mimacegus;
            _loc4_.y=_loc1_;
            this.gymehuw.addChild(_loc4_);
            _loc1_=_loc1_+_loc4_.h_;
            _loc3_++;
         }
         this.gymehuw.addEventListener(MouseEvent.ROLL_OUT,this.jah);
         stage.addChild(this.gymehuw);
         return;
      }

      private function lecy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gymehuw.removeEventListener(MouseEvent.ROLL_OUT,this.jah);
         stage.removeChild(this.gymehuw);
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.stopImmediatePropagation();
         this.lecy();
         var _loc2_:Gozujo = param1.target as Gozujo;
         this.setSelected(_loc2_.getValue());
         return;
      }

      private function jah(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lecy();
         this.setSelected(this.selected_.getValue());
         return;
      }
   }

}