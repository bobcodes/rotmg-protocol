package ceny
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.text.TextField;
   import pepyca.Tazizo;
   import pepyca.Fifu;
   import flash.events.KeyboardEvent;
   import flash.text.TextFieldType;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;


   public class Lazegi extends Sprite
   {
      public function Lazegi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         visible=false;
         return;
      }

      public const message:Hugyqufyq = new Hugyqufyq(String);

      public const close:Hugyqufyq = new Hugyqufyq();

      private var input:TextField;

      private var fuq:Tazizo;

      public function setup(param1:Fifu, param2:TextField, param3:Tazizo) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         addChild(this.input=param2);
         param2.width=param1.cucivizyw.width-2;
         param2.height=param1.qocalopag;
         param2.y=param1.cucivizyw.height-param1.qocalopag;
         this.fuq=param3;
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
            this.ciwiqucu();
         }
         else
         {
            this.pulujig();
         }
         visible=true;
         return;
      }

      public function deactivate() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         visible=false;
         return;
      }

      private function ciwiqucu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.input.type=TextFieldType.INPUT;
         this.input.border=true;
         this.input.selectable=true;
         this.input.maxChars=128;
         this.input.borderColor=16777215;
         this.input.height=18;
         this.input.filters=[new GlowFilter(0,1,3,3,2,1)];
         addEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         return;
      }

      private function pulujig() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.input.type=TextFieldType.DYNAMIC;
         this.input.border=false;
         this.input.selectable=false;
         this.input.filters=[new GlowFilter(0,1,3,3,2,1)];
         this.input.height=18;
         removeEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         return;
      }

      private function seqedu(param1:KeyboardEvent) : void {
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
                  this.input.text="/tell "+this.fuq.tapu()+" ";
                  param1.stopImmediatePropagation();
               }
            }
         }
         return;
      }
   }

}