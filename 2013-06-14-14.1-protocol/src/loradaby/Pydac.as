package loradaby
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class Pydac extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pydac(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.text_=param1;
         this.wybibe=new Guzowoja().setSize(pezi).setColor(11776947);
         this.wybibe.setBold(true);
         this.wybibe.setStringBuilder(new Kybidu().setParams(param1));
         this.wybibe.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(this.wybibe);
         this.selected_=false;
         [OFS106]addEventListener[/OFS][OFS106]([/OFS]MouseEvent.MOUSE_OVER,this.onMouseOver[OFS106])[/OFS];
         [OFS120]addEventListener[/OFS][OFS120]([/OFS][OFS111]MouseEvent[/OFS].[OFS113]ROLL_OUT[/OFS][OFS120],[/OFS]this.[OFS117]onRollOut[/OFS][OFS120])[/OFS];
         [OFS123]return[/OFS];
      }

      private static const pezi:int = 16;

      public var text_:String;

      protected var wybibe:Guzowoja;

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
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.redraw(false);
         return;
      }

      private function redraw(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wybibe.setSize(pezi);
         this.wybibe.setColor(this.getColor(param1));
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