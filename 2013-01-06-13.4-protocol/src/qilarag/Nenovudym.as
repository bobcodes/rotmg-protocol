package qilarag
{
[CLASS501]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.events.Event;
   import totuhare.Zufi;
   import rymuhuduh.Cyzan;
   import com.company.rotmg.graphics.ScreenGraphic;
   import flash.text.TextFieldAutoSize;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;


   public class Nenovudym extends Sprite
   {
      public function Nenovudym() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text=new Capitu();
         super();
         addChild(new Cyzan());
         addChild(new ScreenGraphic());
         this.text.setSize(30).setColor(16777215).setVerticalAlign(Capitu.MIDDLE).setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
         this.text.y=550;
         addEventListener(Event.ADDED_TO_STAGE,this.cuqozi);
         this.text.setStringBuilder(new Zufi().setParams(Kefyfa.kotuq));
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.text);
         return;
      }

      private var text:Capitu;

      private function cuqozi(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.cuqozi);
         this.text.x=stage.stageWidth/2;
         return;
      }

      public function newotikeh(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setStringBuilder(new Zufi().setParams(param1));
         return;
      }
   }
[/CLASS]
}