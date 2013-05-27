package jesohaw
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import ruwysepyd.Junefolef;
   import flash.events.Event;
   import flash.events.MouseEvent;


   public class Hefahad extends Sprite
   {
      public function Hefahad(param1:Vector.<String>) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lymedifam=new Vector.<Tapysefa>();
         this.gymehuw=new Sprite();
         this.jiguvovu=new Junefolef();
         super();
         this.nuli=param1;
         this.lepo();
         this.poza();
         addChild(this.gymehuw);
         this.gymehuw.visible=false;
         this.jiguvovu.complete.addOnce(this.onComplete);
         return;
      }

      protected var nuli:Vector.<String>;

      protected var w_:int = 0;

      protected const h_:int = 36;

      protected var selected_:Tapysefa;

      private var lymedifam:Vector.<Tapysefa>;

      private var gymehuw:Sprite;

      private var jiguvovu:Junefolef;

      public function getValue() : String {
         return this.selected_.getValue();
      }

      public function setValue(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc2_:int = this.nuli.indexOf(param1);
         if(_loc2_>0)
         {
            _loc3_=this.nuli[0];
            this.nuli[_loc2_]=_loc3_;
            this.nuli[0]=param1;
            this.poza();
            dispatchEvent(new Event(Event.CHANGE));
         }
         return;
      }

      public function sopo() : int {
         return this.h_;
      }

      private function lepo() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Tapysefa = null;
         if(this.nuli.length>0)
         {
            _loc1_=this.hajogiq(this.nuli[0]);
            this.lymedifam.push(_loc1_);
            this.selected_=_loc1_;
            this.selected_.addEventListener(MouseEvent.CLICK,this.zeg);
            addChild(this.selected_);
         }
         var _loc2_:* = 1;
         while(_loc2_<this.nuli.length)
         {
            _loc1_=this.hajogiq(this.nuli[_loc2_]);
            _loc1_.addEventListener(MouseEvent.CLICK,this.onSelect);
            _loc1_.y=this.h_*_loc2_;
            this.lymedifam.push(_loc1_);
            this.gymehuw.addChild(_loc1_);
            _loc2_++;
         }
         return;
      }

      private function hajogiq(param1:String) : Tapysefa {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Tapysefa = new Tapysefa(param1,0,this.h_);
         this.jiguvovu.push(_loc2_.ratijuje());
         return _loc2_;
      }

      private function poza() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.nuli.length)
         {
            this.lymedifam[_loc1_].setValue(this.nuli[_loc1_]);
            this.lymedifam[_loc1_].setWidth(this.w_);
            _loc1_++;
         }
         if(this.lymedifam.length>0)
         {
            this.selected_=this.lymedifam[0];
         }
         return;
      }

      private function bycesa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.addEventListener(MouseEvent.ROLL_OUT,this.jah);
         this.gymehuw.visible=true;
         return;
      }

      private function lecy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.removeEventListener(MouseEvent.ROLL_OUT,this.jah);
         this.gymehuw.visible=false;
         return;
      }

      private function onComplete() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Tapysefa = null;
         var _loc1_:* = 83;
         for each (_loc2_ in this.lymedifam)
         {
            _loc1_=Math.max(_loc2_.width,_loc1_);
         }
         this.w_=_loc1_;
         this.poza();
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         this.selected_.removeEventListener(MouseEvent.CLICK,this.zeg);
         this.selected_.addEventListener(MouseEvent.CLICK,this.onSelect);
         this.bycesa();
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.stopImmediatePropagation();
         this.selected_.addEventListener(MouseEvent.CLICK,this.zeg);
         this.selected_.removeEventListener(MouseEvent.CLICK,this.onSelect);
         this.lecy();
         var _loc2_:Tapysefa = param1.target as Tapysefa;
         this.setValue(_loc2_.getValue());
         return;
      }

      private function jah(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected_.addEventListener(MouseEvent.CLICK,this.zeg);
         this.selected_.removeEventListener(MouseEvent.CLICK,this.onSelect);
         this.lecy();
         return;
      }
   }

}