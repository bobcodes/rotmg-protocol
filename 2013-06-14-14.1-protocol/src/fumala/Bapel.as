package fumala
{
   import flash.text.TextField;
   import foqudowem.Hedubavyl;
   import bamozifaw.Vawelen;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;


   public final class Bapel extends TextField implements Hedubavyl
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Bapel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         background=true;
         backgroundColor=13056;
         border=true;
         borderColor=3355443;
         defaultTextFormat=new TextFormat("_sans",14,16777215,true);
         text="";
         type=TextFieldType.INPUT;
         restrict="^`";
         this.wumeci=new Vawelen(this);
         this.wumeci.fakos.add(this.onAddedToStage);
         this.wumeci.wajudi.add(this.onRemovedFromStage);
         return;
      }

      public static const HEIGHT:int = 20;

      private var wumeci:Vawelen;

      private function onAddedToStage() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function onRemovedFromStage() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = text;
         switch(null)
         {
            case Keyboard.ENTER:
               text="";
               dispatchEvent(new ConsoleEvent(ConsoleEvent.INPUT,_loc2_));
               break;
            case Keyboard.UP:
               dispatchEvent(new ConsoleEvent(ConsoleEvent.GET_PREVIOUS));
               break;
            case Keyboard.DOWN:
               dispatchEvent(new ConsoleEvent(ConsoleEvent.GET_NEXT));
               break;
         }
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = param1.height*0.5;
         if(_loc2_>HEIGHT)
         {
            _loc2_=HEIGHT;
         }
         width=param1.width;
         height=_loc2_;
         x=param1.x;
         y=param1.bottom-height;
         return;
      }
   }

}