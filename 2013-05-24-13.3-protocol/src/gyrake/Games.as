package gyrake
{
   import povopito.Jodehozut;
   import movimet.Lufub;
   import nec.Zirewe;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class Games extends Vaq
   {
      public function Games(param1:String, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.ruhunydyw=param1;
         this.zomokoro=param3;
         this.suwysef=new Lufub().setSize(18).setColor(11776947);
         this.suwysef.setStringBuilder(new Sire().setParams(param2));
         this.suwysef.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.suwysef.x=KeyCodeBox.WIDTH+24;
         this.suwysef.mouseEnabled=true;
         this.suwysef.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.suwysef.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addChild(this.suwysef);
         this.rezaf=new Jodehozut(2565927,8553090,null,this.zomokoro,150);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         textChanged=this.suwysef.textChanged;
         return;
      }

      public var ruhunydyw:String;

      private var zomokoro:String;

      private var rezaf:Jodehozut;

      private var suwysef:Lufub;

      public function gyjovy(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.suwysef.setStringBuilder(param1);
         return;
      }

      public function jagirozaj(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rezaf.sonydiw(param1);
         return;
      }

      public function refresh() : void {
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         parent.addChild(this.rezaf);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.removeToolTip();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.removeToolTip();
         return;
      }

      private function removeToolTip() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(this.rezaf==null)&&(parent.contains(this.rezaf)))
         {
            parent.removeChild(this.rezaf);
         }
         return;
      }
   }

}