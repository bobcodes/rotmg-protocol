package hine
{
[CLASS1127]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.text.TextField;
   import setuv.Mocor;
   import setuv.Tufyz;
   import flash.events.KeyboardEvent;
   import flash.text.TextFieldType;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;


   public class Ficezelum extends Sprite
   {
      public function Ficezelum() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         visible=false;
         return;
      }

      public const message:Dab = new Dab(String);

      public const close:Dab = new Dab();

      private var input:TextField;

      private var leriju:Mocor;

      public function setup(param1:Tufyz, param2:TextField, param3:Mocor) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         addChild(this.input=param2);
         param2.width=param1.mykubowob.width-2;
         param2.height=param1.dud;
         param2.y=param1.mykubowob.height-param1.dud;
         this.leriju=param3;
         return;
      }

      public function activate(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1!=null)
         {
            this.input.text=param1;
         }
         this.input.setSelection(this.input.text.length,this.input.text.length);
         if(param2)
         {
            this.bokoto();
         }
         else
         {
            this.batu();
         }
         visible=true;
         return;
      }

      public function deactivate() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         visible=false;
         return;
      }

      private function bokoto() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.input.type=TextFieldType.INPUT;
         this.input.border=true;
         this.input.selectable=true;
         this.input.maxChars=128;
         this.input.borderColor=16777215;
         this.input.height=18;
         this.input.filters=[new GlowFilter(0,1,3,3,2,1)];
         addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         return;
      }

      private function batu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.input.type=TextFieldType.DYNAMIC;
         this.input.border=false;
         this.input.selectable=false;
         this.input.filters=[new GlowFilter(0,1,3,3,2,1)];
         this.input.height=18;
         removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         return;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
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
         else
         {
            if(param1.keyCode==Keyboard.TAB)
            {
               _loc2_=this.input.text.split(" ");
               if(_loc2_.length>0&&_loc2_[0]=="/tell")
               {
                  this.input.text="/tell "+this.leriju.vugireced()+" ";
                  param1.stopImmediatePropagation();
               }
            }
         }
         return;
      }
   }
[/CLASS]
}