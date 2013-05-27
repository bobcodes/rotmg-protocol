package kyre
{
   import flash.display.Sprite;
   import aaa.rotmg.net.HttpClientWrapper;
   import movimet.Lufub;
   import com.company.ui.Sytubyvyg;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Tira;
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.GuildUtil;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.events.Event;
   import jag.Giq;
   import aaa.rotmg.account.Account;
   import com.company.util.Vuwewuc;


   public class GuildPlayerList extends Sprite
   {
      public function GuildPlayerList(param1:int, param2:int, param3:String="", param4:int=0) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.zivit=param1;
         this.roqopolij=param2;
         this.cacicase=param3;
         this.myjare=param4;
         this.kijuf=new Lufub().setSize(22).setColor(11776947);
         this.kijuf.setBold(true);
         this.kijuf.setStringBuilder(new Sire().setParams(I18nKeys.fisibecoj));
         this.kijuf.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.kijuf.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.kijuf.x=800/2;
         this.kijuf.y=550;
         addChild(this.kijuf);
         var _loc5_:Account = Giq.kid().getInstance(Account);
         var _loc6_:Object = 
            {
               num:param1,
               offset:param2
            }
         ;
         Vuwewuc.hohohev(_loc6_,_loc5_.venupog());
         this.vymo=Giq.kid().getInstance(HttpClientWrapper);
         this.vymo.fug(2);
         this.vymo.complete.addOnce(this.onComplete);
         this.vymo.sendRequest("/guild/listMembers",_loc6_);
         return;
      }

      private var zivit:int;

      private var roqopolij:int;

      private var cacicase:String;

      private var myjare:int;

      private var vymo:HttpClientWrapper;

      private var kijuf:Lufub;

      private var pevyh:Sytubyvyg;

      private var cowuqoge:Sytubyvyg;

      private var qiburat:Bitmap;

      private var tuto:Shape;

      private var cik:Sprite;

      private var qujok:Sprite;

      private var mihumysi:Lufub;

      private var cunahide:Tira;

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.vizat(param2);
         }
         else
         {
            this.zotah(param2);
         }
         return;
      }

      private function vizat(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.build(XML(param1));
         return;
      }

      private function zotah(param1:String) : void {
         return;
      }

      private function build(param1:XML) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc2_:Graphics = null;
         var _loc5_:XML = null;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:Syhu = null;
         removeChild(this.kijuf);
         this.pevyh=new Sytubyvyg(32,11776947,false,0,0);
         this.pevyh.setBold(true);
         this.pevyh.text=param1.@name;
         this.pevyh.cijoka();
         this.pevyh.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.pevyh.y=24;
         this.pevyh.x=stage.stageWidth/2-this.pevyh.width/2;
         addChild(this.pevyh);
         this.cowuqoge=new Sytubyvyg(22,16777215,false,0,0);
         this.cowuqoge.text=param1.CurrentFame;
         this.cowuqoge.cijoka();
         this.cowuqoge.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.cowuqoge.x=768-this.cowuqoge.width;
         this.cowuqoge.y=32/2-this.cowuqoge.height/2;
         addChild(this.cowuqoge);
         this.qiburat=new Bitmap(GuildUtil.vemitijim(40));
         this.qiburat.x=760;
         this.qiburat.y=32/2-this.qiburat.height/2;
         addChild(this.qiburat);
         this.tuto=new Shape();
         _loc2_=this.tuto.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(2,5526612);
         _loc2_.moveTo(0,100);
         _loc2_.lineTo(stage.stageWidth,100);
         _loc2_.lineStyle();
         addChild(this.tuto);
         this.cik=new Sprite();
         this.cik.x=10;
         this.cik.y=110;
         var _loc3_:Shape = new Shape();
         _loc2_=_loc3_.graphics;
         _loc2_.beginFill(0);
         _loc2_.drawRect(0,0,Syhu.WIDTH,430);
         _loc2_.endFill();
         this.cik.addChild(_loc3_);
         this.cik.mask=_loc3_;
         addChild(this.cik);
         this.qujok=new Sprite();
         var _loc4_:* = 0;
         for each (_loc5_ in param1.Member)
         {
            _loc7_=this.cacicase==_loc5_.Name;
            _loc8_=_loc5_.Rank;
            _loc9_=new Syhu(this.roqopolij+_loc4_+1,_loc5_.Name,_loc5_.Rank,_loc5_.Fame,_loc7_,this.myjare);
            _loc9_.y=_loc4_*Syhu.HEIGHT;
            this.qujok.addChild(_loc9_);
            _loc4_++;
         }
         _loc6_=GuildUtil.wakufufo-this.roqopolij+_loc4_;
         this.mihumysi=new Lufub().setSize(22).setColor(11776947);
         this.mihumysi.setStringBuilder(new Sire().setParams(I18nKeys.gepuse,{openSlots:_loc6_}));
         this.mihumysi.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.mihumysi.setAutoSize(TextFieldAutoSize.CENTER);
         this.mihumysi.x=Syhu.WIDTH/2;
         this.mihumysi.y=_loc4_*Syhu.HEIGHT;
         this.qujok.addChild(this.mihumysi);
         this.cik.addChild(this.qujok);
         if(this.qujok.height>400)
         {
            this.cunahide=new Tira(16,400);
            this.cunahide.x=800-this.cunahide.width-4;
            this.cunahide.y=104;
            this.cunahide.jyqecubi(400,this.qujok.height);
            this.cunahide.addEventListener(Event.CHANGE,this.qugar);
            addChild(this.cunahide);
         }
         return;
      }

      private function qugar(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qujok.y=-this.cunahide.cimubito()*(this.qujok.height-400);
         return;
      }
   }

}