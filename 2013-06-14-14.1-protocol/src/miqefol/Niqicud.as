package miqefol
{
   import flash.events.TextEvent;
   import zipirytab.Console;
   import flash.text.TextFieldAutoSize;


   public class Niqicud extends Qir
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Niqicud(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         name=NAME;
         init(10,10,false);
         zyfile=vykipiky("channelsField");
         zyfile.wordWrap=true;
         zyfile.width=160;
         zyfile.multiline=true;
         zyfile.autoSize=TextFieldAutoSize.LEFT;
         tycucobyr(zyfile,this.onMenuRollOver,this.sidadene);
         lyjunicut(zyfile);
         addChild(zyfile);
         return;
      }

      public static const NAME:String = "channelsPanel";

      public function update() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zyfile.wordWrap=false;
         zyfile.width=80;
         var _loc1_:String = "<high><menu> <b><a href=\"event:close\">X</a></b></menu> "+console.panels.mainPanel.getChannelsLink();
         zyfile.htmlText=_loc1_+"</high>";
         if(zyfile.width>160)
         {
            zyfile.wordWrap=true;
            zyfile.width=160;
         }
         width=zyfile.width+4;
         height=zyfile.height;
         return;
      }

      private function onMenuRollOver(param1:TextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         console.panels.mainPanel.onMenuRollOver(param1,this);
         return;
      }

      protected function sidadene(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zyfile.setSelection(0,0);
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
         zyfile.setSelection(0,0);
         param1.stopPropagation();
         return;
      }
   }

}