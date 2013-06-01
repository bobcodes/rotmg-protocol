package cycygaj
{
[CLASS1619]   import pigeguwo.Mefu;
   import pudev.Capitu;
   import totuhare.Qebar;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class Kujofy extends Kihuvu
   {
      public function Kujofy(param1:String, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.zesiwutir=param1;
         this.hatici=param3;
         this.zibeny=new Capitu().setSize(18).setColor(11776947);
         this.zibeny.setStringBuilder(new Zufi().setParams(param2));
         this.zibeny.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.zibeny.x=KeyCodeBox.WIDTH+24;
         this.zibeny.mouseEnabled=true;
         this.zibeny.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.zibeny.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addChild(this.zibeny);
         this.picazivu=new Mefu(2565927,8553090,null,this.hatici,150);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         textChanged=this.zibeny.textChanged;
         return;
      }

      public var zesiwutir:String;

      private var hatici:String;

      private var picazivu:Mefu;

      private var zibeny:Capitu;

      public function deqehy(param1:Qebar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zibeny.setStringBuilder(param1);
         return;
      }

      public function wilezefus(param1:Qebar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.picazivu.rike(param1);
         return;
      }

      public function refresh() : void {
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         parent.addChild(this.picazivu);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.removeToolTip();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.removeToolTip();
         return;
      }

      private function removeToolTip() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(this.picazivu==null)&&(parent.contains(this.picazivu)))
         {
            parent.removeChild(this.picazivu);
         }
         return;
      }
   }
[/CLASS]
}