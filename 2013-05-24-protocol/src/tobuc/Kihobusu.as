package tobuc
{
   import lutyfopo.Pefam;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import lutyfopo.Console;


   public class Kihobusu extends Zuby
   {
      public function Kihobusu(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kahenocuk={};
         super(param1);
         param1.cl.addCLCmd("keybinds",this.gevan,"List all keybinds used");
         return;
      }

      private var mysa:int;

      private var kahenocuk:Object;

      private var fal:uint;

      public function jogawu(param1:Pefam, param2:Function, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if((config.keystrokePassword)&&!param1.virawomy&&param1.key.charAt(0)==config.keystrokePassword.charAt(0))
         {
            report("Error: KeyBind ["+param1.key+"] is conflicting with Console password.",9);
            return;
         }
         if(param2==null)
         {
            delete this.kahenocuk[[param1.key]];
         }
         else
         {
            this.kahenocuk[param1.key]=[param2,param3];
         }
         return;
      }

      public function beryjan(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cuponetec(param1,false);
         return;
      }

      public function pizikid(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cuponetec(param1,true);
         return;
      }

      private function cuponetec(param1:KeyboardEvent, param2:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Pefam = null;
         var _loc3_:String = String.fromCharCode(param1.charCode);
         if((param2&&!(config.keystrokePassword==null))&&(_loc3_)&&_loc3_==config.keystrokePassword.substring(this.mysa,this.mysa+1))
         {
            this.mysa++;
            if(this.mysa>=config.keystrokePassword.length)
            {
               this.mysa=0;
               if(this.cewoma())
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
                  if(this.fal<3)
                  {
                     this.fal++;
                     report("Password did not trigger because you have focus on an input TextField.",8);
                  }
               }
            }
         }
         else
         {
            if(param2)
            {
               this.mysa=0;
            }
            _loc4_=new Pefam(param1.keyCode,param1.shiftKey,param1.ctrlKey,param1.altKey,param2);
            this.nyzeketof(_loc4_.key);
            if(_loc3_)
            {
               _loc4_=new Pefam(_loc3_,param1.shiftKey,param1.ctrlKey,param1.altKey,param2);
               this.nyzeketof(_loc4_.key);
            }
         }
         return;
      }

      private function gevan(... rest) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         report("Key binds:",-2);
         var _loc2_:uint = 0;
         for (_loc3_ in this.kahenocuk)
         {
            _loc2_++;
            report(_loc3_,-2);
         }
         report("--- Found "+_loc2_,-2);
         return;
      }

      private function nyzeketof(param1:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = this.kahenocuk[param1];
         if((config.keyBindsEnabled)&&(_loc2_))
         {
            if(this.cewoma())
            {
               (_loc2_[0] as Function).apply(null,_loc2_[1]);
            }
            else
            {
               if(this.fal<3)
               {
                  this.fal++;
                  report("Key bind ["+param1+"] did not trigger because you have focus on an input TextField.",8);
               }
            }
         }
         return;
      }

      private function cewoma() : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
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