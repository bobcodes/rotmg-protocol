package behe
{
[CLASS332]   import golac.Rusohuvo;
   import tinava.Dab;
   import pudev.Capitu;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.DropShadowFilter;
   import totuhare.Javo;
   import vehesaj.Vadico;
   import zehus.Kelapu;
   import flash.events.MouseEvent;


   public class Cydepyk extends Rusohuvo
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cydepyk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.lezanow=Vadico.cevafosan();
         this.zokokof=new Kelapu(this,MouseEvent.CLICK);
         tabChildren=false;
         tabEnabled=false;
         this.todezaq();
         return;
      }

      private static const heh:int = 16;

      public var zokokof:Dab;

      private var gepice:Capitu;

      private var qugizihel:DisplayObject;

      private var rukaw:int = -1;

      private var lezanow:Sprite;

      public function wifewyh(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.rukaw!=param1)
         {
            this.rukaw=param1;
            this.nicynady();
         }
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         parent.removeChild(this);
         return;
      }

      private function todezaq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.lezanow);
         this.qugizihel=makeIcon();
         addChild(this.qugizihel);
         this.biluq();
         this.wifewyh(0);
         return;
      }

      private function biluq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gepice=new Capitu().setSize(heh).setColor(16777215);
         this.gepice.filters=[new DropShadowFilter(0,0,0)];
         this.nicynady();
         addChild(this.gepice);
         return;
      }

      private function nicynady() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gepice.textChanged.addOnce(this.onTextChanged);
         this.gepice.setStringBuilder(new Javo(this.rukaw.toString()+" day"+(this.rukaw>1?"s":"")));
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         positionText(this.qugizihel,this.gepice);
         return;
      }
   }
[/CLASS]
}