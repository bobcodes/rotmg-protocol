package cycygaj
{
[CLASS1620]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class Jawivy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jawivy(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.text_=param1;
         this.wan=new Capitu().setSize(wonuwyju).setColor(11776947);
         this.wan.setBold(true);
         this.wan.setStringBuilder(new Zufi().setParams(param1));
         this.wan.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(this.wan);
         this.selected_=false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      private static const wonuwyju:int = 16;

      public var text_:String;

      protected var wan:Capitu;

      protected var selected_:Boolean;

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected_=param1;
         this.redraw(false);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.redraw(true);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.redraw(false);
         return;
      }

      private function redraw(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wan.setSize(wonuwyju);
         this.wan.setColor(this.getColor(param1));
         return;
      }

      private function getColor(param1:Boolean) : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.selected_)
         {
            return 16762880;
         }
         return param1?16777215:11776947;
      }
   }
[/CLASS]
}