package kyhela
{
   import flash.display.Sprite;
   import gokyc.Rud;
   import hivysif.Guzowoja;
   import com.company.ui.Vovoj;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.GuildUtil;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import flash.events.Event;
   import sijizoh.Duq;
   import pugem.Account;
   import com.company.util.Bycaqa;


   public class GuildPlayerList extends Sprite
   {
      public function GuildPlayerList(param1:int, param2:int, param3:String="", param4:int=0) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super();
         this.vycyciz=param1;
         this.jidade=param2;
         this.fekovat=param3;
         this.vufe=param4;
         this.wisaqorow=new Guzowoja().setSize(22).setColor(11776947);
         this.wisaqorow.setBold(true);
         this.wisaqorow.setStringBuilder(new Kybidu().setParams(Vibemod.rasih));
         this.wisaqorow.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.wisaqorow.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.wisaqorow.x=800/2;
         this.wisaqorow.y=550;
         addChild(this.wisaqorow);
         var _loc5_:Account = Duq.pamazo().getInstance(Account);
         var _loc6_:Object = 
            {
               num:param1,
               offset:param2
            }
         ;
         Bycaqa.timokujo(_loc6_,_loc5_.pedavitu());
         this.put=Duq.pamazo().getInstance(Rud);
         this.put.kesanij(2);
         this.put.complete.addOnce(this.onComplete);
         this.put.sendRequest("/guild/listMembers",_loc6_);
         return;
      }

      private var vycyciz:int;

      private var jidade:int;

      private var fekovat:String;

      private var vufe:int;

      private var put:Rud;

      private var wisaqorow:Guzowoja;

      private var tob:Vovoj;

      private var cituguteq:Vovoj;

      private var raleduwub:Bitmap;

      private var kirevu:Shape;

      private var duvupy:Sprite;

      private var zoziqohe:Sprite;

      private var cepaged:Guzowoja;

      private var wypyzeq:Gequrenaj;

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.tucubivar(param2);
         }
         else
         {
            this.jazig(param2);
         }
         return;
      }

      private function tucubivar(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.build(XML(param1));
         return;
      }

      private function jazig(param1:String) : void {
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
         var _loc9_:Zydawin = null;
         removeChild(this.wisaqorow);
         this.tob=new Vovoj(32,11776947,false,0,0);
         this.tob.setBold(true);
         this.tob.text=param1.@name;
         this.tob.jacuf();
         this.tob.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.tob.y=24;
         this.tob.x=stage.stageWidth/2-this.tob.width/2;
         addChild(this.tob);
         this.cituguteq=new Vovoj(22,16777215,false,0,0);
         this.cituguteq.text=param1.CurrentFame;
         this.cituguteq.jacuf();
         this.cituguteq.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.cituguteq.x=768-this.cituguteq.width;
         this.cituguteq.y=32/2-this.cituguteq.height/2;
         addChild(this.cituguteq);
         this.raleduwub=new Bitmap(GuildUtil.myzibowa(40));
         this.raleduwub.x=760;
         this.raleduwub.y=32/2-this.raleduwub.height/2;
         addChild(this.raleduwub);
         this.kirevu=new Shape();
         _loc2_=this.kirevu.graphics;
         _loc2_.clear();
         _loc2_.lineStyle(2,5526612);
         _loc2_.moveTo(0,100);
         _loc2_.lineTo(stage.stageWidth,100);
         _loc2_.lineStyle();
         addChild(this.kirevu);
         this.duvupy=new Sprite();
         this.duvupy.x=10;
         this.duvupy.y=110;
         var _loc3_:Shape = new Shape();
         _loc2_=_loc3_.graphics;
         _loc2_.beginFill(0);
         _loc2_.drawRect(0,0,Zydawin.WIDTH,430);
         _loc2_.endFill();
         this.duvupy.addChild(_loc3_);
         this.duvupy.mask=_loc3_;
         addChild(this.duvupy);
         this.zoziqohe=new Sprite();
         var _loc4_:* = 0;
         for each (_loc5_ in param1.Member)
         {
            _loc7_=this.fekovat==_loc5_.Name;
            _loc8_=_loc5_.Rank;
            _loc9_=new Zydawin(this.jidade+_loc4_+1,_loc5_.Name,_loc5_.Rank,_loc5_.Fame,_loc7_,this.vufe);
            _loc9_.y=_loc4_*Zydawin.HEIGHT;
            this.zoziqohe.addChild(_loc9_);
            _loc4_++;
         }
         _loc6_=GuildUtil.jaside-this.jidade+_loc4_;
         this.cepaged=new Guzowoja().setSize(22).setColor(11776947);
         this.cepaged.setStringBuilder(new Kybidu().setParams(Vibemod.wivubec,{openSlots:_loc6_}));
         this.cepaged.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.cepaged.setAutoSize(TextFieldAutoSize.CENTER);
         this.cepaged.x=Zydawin.WIDTH/2;
         this.cepaged.y=_loc4_*Zydawin.HEIGHT;
         this.zoziqohe.addChild(this.cepaged);
         this.duvupy.addChild(this.zoziqohe);
         if(this.zoziqohe.height>400)
         {
            this.wypyzeq=new Gequrenaj(16,400);
            this.wypyzeq.x=800-this.wypyzeq.width-4;
            this.wypyzeq.y=104;
            this.wypyzeq.vyhojig(400,this.zoziqohe.height);
            this.wypyzeq.addEventListener(Event.CHANGE,this.qorav);
            addChild(this.wypyzeq);
         }
         return;
      }

      private function qorav(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zoziqohe.y=-this.wypyzeq.devaqe()*(this.zoziqohe.height-400);
         return;
      }
   }

}