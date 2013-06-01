package qudulul
{
   import flash.events.TextEvent;
   import lutyfopo.Console;
   import flash.text.TextFieldAutoSize;


   public class Lywyliz extends Hycoba
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lywyliz(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         name=NAME;
         init(10,10,false);
         zem=goqyc("channelsField");
         zem.wordWrap=true;
         zem.width=160;
         zem.multiline=true;
         zem.autoSize=TextFieldAutoSize.LEFT;
         kek(zem,this.onMenuRollOver,this.vaq);
         kehiza(zem);
         addChild(zem);
         return;
      }

      public static const NAME:String = "channelsPanel";

      public function update() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         zem.wordWrap=false;
         zem.width=80;
         var _loc1_:String = "<high><menu> <b><a href=\"event:close\">X</a></b></menu> "+console.panels.mainPanel.getChannelsLink();
         zem.htmlText=_loc1_+"</high>";
         if(zem.width>160)
         {
            zem.wordWrap=true;
            zem.width=160;
         }
         width=zem.width+4;
         height=zem.height;
         return;
      }

      private function onMenuRollOver(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         console.panels.mainPanel.onMenuRollOver(param1,this);
         return;
      }

      protected function vaq(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zem.setSelection(0,0);
         if(param1.text=="close")
         {
            console.panels.channelsPanel=false;
         }
         else
         {
            if(param1.text.substring(0,8)=="channel_")
            {
               console.panels.mainPanel.onChannelPressed(param1.text.substring(8));
            }
         }
         zem.setSelection(0,0);
         param1.stopPropagation();
         return;
      }
   }

}