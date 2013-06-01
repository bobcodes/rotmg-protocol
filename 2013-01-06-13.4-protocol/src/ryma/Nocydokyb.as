package ryma
{
[CLASS1903]   import flash.events.TextEvent;
   import wacic.Console;
   import flash.text.TextFieldAutoSize;


   public class Nocydokyb extends Nil
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nocydokyb(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         name=NAME;
         init(10,10,false);
         hanapoje=bula("channelsField");
         hanapoje.wordWrap=true;
         hanapoje.width=160;
         hanapoje.multiline=true;
         hanapoje.autoSize=TextFieldAutoSize.LEFT;
         qisur(hanapoje,this.onMenuRollOver,this.dylivep);
         qatada(hanapoje);
         addChild(hanapoje);
         return;
      }

      public static const NAME:String = "channelsPanel";

      public function update() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         hanapoje.wordWrap=false;
         hanapoje.width=80;
         var _loc1_:String = "<high><menu> <b><a href=\"event:close\">X</a></b></menu> "+console.panels.mainPanel.getChannelsLink();
         hanapoje.htmlText=_loc1_+"</high>";
         if(hanapoje.width>160)
         {
            hanapoje.wordWrap=true;
            hanapoje.width=160;
         }
         width=hanapoje.width+4;
         height=hanapoje.height;
         return;
      }

      private function onMenuRollOver(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         console.panels.mainPanel.onMenuRollOver(param1,this);
         return;
      }

      protected function dylivep(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         hanapoje.setSelection(0,0);
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
         hanapoje.setSelection(0,0);
         param1.stopPropagation();
         return;
      }
   }
[/CLASS]
}