package waryp
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.events.Event;
   import com.company.rotmg.graphics.ScreenGraphic;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;


   public class Wuzirav extends Sprite
   {
      public function Wuzirav() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new ScreenGraphic());
         this.wisaqorow=new Guzowoja().setSize(30).setColor(16777215).setBold(true);
         this.wisaqorow.setStringBuilder(new Kybidu().setParams(Vibemod.rasih));
         this.wisaqorow.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.wisaqorow.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         addChild(this.wisaqorow);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private var wisaqorow:Guzowoja;

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.wisaqorow.x=stage.stageWidth/2;
         this.wisaqorow.y=550;
         return;
      }
   }

}