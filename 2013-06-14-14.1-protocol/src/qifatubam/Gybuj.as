package qifatubam
{
   import zipirytab.Vim;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import zipirytab.Console;


   public class Gybuj extends Viq
   {
      public function Gybuj(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.byfe={};
         super(param1);
         param1.cl.addCLCmd("keybinds",this.nelehi,"List all keybinds used");
         return;
      }

      private var vobyse:int;

      private var byfe:Object;

      private var nasyjodav:uint;

      public function gycysi(param1:Vim, param2:Function, param3:Array=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if((config.keystrokePassword)&&!param1.lemipy&&param1.key.charAt(0)==config.keystrokePassword.charAt(0))
         {
            report("Error: KeyBind ["+param1.key+"] is conflicting with Console password.",9);
            return;
         }
         if(param2==null)
         {
            delete this.byfe[[param1.key]];
         }
         else
         {
            this.byfe[param1.key]=[param2,param3];
         }
         return;
      }

      public function mewybo(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qub(param1,false);
         return;
      }

      public function rymovyhi(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qub(param1,true);
         return;
      }

      private function qub(param1:KeyboardEvent, param2:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Vim = null;
         var _loc3_:String = String.fromCharCode(param1.charCode);
         if((param2&&!(config.keystrokePassword==null))&&(_loc3_)&&_loc3_==config.keystrokePassword.substring(this.vobyse,this.vobyse+1))
         {
            this.vobyse++;
            if(this.vobyse>=config.keystrokePassword.length)
            {
               this.vobyse=0;
               if(this.burun())
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
                  if(this.nasyjodav<3)
                  {
                     this.nasyjodav++;
                     report("Password did not trigger because you have focus on an input TextField.",8);
                  }
               }
            }
         }
         else
         {
            if(param2)
            {
               this.vobyse=0;
            }
            _loc4_=new Vim(param1.keyCode,param1.shiftKey,param1.ctrlKey,param1.altKey,param2);
            this.cider(_loc4_.key);
            if(_loc3_)
            {
               _loc4_=new Vim(_loc3_,param1.shiftKey,param1.ctrlKey,param1.altKey,param2);
               this.cider(_loc4_.key);
            }
         }
         return;
      }

      private function nelehi(... rest) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         report("Key binds:",-2);
         var _loc2_:uint = 0;
         for (_loc3_ in this.byfe)
         {
            _loc2_++;
            report(_loc3_,-2);
         }
         report("--- Found "+_loc2_,-2);
         return;
      }

      private function cider(param1:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = this.byfe[param1];
         if((config.keyBindsEnabled)&&(_loc2_))
         {
            if(this.burun())
            {
               (_loc2_[0] as Function).apply(null,_loc2_[1]);
            }
            else
            {
               if(this.nasyjodav<3)
               {
                  this.nasyjodav++;
                  report("Key bind ["+param1+"] did not trigger because you have focus on an input TextField.",8);
               }
            }
         }
         return;
      }

      private function burun() : Boolean {
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

}