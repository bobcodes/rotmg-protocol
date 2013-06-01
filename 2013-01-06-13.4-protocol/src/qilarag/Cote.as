package qilarag
{
[CLASS1005]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.events.Event;
   import com.company.rotmg.graphics.ScreenGraphic;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;


   public class Cote extends Sprite
   {
      public function Cote() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new ScreenGraphic());
         this.ryhuk=new Capitu().setSize(30).setColor(16777215).setBold(true);
         this.ryhuk.setStringBuilder(new Zufi().setParams(Kefyfa.kotuq));
         this.ryhuk.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.ryhuk.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         addChild(this.ryhuk);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private var ryhuk:Capitu;

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.ryhuk.x=stage.stageWidth/2;
         this.ryhuk.y=550;
         return;
      }
   }
[/CLASS]
}