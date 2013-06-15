package kyhela
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.util.GuildUtil;
   import vysob.Dialog;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import sijizoh.Duq;
   import cizagamym.Boquzojul;
   import flash.events.Event;
   import cizagamym.Lebovas;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import com.company.rotmg.graphics.GlobalNotificationActionteXGraphic;


   class Zydawin extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Zydawin(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:int) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:uint = 0;
         super();
         this.name_=param2;
         this.hezymyv=param3;
         _loc7_=11776947;
         if(param5)
         {
            _loc7_=16564761;
         }
         this.hiryse=new Guzowoja().setSize(22).setColor(_loc7_);
         this.hiryse.setStringBuilder(new Vofezuzy(param1.toString()+"."));
         this.hiryse.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.hiryse.x=60-this.hiryse.width;
         this.hiryse.y=4;
         addChild(this.hiryse);
         this.nameText_=new Guzowoja().setSize(22).setColor(_loc7_);
         this.nameText_.setStringBuilder(new Vofezuzy(param2));
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.nameText_.x=100;
         this.nameText_.y=4;
         addChild(this.nameText_);
         this.cituguteq=new Guzowoja().setSize(22).setColor(_loc7_);
         this.cituguteq.setAutoSize(TextFieldAutoSize.RIGHT);
         this.cituguteq.setStringBuilder(new Vofezuzy(param4.toString()));
         this.cituguteq.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.cituguteq.x=408;
         this.cituguteq.y=4;
         addChild(this.cituguteq);
         this.raleduwub=new Bitmap(GuildUtil.myzibowa(40));
         this.raleduwub.x=400;
         this.raleduwub.y=HEIGHT/2-this.raleduwub.height/2;
         addChild(this.raleduwub);
         this.dizuhyzu=new Bitmap(GuildUtil.difamo(param3,20));
         this.dizuhyzu.x=548;
         this.dizuhyzu.y=HEIGHT/2-this.dizuhyzu.height/2;
         addChild(this.dizuhyzu);
         this.kyb=new Guzowoja().setSize(22).setColor(_loc7_);
         this.kyb.setStringBuilder(new Kybidu().setParams(GuildUtil.hecuj(param3)));
         this.kyb.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.kyb.setVerticalAlign(Guzowoja.MIDDLE);
         this.kyb.x=580;
         this.kyb.y=HEIGHT/2;
         addChild(this.kyb);
         if(GuildUtil.kyvicarud(param6,param3))
         {
            this.vora=this.jafuhez(true);
            this.sor(this.vora);
            this.vora.addEventListener(MouseEvent.CLICK,this.nobe);
            this.vora.x=670+6;
            this.vora.y=HEIGHT/2;
            addChild(this.vora);
         }
         if(GuildUtil.qiworebar(param6,param3))
         {
            this.syqema=this.jafuhez(false);
            this.sor(this.syqema);
            this.syqema.addEventListener(MouseEvent.CLICK,this.wuha);
            this.syqema.x=700+6;
            this.syqema.y=HEIGHT/2;
            addChild(this.syqema);
         }
         if(GuildUtil.tumujel(param6,param3))
         {
            this.dynu=new GlobalNotificationActionteXGraphic();
            this.sor(this.dynu);
            this.dynu.addEventListener(MouseEvent.CLICK,this.viluc);
            this.dynu.x=730;
            this.dynu.y=HEIGHT/2-this.dynu.height/2;
            addChild(this.dynu);
         }
         return;
      }

      public static const WIDTH:int = 756;

      public static const HEIGHT:int = 32;

      protected static const tehobur:ColorTransform = new ColorTransform(1,220/255,133/255);

      private var name_:String;

      private var hezymyv:int;

      private var hiryse:Guzowoja;

      private var nameText_:Guzowoja;

      private var cituguteq:Guzowoja;

      private var raleduwub:Bitmap;

      private var dizuhyzu:Bitmap;

      private var kyb:Guzowoja;

      private var vora:Sprite;

      private var syqema:Sprite;

      private var dynu:Sprite;

      private function jafuhez(param1:Boolean) : Sprite {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Graphics = _loc2_.graphics;
         _loc3_.beginFill(16777215);
         _loc3_.moveTo(-8,-6);
         _loc3_.lineTo(8,-6);
         _loc3_.lineTo(0,6);
         _loc3_.lineTo(-8,-6);
         if(param1)
         {
            _loc2_.rotation=180;
         }
         return _loc2_;
      }

      private function sor(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(MouseEvent.MOUSE_OVER,this.degoq);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.jarecyhu);
         return;
      }

      private function degoq(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform=tehobur;
         return;
      }

      private function jarecyhu(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform=MoreColorUtil.identity;
         return;
      }

      private function nobe(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = GuildUtil.hecuj(GuildUtil.qifewyzal(this.hezymyv));
         var _loc3_:Dialog = new Dialog("","",Vibemod.wimulina,Vibemod.gehowi,"/promote");
         _loc3_.vubah(Vibemod.ryzedo,
            {
               name:this.name_,
               rank:_loc2_
            }
         );
         _loc3_.pelab(new Kybidu().setParams(Vibemod.qihy,{name:this.name_}));
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.fanumido);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.wuwyt);
         Duq.pamazo().getInstance(Boquzojul).dispatch(_loc3_);
         return;
      }

      private function wuwyt(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Muve(Muve.SET_RANK,this.name_,GuildUtil.qifewyzal(this.hezymyv)));
         Duq.pamazo().getInstance(Lebovas).dispatch();
         return;
      }

      private function wuha(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = GuildUtil.hecuj(GuildUtil.dazy(this.hezymyv));
         var _loc3_:Dialog = new Dialog("","",Vibemod.boc,Vibemod.hol,"/demote");
         _loc3_.vubah(Vibemod.fycifej,
            {
               name:this.name_,
               rank:_loc2_
            }
         );
         _loc3_.pelab(new Kybidu().setParams(Vibemod.pehyqel,{name:this.name_}));
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.fanumido);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.repudep);
         Duq.pamazo().getInstance(Boquzojul).dispatch(_loc3_);
         return;
      }

      private function repudep(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Muve(Muve.SET_RANK,this.name_,GuildUtil.dazy(this.hezymyv)));
         Duq.pamazo().getInstance(Lebovas).dispatch();
         return;
      }

      private function viluc(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dialog = new Dialog("","",Vibemod.mabuvowep,Vibemod.vasipykon,"/removeFromGuild");
         _loc2_.vubah(Vibemod.woramiw,{name:this.name_});
         _loc2_.pelab(new Kybidu().setParams(Vibemod.wojugygy,{name:this.name_}));
         _loc2_.addEventListener(Dialog.LEFT_BUTTON,this.fanumido);
         _loc2_.addEventListener(Dialog.RIGHT_BUTTON,this.caf);
         Duq.pamazo().getInstance(Boquzojul).dispatch(_loc2_);
         return;
      }

      private function caf(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Duq.pamazo().getInstance(Lebovas).dispatch();
         dispatchEvent(new Muve(Muve.REMOVE_MEMBER,this.name_));
         return;
      }

      private function fanumido(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Duq.pamazo().getInstance(Lebovas).dispatch();
         return;
      }
   }

}