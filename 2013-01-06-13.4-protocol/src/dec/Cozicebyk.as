package dec
{
[CLASS1820]   import flash.display.Sprite;
   import pigeguwo.Jazyv;
   import flash.events.Event;
   import flash.events.MouseEvent;


   public class Cozicebyk extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cozicebyk(param1:int) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.type_=param1;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 50;

      public static const HEIGHT:int = 50;

      protected static var toolTip_:Jazyv = null;

      public var type_:int;

      protected var selected_:Boolean = false;

      protected var dupo:Boolean = false;

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected_=param1;
         this.draw();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      private function onMouseOver(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dupo=true;
         this.draw();
         this.volokyd(this.getToolTip());
         return;
      }

      private function onRollOut(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dupo=false;
         this.draw();
         this.mivomydu();
         return;
      }

      protected function volokyd(param1:Jazyv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mivomydu();
         toolTip_=param1;
         if(toolTip_!=null)
         {
            stage.addChild(toolTip_);
         }
         return;
      }

      protected function mivomydu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(toolTip_!=null)
         {
            if(toolTip_.parent!=null)
            {
               toolTip_.parent.removeChild(toolTip_);
            }
            toolTip_=null;
         }
         return;
      }

      protected function getToolTip() : Jazyv {
         return null;
      }

      private function draw() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         var _loc1_:uint = 3552822;
         if(this.selected_)
         {
            graphics.lineStyle(1,16777215);
            _loc1_=8355711;
         }
         graphics.beginFill(this.dupo?5658198:3552822,1);
         graphics.drawRect(2,2,WIDTH-4,HEIGHT-4);
         if(this.selected_)
         {
            graphics.lineStyle();
         }
         graphics.endFill();
         return;
      }
   }
[/CLASS]
}