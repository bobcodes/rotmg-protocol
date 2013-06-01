package wepyhuzy
{
[CLASS1910]   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.util.GuildUtil;
   import cejyva.Dialog;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import jutesesel.Qibigagal;
   import kirofyny.Hehuf;
   import flash.events.Event;
   import kirofyny.Tiqimav;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import com.company.rotmg.graphics.DeleteXGraphic;


   class Hicopis extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Hicopis(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:int) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:uint = 0;
         super();
         this.name_=param2;
         this.bywuqab=param3;
         _loc7_=11776947;
         if(param5)
         {
            _loc7_=16564761;
         }
         this.fajyhefi=new Capitu().setSize(22).setColor(_loc7_);
         this.fajyhefi.setStringBuilder(new Javo(param1.toString()+"."));
         this.fajyhefi.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.fajyhefi.x=60-this.fajyhefi.width;
         this.fajyhefi.y=4;
         addChild(this.fajyhefi);
         this.nameText_=new Capitu().setSize(22).setColor(_loc7_);
         this.nameText_.setStringBuilder(new Javo(param2));
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.nameText_.x=100;
         this.nameText_.y=4;
         addChild(this.nameText_);
         this.gugefusef=new Capitu().setSize(22).setColor(_loc7_);
         this.gugefusef.setAutoSize(TextFieldAutoSize.RIGHT);
         this.gugefusef.setStringBuilder(new Javo(param4.toString()));
         this.gugefusef.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.gugefusef.x=408;
         this.gugefusef.y=4;
         addChild(this.gugefusef);
         this.gupazy=new Bitmap(GuildUtil.tuciquci(40));
         this.gupazy.x=400;
         this.gupazy.y=HEIGHT/2-this.gupazy.height/2;
         addChild(this.gupazy);
         this.zogyro=new Bitmap(GuildUtil.qylybacub(param3,20));
         this.zogyro.x=548;
         this.zogyro.y=HEIGHT/2-this.zogyro.height/2;
         addChild(this.zogyro);
         this.hyjafaki=new Capitu().setSize(22).setColor(_loc7_);
         this.hyjafaki.setStringBuilder(new Zufi().setParams(GuildUtil.bihuw(param3)));
         this.hyjafaki.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.hyjafaki.setVerticalAlign(Capitu.MIDDLE);
         this.hyjafaki.x=580;
         this.hyjafaki.y=HEIGHT/2;
         addChild(this.hyjafaki);
         if(GuildUtil.kyjeb(param6,param3))
         {
            this.gifavy=this.nabos(true);
            this.ladyfyl(this.gifavy);
            this.gifavy.addEventListener(MouseEvent.CLICK,this.jopyjapir);
            this.gifavy.x=670+6;
            this.gifavy.y=HEIGHT/2;
            addChild(this.gifavy);
         }
         if(GuildUtil.fider(param6,param3))
         {
            this.zocok=this.nabos(false);
            this.ladyfyl(this.zocok);
            this.zocok.addEventListener(MouseEvent.CLICK,this.wimyze);
            this.zocok.x=700+6;
            this.zocok.y=HEIGHT/2;
            addChild(this.zocok);
         }
         if(GuildUtil.ramerum(param6,param3))
         {
            this.kedom=new DeleteXGraphic();
            this.ladyfyl(this.kedom);
            this.kedom.addEventListener(MouseEvent.CLICK,this.nezynebo);
            this.kedom.x=730;
            this.kedom.y=HEIGHT/2-this.kedom.height/2;
            addChild(this.kedom);
         }
         return;
      }

      public static const WIDTH:int = 756;

      public static const HEIGHT:int = 32;

      protected static const nyjo:ColorTransform = new ColorTransform(1,220/255,133/255);

      private var name_:String;

      private var bywuqab:int;

      private var fajyhefi:Capitu;

      private var nameText_:Capitu;

      private var gugefusef:Capitu;

      private var gupazy:Bitmap;

      private var zogyro:Bitmap;

      private var hyjafaki:Capitu;

      private var gifavy:Sprite;

      private var zocok:Sprite;

      private var kedom:Sprite;

      private function nabos(param1:Boolean) : Sprite {
         var _loc4_:* = true;
         var _loc5_:* = false;
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

      private function ladyfyl(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(MouseEvent.MOUSE_OVER,this.werogi);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.tuquzo);
         return;
      }

      private function werogi(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform=nyjo;
         return;
      }

      private function tuquzo(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform=MoreColorUtil.identity;
         return;
      }

      private function jopyjapir(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = GuildUtil.bihuw(GuildUtil.megyfuqol(this.bywuqab));
         var _loc3_:Dialog = new Dialog("","",Kefyfa.tejoda,Kefyfa.nozuqe,"/promote");
         _loc3_.rezynobik(Kefyfa.sonuc,
            {
               name:this.name_,
               rank:_loc2_
            }
         );
         _loc3_.pyhifavun(new Zufi().setParams(Kefyfa.qeba,{name:this.name_}));
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.kinihupyl);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.dytu);
         Qibigagal.husuha().getInstance(Hehuf).dispatch(_loc3_);
         return;
      }

      private function dytu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Rodabyl(Rodabyl.SET_RANK,this.name_,GuildUtil.megyfuqol(this.bywuqab)));
         Qibigagal.husuha().getInstance(Tiqimav).dispatch();
         return;
      }

      private function wimyze(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = GuildUtil.bihuw(GuildUtil.typynega(this.bywuqab));
         var _loc3_:Dialog = new Dialog("","",Kefyfa.vufy,Kefyfa.cidila,"/demote");
         _loc3_.rezynobik(Kefyfa.fivev,
            {
               name:this.name_,
               rank:_loc2_
            }
         );
         _loc3_.pyhifavun(new Zufi().setParams(Kefyfa.tet,{name:this.name_}));
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.kinihupyl);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.pezezo);
         Qibigagal.husuha().getInstance(Hehuf).dispatch(_loc3_);
         return;
      }

      private function pezezo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Rodabyl(Rodabyl.SET_RANK,this.name_,GuildUtil.typynega(this.bywuqab)));
         Qibigagal.husuha().getInstance(Tiqimav).dispatch();
         return;
      }

      private function nezynebo(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dialog = new Dialog("","",Kefyfa.sit,Kefyfa.zywykago,"/removeFromGuild");
         _loc2_.rezynobik(Kefyfa.pywijydah,{name:this.name_});
         _loc2_.pyhifavun(new Zufi().setParams(Kefyfa.nydyqub,{name:this.name_}));
         _loc2_.addEventListener(Dialog.LEFT_BUTTON,this.kinihupyl);
         _loc2_.addEventListener(Dialog.RIGHT_BUTTON,this.tigij);
         Qibigagal.husuha().getInstance(Hehuf).dispatch(_loc2_);
         return;
      }

      private function tigij(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Qibigagal.husuha().getInstance(Tiqimav).dispatch();
         dispatchEvent(new Rodabyl(Rodabyl.REMOVE_MEMBER,this.name_));
         return;
      }

      private function kinihupyl(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Qibigagal.husuha().getInstance(Tiqimav).dispatch();
         return;
      }
   }
[/CLASS]
}