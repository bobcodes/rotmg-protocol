package gyrake
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.events.MouseEvent;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class Jajegec extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jajegec(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.text_=param1;
         this.qicoqymuj=new Lufub().setSize(bopek).setColor(11776947);
         this.qicoqymuj.setBold(true);
         this.qicoqymuj.setStringBuilder(new Sire().setParams(param1));
         this.qicoqymuj.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(this.qicoqymuj);
         this.selected_=false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      private static const bopek:int = 16;

      public var text_:String;

      protected var qicoqymuj:Lufub;

      protected var selected_:Boolean;

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.redraw(false);
         return;
      }

      private function redraw(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qicoqymuj.setSize(bopek);
         this.qicoqymuj.setColor(this.getColor(param1));
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

}