package losiba
{
[CLASS1841]   import wacic.Biquribyf;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import wacic.Console;


   public class Vorel extends Hubobag
   {
      public function Vorel(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.neqa={};
         super(param1);
         param1.cl.addCLCmd("keybinds",this.hydamenir,"List all keybinds used");
         return;
      }

      private var lyjy:int;

      private var neqa:Object;

      private var rivutalag:uint;

      public function parab(param1:Biquribyf, param2:Function, param3:Array=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if((config.keystrokePassword)&&!param1.topinen&&param1.key.charAt(0)==config.keystrokePassword.charAt(0))
         {
            report("Error: KeyBind ["+param1.key+"] is conflicting with Console password.",9);
            return;
         }
         if(param2==null)
         {
            delete this.neqa[[param1.key]];
         }
         else
         {
            this.neqa[param1.key]=[param2,param3];
         }
         return;
      }

      public function dozofycy(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.salyly(param1,false);
         return;
      }

      public function myzob(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.salyly(param1,true);
         return;
      }

      private function salyly(param1:KeyboardEvent, param2:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Biquribyf = null;
         var _loc3_:String = String.fromCharCode(param1.charCode);
         if((param2&&!(config.keystrokePassword==null))&&(_loc3_)&&_loc3_==config.keystrokePassword.substring(this.lyjy,this.lyjy+1))
         {
            this.lyjy++;
            if(this.lyjy>=config.keystrokePassword.length)
            {
               this.lyjy=0;
               if(this.riqe())
               {
                  if((console.visible)&&!console.panels.mainPanel.visible)
                  {
                     console.panels.mainPanel.visible=true;
                  }
                  else
                  {
                     console.visible=!console.visible;
                  }
                  if((console.visible)&&(console.panels.mainPanel.visible))
                  {
                     console.panels.mainPanel.visible=true;
                     console.panels.mainPanel.moveBackSafePosition();
                  }
               }
               else
               {
                  if(this.rivutalag<3)
                  {
                     this.rivutalag++;
                     report("Password did not trigger because you have focus on an input TextField.",8);
                  }
               }
            }
         }
         else
         {
            if(param2)
            {
               this.lyjy=0;
            }
            _loc4_=new Biquribyf(param1.keyCode,param1.shiftKey,param1.ctrlKey,param1.altKey,param2);
            this.wetasyti(_loc4_.key);
            if(_loc3_)
            {
               _loc4_=new Biquribyf(_loc3_,param1.shiftKey,param1.ctrlKey,param1.altKey,param2);
               this.wetasyti(_loc4_.key);
            }
         }
         return;
      }

      private function hydamenir(... rest) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         report("Key binds:",-2);
         var _loc2_:uint = 0;
         for (_loc3_ in this.neqa)
         {
            _loc2_++;
            report(_loc3_,-2);
         }
         report("--- Found "+_loc2_,-2);
         return;
      }

      private function wetasyti(param1:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = this.neqa[param1];
         if((config.keyBindsEnabled)&&(_loc2_))
         {
            if(this.riqe())
            {
               (_loc2_[0] as Function).apply(null,_loc2_[1]);
            }
            else
            {
               if(this.rivutalag<3)
               {
                  this.rivutalag++;
                  report("Key bind ["+param1+"] did not trigger because you have focus on an input TextField.",8);
               }
            }
         }
         return;
      }

      private function riqe() : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:TextField = null;
         if((console.stage)&&console.stage.focus is TextField)
         {
            _loc1_=console.stage.focus as TextField;
            if(_loc1_.type==TextFieldType.INPUT)
            {
               return false;
            }
         }
         return true;
      }
   }
[/CLASS]
}