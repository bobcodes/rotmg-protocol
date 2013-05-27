package sakugyt
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.events.Event;
   import com.company.rotmg.graphics.ScreenGraphic;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;


   public class Sezozidyt extends Sprite
   {
      public function Sezozidyt() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new ScreenGraphic());
         this.kijuf=new Lufub().setSize(30).setColor(16777215).setBold(true);
         this.kijuf.setStringBuilder(new Sire().setParams(I18nKeys.fisibecoj));
         this.kijuf.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.kijuf.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         addChild(this.kijuf);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private var kijuf:Lufub;

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.kijuf.x=stage.stageWidth/2;
         this.kijuf.y=550;
         return;
      }
   }

}