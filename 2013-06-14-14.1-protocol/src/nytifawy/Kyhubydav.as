package nytifawy
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.text.TextField;
   import pumoc.Zesihag;
   import flash.events.KeyboardEvent;
   import flash.text.TextFieldType;
   import flash.filters.GlowFilter;
   import flash.events.Event;
   import flash.ui.Keyboard;


   public class Kyhubydav extends Sprite
   {
      public function Kyhubydav() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         visible=false;
         this.cojogy=false;
         return;
      }

      public const message:Qanyduk = new Qanyduk(String);

      public const close:Qanyduk = new Qanyduk();

      private var input:TextField;

      private var cojogy:Boolean;

      public function setup(param1:Zesihag, param2:TextField) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         addChild(this.input=param2);
         param2.width=param1.nabo.width-2;
         param2.height=param1.vupute;
         param2.y=param1.nabo.height-param1.vupute;
         return;
      }

      public function activate(param1:String, param2:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.cojogy=false;
         if(param1!=null)
         {
            this.input.text=param1;
         }
         var _loc3_:int = param1?param1.length:0;
         this.input.setSelection(_loc3_,_loc3_);
         if(param2)
         {
            this.vefyg();
         }
         else
         {
            this.jikewiniz();
         }
         visible=true;
         return;
      }

      public function deactivate() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cojogy=false;
         removeEventListener(KeyboardEvent.KEY_UP,this.luw);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.sudeho);
         visible=false;
         return;
      }

      public function syde() : Boolean {
         return this.cojogy;
      }

      private function vefyg() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.input.type=TextFieldType.INPUT;
         this.input.border=true;
         this.input.selectable=true;
         this.input.maxChars=128;
         this.input.borderColor=16777215;
         this.input.height=18;
         this.input.filters=[new GlowFilter(0,1,3,3,2,1)];
         addEventListener(KeyboardEvent.KEY_UP,this.luw);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.sudeho);
         return;
      }

      private function sudeho(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cojogy=true;
         return;
      }

      private function jikewiniz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.input.type=TextFieldType.DYNAMIC;
         this.input.border=false;
         this.input.selectable=false;
         this.input.filters=[new GlowFilter(0,1,3,3,2,1)];
         this.input.height=18;
         removeEventListener(KeyboardEvent.KEY_UP,this.luw);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.sudeho);
         return;
      }

      private function luw(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Keyboard.ENTER)
         {
            if(this.input.text!="")
            {
               this.message.dispatch(this.input.text);
            }
            else
            {
               this.close.dispatch();
            }
            param1.stopImmediatePropagation();
         }
         return;
      }
   }

}