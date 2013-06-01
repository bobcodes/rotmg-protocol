package rareja
{
[CLASS1351]   import flash.text.TextField;
   import dob.Beqoq;
   import sowojotac.Jemu;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;


   public final class Visybe extends TextField implements Beqoq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Visybe() {
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
         this.sutu=new Jemu(this);
         this.sutu.metazyrav.add(this.onAddedToStage);
         this.sutu.lelym.add(this.onRemovedFromStage);
         return;
      }

      public static const HEIGHT:int = 20;

      private var sutu:Jemu;

      private function onAddedToStage() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function onRemovedFromStage() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
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
         var _loc3_:* = false;
         var _loc4_:* = true;
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
[/CLASS]
}