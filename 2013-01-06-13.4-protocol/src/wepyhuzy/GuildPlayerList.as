package wepyhuzy
{
[CLASS1889]   import flash.display.Sprite;
   import qiwyz.Bozakehy;
   import pudev.Capitu;
   import com.company.ui.Remyl;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Gogo;
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.GuildUtil;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.events.Event;
   import jutesesel.Qibigagal;
   import leselo.Account;
   import com.company.util.Vokekizac;


   public class GuildPlayerList extends Sprite
   {
      public function GuildPlayerList(param1:int, param2:int, param3:String="", param4:int=0) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.koha=param1;
         this.bot=param2;
         this.dubavizuj=param3;
         this.dyjijudy=param4;
         this.ryhuk=new Capitu().setSize(22).setColor(11776947);
         this.ryhuk.setBold(true);
         this.ryhuk.setStringBuilder(new Zufi().setParams(Kefyfa.kotuq));
         this.ryhuk.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.ryhuk.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.ryhuk.x=800/2;
         this.ryhuk.y=550;
         addChild(this.ryhuk);
         var _loc5_:Account = Qibigagal.husuha().getInstance(Account);
         var _loc6_:Object = 
            {
               num:param1,
               offset:param2
            }
         ;
         Vokekizac.jugajoj(_loc6_,_loc5_.dera());
         this.zihijy=Qibigagal.husuha().getInstance(Bozakehy);
         this.zihijy.casegyma(2);
         this.zihijy.complete.addOnce(this.onComplete);
         this.zihijy.sendRequest("/guild/listMembers",_loc6_);
         return;
      }

      private var koha:int;

      private var bot:int;

      private var dubavizuj:String;

      private var dyjijudy:int;

      private var zihijy:Bozakehy;

      private var ryhuk:Capitu;

      private var danypifev:Remyl;

      private var gugefusef:Remyl;

      private var gupazy:Bitmap;

      private var kuvyn:Shape;

      private var cevuqyqy:Sprite;

      private var reqegami:Sprite;

      private var wygazevud:Capitu;

      private var ras:Gogo;

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.pahidoko(param2);
         }
         else
         {
            this.qunanel(param2);
         }
         return;
      }

      private function pahidoko(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.build(XML(param1));
         return;
      }

      private function qunanel(param1:String) : void {
         return;
      }

      private function build(param1:XML) : void {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc2_:Graphics = null;
         var _loc5_:XML = null;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:Hicopis = null;
         removeChild(this.ryhuk);
         this.danypifev=new Remyl(32,11776947,false,0,0);
         this.danypifev.setBold(true);
         this.danypifev.text=param1.@name;
         this.danypifev.qovy();
         this.danypifev.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.danypifev.y=24;
         this.danypifev.x=stage.stageWidth/2-this.danypifev.width/2;
         addChild(this.danypifev);
         this.gugefusef=new Remyl(22,16777215,false,0,0);
         this.gugefusef.text=param1.CurrentFame;
         this.gugefusef.qovy();
         this.gugefusef.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.gugefusef.x=768-this.gugefusef.width;
         this.gugefusef.y=32/2-this.gugefusef.height/2;
         addChild(this.gugefusef);
         this.gupazy=new Bitmap(GuildUtil.tuciquci(40));
         this.gupazy.x=760;
         this.gupazy.y=32/2-this.gupazy.height/2;
         addChild(this.gupazy);
         this.kuvyn=new Shape();
         _loc2_=this.kuvyn.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(2,5526612);
         _loc2_.moveTo(0,100);
         _loc2_.lineTo(stage.stageWidth,100);
         _loc2_.lineStyle();
         addChild(this.kuvyn);
         this.cevuqyqy=new Sprite();
         this.cevuqyqy.x=10;
         this.cevuqyqy.y=110;
         var _loc3_:Shape = new Shape();
         _loc2_=_loc3_.graphics;
         _loc2_.beginFill(0);
         _loc2_.drawRect(0,0,Hicopis.WIDTH,430);
         _loc2_.endFill();
         this.cevuqyqy.addChild(_loc3_);
         this.cevuqyqy.mask=_loc3_;
         addChild(this.cevuqyqy);
         this.reqegami=new Sprite();
         var _loc4_:* = 0;
         for each (_loc5_ in param1.Member)
         {
            _loc7_=this.dubavizuj==_loc5_.Name;
            _loc8_=_loc5_.Rank;
            _loc9_=new Hicopis(this.bot+_loc4_+1,_loc5_.Name,_loc5_.Rank,_loc5_.Fame,_loc7_,this.dyjijudy);
            _loc9_.y=_loc4_*Hicopis.HEIGHT;
            this.reqegami.addChild(_loc9_);
            _loc4_++;
         }
         _loc6_=GuildUtil.myvuleh-this.bot+_loc4_;
         this.wygazevud=new Capitu().setSize(22).setColor(11776947);
         this.wygazevud.setStringBuilder(new Zufi().setParams(Kefyfa.vysaqeto,{openSlots:_loc6_}));
         this.wygazevud.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.wygazevud.setAutoSize(TextFieldAutoSize.CENTER);
         this.wygazevud.x=Hicopis.WIDTH/2;
         this.wygazevud.y=_loc4_*Hicopis.HEIGHT;
         this.reqegami.addChild(this.wygazevud);
         this.cevuqyqy.addChild(this.reqegami);
         if(this.reqegami.height>400)
         {
            this.ras=new Gogo(16,400);
            this.ras.x=800-this.ras.width-4;
            this.ras.y=104;
            this.ras.jewojomyb(400,this.reqegami.height);
            this.ras.addEventListener(Event.CHANGE,this.requgo);
            addChild(this.ras);
         }
         return;
      }

      private function requgo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.reqegami.y=-this.ras.repofav()*(this.reqegami.height-400);
         return;
      }
   }
[/CLASS]
}