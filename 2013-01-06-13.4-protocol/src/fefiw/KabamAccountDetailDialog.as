package fefiw
{
[CLASS659]   import flash.display.Sprite;
   import tinava.Dab;
   import pudev.Capitu;
   import nonyna.Frame;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import totuhare.Javo;
   import flash.events.MouseEvent;


   public class KabamAccountDetailDialog extends Sprite
   {
      public function KabamAccountDetailDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.hosinutow=new Dab();
         return;
      }

      public var hosinutow:Dab;

      private var lapadadi:Capitu;

      private var tukovaho:Capitu;

      public function rewe(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Frame = new Frame(Kefyfa.ruji,"",Kefyfa.kalavuh,"/currentKabamLogin");
         addChild(_loc2_);
         this.lapadadi=new Capitu().setSize(18).setColor(11776947);
         this.lapadadi.setBold(true);
         this.lapadadi.setStringBuilder(new Zufi().setParams(Kefyfa.syjog));
         this.lapadadi.filters=[new DropShadowFilter(0,0,0)];
         this.lapadadi.y=_loc2_.h_-60;
         this.lapadadi.x=17;
         _loc2_.addChild(this.lapadadi);
         this.tukovaho=new Capitu().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
         this.tukovaho.setStringBuilder(new Javo(param1));
         this.tukovaho.y=_loc2_.h_-30;
         this.tukovaho.x=17;
         _loc2_.addChild(this.tukovaho);
         _loc2_.h_=_loc2_.h_+88;
         _loc2_.w_=_loc2_.w_+60;
         _loc2_.mibyruji.addEventListener(MouseEvent.CLICK,this.gug);
         return;
      }

      private function gug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hosinutow.dispatch();
         return;
      }
   }
[/CLASS]
}