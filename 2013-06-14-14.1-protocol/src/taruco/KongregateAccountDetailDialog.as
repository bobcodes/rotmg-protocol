package taruco
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Hiry;
   import zekeqa.Frame;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import jediwip.Vofezuzy;
   import flash.events.MouseEvent;


   public class KongregateAccountDetailDialog extends Sprite
   {
      public function KongregateAccountDetailDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.helifob=new Qanyduk();
         this.register=new Qanyduk();
         this.link=new Qanyduk();
         return;
      }

      public var helifob:Qanyduk;

      public var register:Qanyduk;

      public var link:Qanyduk;

      private var mizajulec:Guzowoja;

      private var koryde:Guzowoja;

      private var visiw:Guzowoja;

      private var lubekiky:Guzowoja;

      private var gewy:Hiry;

      private var zazybyg:Hiry;

      public function zyfa(param1:String, param2:String, param3:Boolean) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Frame = null;
         _loc4_=new Frame(Vibemod.derery,"",Vibemod.hefyv,"/kongregateCurrentLogin");
         addChild(_loc4_);
         this.mizajulec=new Guzowoja().setSize(18).setColor(11776947);
         this.mizajulec.setBold(true);
         this.mizajulec.setStringBuilder(new Kybidu().setParams(Vibemod.derery));
         this.mizajulec.filters=[new DropShadowFilter(0,0,0)];
         this.mizajulec.y=_loc4_.h_-60;
         this.mizajulec.x=17;
         _loc4_.addChild(this.mizajulec);
         this.koryde=new Guzowoja().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
         this.koryde.setStringBuilder(new Vofezuzy(param1));
         this.koryde.y=_loc4_.h_-30;
         this.koryde.x=17;
         _loc4_.addChild(this.koryde);
         _loc4_.h_=_loc4_.h_+88;
         if(param3)
         {
            _loc4_.h_=_loc4_.h_-20;
            this.visiw=new Guzowoja().setSize(18).setColor(11776947);
            this.visiw.setBold(true);
            this.visiw.setStringBuilder(new Kybidu().setParams(Vibemod.zijas));
            this.visiw.filters=[new DropShadowFilter(0,0,0)];
            this.visiw.y=_loc4_.h_-60;
            this.visiw.x=17;
            _loc4_.addChild(this.visiw);
            this.lubekiky=new Guzowoja().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
            this.lubekiky.setStringBuilder(new Vofezuzy(param2));
            this.lubekiky.y=_loc4_.h_-30;
            this.lubekiky.x=17;
            _loc4_.addChild(this.lubekiky);
            _loc4_.h_=_loc4_.h_+88;
         }
         else
         {
            this.gewy=new Hiry(12,false,Vibemod.jakoj);
            this.zazybyg=new Hiry(12,false,Vibemod.vyzy);
            _loc4_.pivol(this.zazybyg);
            this.gewy.addEventListener(MouseEvent.CLICK,this.mijy);
            this.zazybyg.addEventListener(MouseEvent.CLICK,this.onLink);
         }
         _loc4_.nuwido.addEventListener(MouseEvent.CLICK,this.jujib);
         return;
      }

      private function jujib(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.helifob.dispatch();
         return;
      }

      public function mijy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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

}