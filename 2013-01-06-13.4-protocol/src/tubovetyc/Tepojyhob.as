package tubovetyc
{
[CLASS1828]   import flash.display.Sprite;
   import com.company.ui.Remyl;
   import flash.events.MouseEvent;


   public class Tepojyhob extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tepojyhob(param1:String, param2:Function, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.callback_=param2;
         this.boko=param3;
         this.text_=new Remyl(16,16777215,false,0,0);
         this.text_.setBold(true);
         this.text_.text=param1;
         this.text_.mojymak();
         this.text_.x=2;
         addChild(this.text_);
         this.redraw();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      private static const WIDTH:int = 80;

      private static const HEIGHT:int = 25;

      public var callback_:Function;

      public var boko:int;

      private var over_:Boolean = false;

      private var tos:Boolean = false;

      private var selected_:Boolean = false;

      private var text_:Remyl;

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected_=param1;
         this.redraw();
         return;
      }

      public function cyvyjoq(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.text=param1;
         this.text_.mojymak();
         return;
      }

      private function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         if((this.selected_)||(this.tos))
         {
            graphics.lineStyle(2,16777215);
            graphics.beginFill(8355711,1);
            graphics.drawRect(0,0,WIDTH,HEIGHT);
            graphics.endFill();
            graphics.lineStyle();
         }
         else
         {
            if(this.over_)
            {
               graphics.lineStyle(2,16777215);
               graphics.beginFill(0,0.0);
               graphics.drawRect(0,0,WIDTH,HEIGHT);
               graphics.endFill();
               graphics.lineStyle();
            }
            else
            {
               graphics.lineStyle(1,16777215);
               graphics.beginFill(0,0.0);
               graphics.drawRect(0,0,WIDTH,HEIGHT);
               graphics.endFill();
               graphics.lineStyle();
            }
         }
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.over_=true;
         this.redraw();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.over_=false;
         this.tos=false;
         this.redraw();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tos=true;
         this.redraw();
         return;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tos=false;
         this.redraw();
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.callback_(this);
         return;
      }
   }
[/CLASS]
}