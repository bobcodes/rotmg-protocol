package tizozowof
{
[CLASS759]   import flash.display.Sprite;
   import tinava.Dab;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Sosapa;
   import nonyna.Frame;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import totuhare.Javo;
   import flash.events.MouseEvent;


   public class KongregateAccountDetailDialog extends Sprite
   {
      public function KongregateAccountDetailDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.hosinutow=new Dab();
         this.register=new Dab();
         this.link=new Dab();
         return;
      }

      public var hosinutow:Dab;

      public var register:Dab;

      public var link:Dab;

      private var lapadadi:Capitu;

      private var tukovaho:Capitu;

      private var wabopel:Capitu;

      private var jufyny:Capitu;

      private var let:Sosapa;

      private var fydunapym:Sosapa;

      public function rewe(param1:String, param2:String, param3:Boolean) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Frame = null;
         _loc4_=new Frame(Kefyfa.pely,"",Kefyfa.pupoly,"/kongregateCurrentLogin");
         addChild(_loc4_);
         this.lapadadi=new Capitu().setSize(18).setColor(11776947);
         this.lapadadi.setBold(true);
         this.lapadadi.setStringBuilder(new Zufi().setParams(Kefyfa.pely));
         this.lapadadi.filters=[new DropShadowFilter(0,0,0)];
         this.lapadadi.y=_loc4_.h_-60;
         this.lapadadi.x=17;
         _loc4_.addChild(this.lapadadi);
         this.tukovaho=new Capitu().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
         this.tukovaho.setStringBuilder(new Javo(param1));
         this.tukovaho.y=_loc4_.h_-30;
         this.tukovaho.x=17;
         _loc4_.addChild(this.tukovaho);
         _loc4_.h_=_loc4_.h_+88;
         if(param3)
         {
            _loc4_.h_=_loc4_.h_-20;
            this.wabopel=new Capitu().setSize(18).setColor(11776947);
            this.wabopel.setBold(true);
            this.wabopel.setStringBuilder(new Zufi().setParams(Kefyfa.nekec));
            this.wabopel.filters=[new DropShadowFilter(0,0,0)];
            this.wabopel.y=_loc4_.h_-60;
            this.wabopel.x=17;
            _loc4_.addChild(this.wabopel);
            this.jufyny=new Capitu().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
            this.jufyny.setStringBuilder(new Javo(param2));
            this.jufyny.y=_loc4_.h_-30;
            this.jufyny.x=17;
            _loc4_.addChild(this.jufyny);
            _loc4_.h_=_loc4_.h_+88;
         }
         else
         {
            this.let=new Sosapa(12,false,Kefyfa.cynajijo);
            this.fydunapym=new Sosapa(12,false,Kefyfa.rojelo);
            _loc4_.nozokuw(this.fydunapym);
            this.let.addEventListener(MouseEvent.CLICK,this.qare);
            this.fydunapym.addEventListener(MouseEvent.CLICK,this.onLink);
         }
         _loc4_.mibyruji.addEventListener(MouseEvent.CLICK,this.gug);
         return;
      }

      private function gug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hosinutow.dispatch();
         return;
      }

      public function qare(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.register.dispatch();
         return;
      }

      public function onLink(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.link.dispatch();
         return;
      }
   }
[/CLASS]
}