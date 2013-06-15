package miqefol
{
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextFieldAutoSize;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import qifatubam.Babydel;
   import flash.events.TextEvent;
   import zipirytab.Vim;
   import flash.text.TextField;
   import zipirytab.Console;


   public class Dity extends Qir
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dity(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         name=NAME;
         init(60,100,false);
         zyfile=vykipiky("rollerPrints");
         zyfile.multiline=true;
         zyfile.autoSize=TextFieldAutoSize.LEFT;
         tycucobyr(zyfile,this.onMenuRollOver,this.sidadene);
         lyjunicut(zyfile);
         addChild(zyfile);
         addEventListener(Event.ENTER_FRAME,this.mogaze);
         addEventListener(Event.REMOVED_FROM_STAGE,this.mykadezyn);
         return;
      }

      public static const NAME:String = "rollerPanel";

      private var sypymemom:Boolean;

      private function mykadezyn(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.mogaze);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.mykadezyn);
         if(stage)
         {
            stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.mewybo);
         }
         return;
      }

      private function mogaze(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!console.stage)
         {
            this.close();
            return;
         }
         if(this.sypymemom)
         {
            zyfile.htmlText="<high><menu>Press a key to set [ <a href=\"event:cancel\"><b>cancel</b></a> ]</menu></high>";
         }
         else
         {
            zyfile.htmlText="<low>"+this.vyripu(false)+"</low>";
            zyfile.autoSize=TextFieldAutoSize.LEFT;
            zyfile.setSelection(0,0);
         }
         width=zyfile.width+4;
         height=zyfile.height;
         return;
      }



      override public function close() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.riw();
         this.mykadezyn();
         super.close();
         console.panels.updateMenu();
         return;
      }

      private function onMenuRollOver(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vim = null;
         var _loc2_:String = param1.text?param1.text.replace("event:",""):"";
         if(_loc2_=="close")
         {
            _loc2_="Close";
         }
         else
         {
            if(_loc2_=="capture")
            {
               _loc3_=console.rollerCaptureKey;
               if(_loc3_)
               {
                  _loc2_="Unassign key ::"+_loc3_.key;
               }
               else
               {
                  _loc2_="Assign key";
               }
            }
            else
            {
               if(_loc2_=="cancel")
               {
                  _loc2_="Cancel assign key";
               }
               else
               {
                  _loc2_=null;
               }
            }
         }
         console.panels.tooltip(_loc2_,this);
         return;
      }

      protected function sidadene(param1:TextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         TextField(param1.currentTarget).setSelection(0,0);
         if(param1.text=="close")
         {
            this.close();
         }
         else
         {
            if(param1.text=="capture")
            {
               if(console.rollerCaptureKey)
               {
                  console.setRollerCaptureKey(null);
               }
               else
               {
                  this.sypymemom=true;
                  stage.addEventListener(KeyboardEvent.KEY_DOWN,this.mewybo,false,0,true);
               }
               console.panels.tooltip(null);
            }
            else
            {
               if(param1.text=="cancel")
               {
                  this.riw();
                  console.panels.tooltip(null);
               }
            }
         }
         param1.stopPropagation();
         return;
      }

      private function riw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sypymemom=false;
         if(stage)
         {
            stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.mewybo);
         }
         return;
      }

      private function mewybo(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!param1.charCode)
         {
            return;
         }
         var _loc2_:String = String.fromCharCode(param1.charCode);
         this.riw();
         console.setRollerCaptureKey(_loc2_,param1.shiftKey,param1.ctrlKey,param1.altKey);
         console.panels.tooltip(null);
         return;
      }
   }

}