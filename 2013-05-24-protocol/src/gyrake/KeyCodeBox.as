package gyrake
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.events.Event;
   import nec.Nara;
   import com.company.util.Kiv;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import nec.Zirewe;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;


   public class KeyCodeBox extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function KeyCodeBox(param1:uint) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.pud=param1;
         this.selected_=false;
         this.quc=false;
         this.ciwef=new Lufub().setSize(16).setColor(16777215);
         this.ciwef.setBold(true);
         this.ciwef.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.ciwef.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         addChild(this.ciwef);
         this.tizyf();
         this.zusut();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public static const WIDTH:int = 80;

      public static const HEIGHT:int = 32;

      public var pud:uint;

      public var selected_:Boolean;

      public var quc:Boolean;

      private var ciwef:Lufub = null;

      public function value() : uint {
         return this.pud;
      }

      public function vagudaf(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.pud)
         {
            return;
         }
         this.pud=param1;
         this.kydynivy();
         dispatchEvent(new Event(Event.CHANGE,true));
         return;
      }

      public function kydynivy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sonydiw(new Nara(Kiv.dejicusik[this.pud]));
         return;
      }

      private function tizyf() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.lineStyle(2,(this.selected_)||(this.quc)?11776947:4473924);
         _loc1_.beginFill(3355443);
         _loc1_.drawRect(0,0,WIDTH,HEIGHT);
         _loc1_.endFill();
         _loc1_.lineStyle();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected_=true;
         this.tizyf();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected_=false;
         this.tizyf();
         return;
      }

      private function sonydiw(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ciwef.setStringBuilder(param1);
         this.ciwef.x=WIDTH/2;
         this.ciwef.y=HEIGHT/2;
         this.tizyf();
         return;
      }

      private function zusut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.quc=false;
         removeEventListener(Event.ENTER_FRAME,this.leryqi);
         if(stage!=null)
         {
            removeEventListener(KeyboardEvent.KEY_DOWN,this.hyk);
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.mulabepeg,true);
         }
         this.kydynivy();
         addEventListener(MouseEvent.CLICK,this.nanividin);
         return;
      }

      private function kuza() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(stage==null)
         {
            return;
         }
         stage.stageFocusRect=false;
         stage.focus=this;
         this.quc=true;
         removeEventListener(MouseEvent.CLICK,this.nanividin);
         addEventListener(Event.ENTER_FRAME,this.leryqi);
         addEventListener(KeyboardEvent.KEY_DOWN,this.hyk);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.mulabepeg,true);
         return;
      }

      private function nanividin(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kuza();
         return;
      }

      private function leryqi(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:int = getTimer()/400;
         var _loc3_:* = _loc2_%2==0;
         if(_loc3_)
         {
            this.sonydiw(new Nara(""));
         }
         else
         {
            this.sonydiw(new Sire().setParams(I18nKeys.cosanu));
         }
         return;
      }

      private function hyk(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.pud=param1.keyCode;
         this.zusut();
         dispatchEvent(new Event(Event.CHANGE,true));
         return;
      }

      private function mulabepeg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zusut();
         return;
      }
   }

}