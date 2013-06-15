package loradaby
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.events.Event;
   import jediwip.Vofezuzy;
   import com.company.util.Coluf;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import jediwip.Tunyhazo;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import jediwip.Kybidu;
   import komi.Vibemod;
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
         this.hoqivuw=param1;
         this.selected_=false;
         this.vevuvykam=false;
         this.sypuqesi=new Guzowoja().setSize(16).setColor(16777215);
         this.sypuqesi.setBold(true);
         this.sypuqesi.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.sypuqesi.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         addChild(this.sypuqesi);
         this.guviqejy();
         this.hizicafu();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public static const WIDTH:int = 80;

      public static const HEIGHT:int = 32;

      public var hoqivuw:uint;

      public var selected_:Boolean;

      public var vevuvykam:Boolean;

      private var sypuqesi:Guzowoja = null;

      public function value() : uint {
         return this.hoqivuw;
      }

      public function mafevopari(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.hoqivuw)
         {
            return;
         }
         this.hoqivuw=param1;
         this.qov();
         dispatchEvent(new Event(Event.CHANGE,true));
         return;
      }

      public function qov() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kenadyb(new Vofezuzy(Coluf.faj[this.hoqivuw]));
         return;
      }

      private function guviqejy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.lineStyle(2,(this.selected_)||(this.vevuvykam)?11776947:4473924);
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
         this.guviqejy();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected_=false;
         this.guviqejy();
         return;
      }

      private function kenadyb(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sypuqesi.setStringBuilder(param1);
         this.sypuqesi.x=WIDTH/2;
         this.sypuqesi.y=HEIGHT/2;
         this.guviqejy();
         return;
      }

      private function hizicafu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vevuvykam=false;
         removeEventListener(Event.ENTER_FRAME,this.zapocun);
         if(stage!=null)
         {
            removeEventListener(KeyboardEvent.KEY_DOWN,this.wupapydof);
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.vafyqume,true);
         }
         this.qov();
         addEventListener(MouseEvent.CLICK,this.zity);
         return;
      }

      private function toqu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(stage==null)
         {
            return;
         }
         stage.stageFocusRect=false;
         stage.focus=this;
         this.vevuvykam=true;
         removeEventListener(MouseEvent.CLICK,this.zity);
         addEventListener(Event.ENTER_FRAME,this.zapocun);
         addEventListener(KeyboardEvent.KEY_DOWN,this.wupapydof);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.vafyqume,true);
         return;
      }

      private function zity(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.toqu();
         return;
      }

      private function zapocun(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = getTimer()/400;
         var _loc3_:* = _loc2_%2==0;
         if(_loc3_)
         {
            this.kenadyb(new Vofezuzy(""));
         }
         else
         {
            this.kenadyb(new Kybidu().setParams(Vibemod.myni));
         }
         return;
      }

      private function wupapydof(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.hoqivuw=param1.keyCode;
         this.hizicafu();
         dispatchEvent(new Event(Event.CHANGE,true));
         return;
      }

      private function vafyqume(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hizicafu();
         return;
      }
   }

}