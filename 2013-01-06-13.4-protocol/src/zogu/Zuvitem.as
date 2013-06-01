package zogu
{
[CLASS1638]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.ui.Remyl;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.geom.Point;


   public class Zuvitem extends Sprite
   {
      public function Zuvitem(param1:Vector.<String>, param2:int, param3:int, param4:String=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.lyqyhy=new Sprite();
         super();
         this.tajofecy=param1;
         this.w_=param2;
         this.h_=param3;
         if(param4!=null)
         {
            this.labelText_=new Remyl(16,16777215,false,0,0);
            this.labelText_.setBold(true);
            this.labelText_.text=param4+":";
            this.labelText_.mojymak();
            addChild(this.labelText_);
            this.levedofon=this.labelText_.width+5;
         }
         this.jejejyj(0);
         return;
      }

      protected var tajofecy:Vector.<String>;

      protected var w_:int;

      protected var h_:int;

      protected var labelText_:Remyl;

      protected var levedofon:int = 0;

      protected var selected_:Soqyker;

      protected var lyqyhy:Sprite;

      public function getValue() : String {
         return this.selected_.getValue();
      }

      public function setValue(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.tajofecy.length)
         {
            if(param1==this.tajofecy[_loc2_])
            {
               this.jejejyj(_loc2_);
               return;
            }
            _loc2_++;
         }
         return;
      }

      public function jejejyj(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSelected(this.tajofecy[param1]);
         return;
      }

      public function cafeky() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.tajofecy.length)
         {
            if(this.selected_.getValue()==this.tajofecy[_loc1_])
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
         var _loc2_:String = this.selected_!=null?this.selected_.getValue():null;
         this.selected_=new Soqyker(param1,this.w_,this.h_);
         this.selected_.x=this.levedofon;
         this.selected_.y=0;
         addChild(this.selected_);
         this.selected_.addEventListener(MouseEvent.CLICK,this.nonolypyr);
         if(param1!=_loc2_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.selected_.removeEventListener(MouseEvent.CLICK,this.nonolypyr);
         if(contains(this.selected_))
         {
            removeChild(this.selected_);
         }
         this.dyfyzyfel();
         return;
      }

      private function dyfyzyfel() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Point = null;
         var _loc4_:Soqyker = null;
         var _loc1_:* = 0;
         _loc2_=parent.localToGlobal(new Point(x,y));
         this.lyqyhy.x=_loc2_.x;
         this.lyqyhy.y=_loc2_.y;
         var _loc3_:* = 0;
         while(_loc3_<this.tajofecy.length)
         {
            _loc4_=new Soqyker(this.tajofecy[_loc3_],this.w_,this.h_);
            _loc4_.addEventListener(MouseEvent.CLICK,this.onSelect);
            _loc4_.x=this.levedofon;
            _loc4_.y=_loc1_;
            this.lyqyhy.addChild(_loc4_);
            _loc1_=_loc1_+_loc4_.h_;
            _loc3_++;
         }
         this.lyqyhy.addEventListener(MouseEvent.ROLL_OUT,this.dawatu);
         stage.addChild(this.lyqyhy);
         return;
      }

      private function sedyne() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyqyhy.removeEventListener(MouseEvent.ROLL_OUT,this.dawatu);
         stage.removeChild(this.lyqyhy);
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.stopImmediatePropagation();
         this.sedyne();
         var _loc2_:Soqyker = param1.target as Soqyker;
         this.setSelected(_loc2_.getValue());
         return;
      }

      private function dawatu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedyne();
         this.setSelected(this.selected_.getValue());
         return;
      }
   }
[/CLASS]
}