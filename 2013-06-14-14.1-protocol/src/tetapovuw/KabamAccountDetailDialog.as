package tetapovuw
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import zekeqa.Frame;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import jediwip.Vofezuzy;
   import flash.events.MouseEvent;


   public class KabamAccountDetailDialog extends Sprite
   {
      public function KabamAccountDetailDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.helifob=new Qanyduk();
         return;
      }

      public var helifob:Qanyduk;

      private var mizajulec:Guzowoja;

      private var koryde:Guzowoja;

      public function zyfa(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Frame = new Frame(Vibemod.velabazot,"",Vibemod.vumyzot,"/currentKabamLogin");
         addChild(_loc2_);
         this.mizajulec=new Guzowoja().setSize(18).setColor(11776947);
         this.mizajulec.setBold(true);
         this.mizajulec.setStringBuilder(new Kybidu().setParams(Vibemod.hiqa));
         this.mizajulec.filters=[new DropShadowFilter(0,0,0)];
         this.mizajulec.y=_loc2_.h_-60;
         this.mizajulec.x=17;
         _loc2_.addChild(this.mizajulec);
         this.koryde=new Guzowoja().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
         this.koryde.setStringBuilder(new Vofezuzy(param1));
         this.koryde.y=_loc2_.h_-30;
         this.koryde.x=17;
         _loc2_.addChild(this.koryde);
         _loc2_.h_=_loc2_.h_+88;
         _loc2_.w_=_loc2_.w_+60;
         _loc2_.nuwido.addEventListener(MouseEvent.CLICK,this.jujib);
         return;
      }

      private function jujib(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.helifob.dispatch();
         return;
      }
   }

}