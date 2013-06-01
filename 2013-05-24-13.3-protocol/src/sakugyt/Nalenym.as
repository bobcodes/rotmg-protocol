package sakugyt
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.events.Event;
   import nec.Sire;
   import vahejo.Tetywybil;
   import com.company.rotmg.graphics.ScreenGraphic;
   import flash.text.TextFieldAutoSize;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;


   public class Nalenym extends Sprite
   {
      public function Nalenym() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text=new Lufub();
         super();
         addChild(new Tetywybil());
         addChild(new ScreenGraphic());
         this.text.setSize(30).setColor(16777215).setVerticalAlign(Lufub.MIDDLE).setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
         this.text.y=550;
         addEventListener(Event.ADDED_TO_STAGE,this.dyl);
         this.text.setStringBuilder(new Sire().setParams(I18nKeys.fisibecoj));
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.text);
         return;
      }

      private var text:Lufub;

      private function dyl(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.dyl);
         this.text.x=stage.stageWidth/2;
         return;
      }

      public function hifyvapy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text.setStringBuilder(new Sire().setParams(param1));
         return;
      }
   }

}