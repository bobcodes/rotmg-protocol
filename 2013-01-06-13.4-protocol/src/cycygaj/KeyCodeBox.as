package cycygaj
{
[CLASS1801]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.events.Event;
   import totuhare.Javo;
   import com.company.util.Sojef;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import totuhare.Qebar;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;


   public class KeyCodeBox extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function KeyCodeBox(param1:uint) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.cere=param1;
         this.selected_=false;
         this.zabe=false;
         this.ruzupinan=new Capitu().setSize(16).setColor(16777215);
         this.ruzupinan.setBold(true);
         this.ruzupinan.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.ruzupinan.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         addChild(this.ruzupinan);
         this.qafu();
         this.ceviho();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public static const WIDTH:int = 80;

      public static const HEIGHT:int = 32;

      public var cere:uint;

      public var selected_:Boolean;

      public var zabe:Boolean;

      private var ruzupinan:Capitu = null;

      public function value() : uint {
         return this.cere;
      }

      public function hylohu(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.cere)
         {
            return;
         }
         this.cere=param1;
         this.kufahepel();
         dispatchEvent(new Event(Event.CHANGE,true));
         return;
      }

      public function kufahepel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rike(new Javo(Sojef.hekypido[this.cere]));
         return;
      }

      private function qafu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.lineStyle(2,(this.selected_)||(this.zabe)?11776947:4473924);
         _loc1_.beginFill(3355443);
         _loc1_.drawRect(0,0,WIDTH,HEIGHT);
         _loc1_.endFill();
         _loc1_.lineStyle();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected_=true;
         this.qafu();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected_=false;
         this.qafu();
         return;
      }

      private function rike(param1:Qebar) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ruzupinan.setStringBuilder(param1);
         this.ruzupinan.x=WIDTH/2;
         this.ruzupinan.y=HEIGHT/2;
         this.qafu();
         return;
      }

      private function ceviho() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zabe=false;
         removeEventListener(Event.ENTER_FRAME,this.hysijek);
         if(stage!=null)
         {
            removeEventListener(KeyboardEvent.KEY_DOWN,this.vepob);
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.jytozacyz,true);
         }
         this.kufahepel();
         addEventListener(MouseEvent.CLICK,this.lemino);
         return;
      }

      private function lycokod() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(stage==null)
         {
            return;
         }
         stage.stageFocusRect=false;
         stage.focus=this;
         this.zabe=true;
         removeEventListener(MouseEvent.CLICK,this.lemino);
         addEventListener(Event.ENTER_FRAME,this.hysijek);
         addEventListener(KeyboardEvent.KEY_DOWN,this.vepob);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.jytozacyz,true);
         return;
      }

      private function lemino(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lycokod();
         return;
      }

      private function hysijek(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = getTimer()/400;
         var _loc3_:* = _loc2_%2==0;
         if(_loc3_)
         {
            this.rike(new Javo(""));
         }
         else
         {
            this.rike(new Zufi().setParams(Kefyfa.masopag));
         }
         return;
      }

      private function vepob(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.cere=param1.keyCode;
         this.ceviho();
         dispatchEvent(new Event(Event.CHANGE,true));
         return;
      }

      private function jytozacyz(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ceviho();
         return;
      }
   }
[/CLASS]
}