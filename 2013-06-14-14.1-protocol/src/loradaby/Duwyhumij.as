package loradaby
{
   import mavew.Qyrola;
   import hivysif.Guzowoja;
   import jediwip.Tunyhazo;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class Duwyhumij extends Riwiz
   {
      public function Duwyhumij(param1:String, param2:String, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.wavaqon=param1;
         this.vyweh=param3;
         this.mudug=new Guzowoja().setSize(18).setColor(11776947);
         this.mudug.setStringBuilder(new Kybidu().setParams(param2));
         this.mudug.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.mudug.x=KeyCodeBox.WIDTH+24;
         this.mudug.mouseEnabled=true;
         this.mudug.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.mudug.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addChild(this.mudug);
         this.viponoke=new Qyrola(2565927,8553090,null,this.vyweh,150);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         textChanged=this.mudug.textChanged;
         return;
      }

      public var wavaqon:String;

      private var vyweh:String;

      private var viponoke:Qyrola;

      private var mudug:Guzowoja;

      public function sove(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mudug.setStringBuilder(param1);
         return;
      }

      public function tahukiz(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viponoke.kenadyb(param1);
         return;
      }

      public function refresh() : void {
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         parent.addChild(this.viponoke);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         if(!(this.viponoke==null)&&(parent.contains(this.viponoke)))
         {
            parent.removeChild(this.viponoke);
         }
         return;
      }
   }

}