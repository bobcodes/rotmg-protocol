package cycygaj
{
[CLASS1071]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import haqakel.Kefyfa;
   import totuhare.Qebar;
   import totuhare.Zufi;
   import totuhare.Javo;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.GameSprite;
   import qilarag.Boqurot;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.system.Capabilities;
   import flash.events.KeyboardEvent;
   import com.company.util.Sojef;
   import flash.display.StageDisplayState;
   import gawulu.Mude;
   import gawulu.Jel;
   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Options extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Options(param1:GameSprite) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Capitu = null;
         var _loc5_:Jawivy = null;
         this.qupamyzuh=new Vector.<Jawivy>();
         this.zum=new Vector.<Sprite>();
         super();
         this.gs_=param1;
         graphics.clear();
         graphics.beginFill(2829099,0.8);
         graphics.drawRect(0,0,800,600);
         graphics.endFill();
         graphics.lineStyle(1,6184542);
         graphics.moveTo(0,100);
         graphics.lineTo(800,100);
         graphics.lineStyle();
         _loc2_=new Capitu().setSize(36).setColor(16777215);
         _loc2_.setBold(true);
         _loc2_.setStringBuilder(new Zufi().setParams(Kefyfa.pat));
         _loc2_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc2_.filters=[new DropShadowFilter(0,0,0)];
         _loc2_.x=800/2-_loc2_.width/2;
         _loc2_.y=8;
         addChild(_loc2_);
         addChild(new ScreenGraphic());
         this.suwy=new Boqurot(Kefyfa.kigu,36,false);
         this.suwy.setVerticalAlign(Capitu.MIDDLE);
         this.suwy.setAutoSize(TextFieldAutoSize.CENTER);
         this.suwy.addEventListener(MouseEvent.CLICK,this.guwyzovac);
         addChild(this.suwy);
         this.julobazim=new Boqurot(Kefyfa.nibypo,22,false);
         this.julobazim.setVerticalAlign(Capitu.MIDDLE);
         this.julobazim.setAutoSize(TextFieldAutoSize.LEFT);
         this.julobazim.addEventListener(MouseEvent.CLICK,this.zesupycu);
         addChild(this.julobazim);
         this.biky=new Boqurot(Kefyfa.gesaqary,22,false);
         this.biky.setVerticalAlign(Capitu.MIDDLE);
         this.biky.setAutoSize(TextFieldAutoSize.RIGHT);
         this.biky.addEventListener(MouseEvent.CLICK,this.zywykanyd);
         addChild(this.biky);
         var _loc3_:* = 14;
         var _loc4_:* = 0;
         while(_loc4_<dudi.length)
         {
            _loc5_=new Jawivy(dudi[_loc4_]);
            _loc5_.x=_loc3_;
            _loc5_.y=70;
            addChild(_loc5_);
            _loc5_.addEventListener(MouseEvent.CLICK,this.lepujar);
            this.qupamyzuh.push(_loc5_);
            _loc3_=_loc3_+108;
            _loc4_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const dudi:Vector.<String> = new Vector.<String>(5);

      public static const tajure:int = 550;

      public static const natywabi:String = "chatCommand";

      public static const patewomi:String = "chat";

      public static const banoq:String = "tell";

      public static const caqefaq:String = "guildChat";

      public static const zycev:String = "scrollChatUp";

      public static const roqepag:String = "scrollChatDown";

      private static function raham() : Sycic {
         return new Sycic("contextualPotionBuy",rovutapa(),[true,false],Kefyfa.hizosyv,Kefyfa.pajali,null);
      }

      private static function rovutapa() : Vector.<Qebar> {
         new Vector.<Qebar>(2)[0]=fuzarak(Kefyfa.baza);
         new Vector.<Qebar>(2)[1]=fuzarak(Kefyfa.miqatove);
         return new Vector.<Qebar>(2);
      }

      private static function fuzarak(param1:String) : Zufi {
         return new Zufi().setParams(param1);
      }

      private static function hanykitof() : Sycic {
         return new Sycic("clickForGold",rovutapa(),[true,false],Kefyfa.buva,Kefyfa.dynovok,null);
      }

      private static function jafy() : Sycic {
         return new Sycic("contextualClick",rovutapa(),[true,false],Kefyfa.poqibo,Kefyfa.cijiqo,null);
      }

      private static function tupy() : Vector.<Qebar> {
         new Vector.<Qebar>(2)[0]=new Javo("45°");
         new Vector.<Qebar>(2)[1]=new Javo("0°");
         return new Vector.<Qebar>(2);
      }

      private static function faqusig() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Parameters.data_.cameraAngle=Parameters.data_.defaultCameraAngle;
         Parameters.save();
         return;
      }

      private var gs_:GameSprite;

      private var suwy:Boqurot;

      private var julobazim:Boqurot;

      private var biky:Boqurot;

      private var qupamyzuh:Vector.<Jawivy>;

      private var selected_:Jawivy = null;

      private var zum:Vector.<Sprite>;

      private function guwyzovac(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close();
         return;
      }

      private function zesupycu(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Kujofy = null;
         var _loc2_:* = 0;
         while(_loc2_<this.zum.length)
         {
            _loc3_=this.zum[_loc2_] as Kujofy;
            if(_loc3_==null)
            {
            }
            else
            {
               delete Parameters.data_[[_loc3_.zesiwutir]];
            }
            _loc2_++;
         }
         Parameters.letewizi();
         Parameters.save();
         this.refresh();
         return;
      }

      private function zywykanyd(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close();
         this.gs_.closed.dispatch();
         return;
      }

      private function lepujar(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Jawivy = param1.currentTarget as Jawivy;
         this.setSelected(_loc2_);
         return;
      }

      private function setSelected(param1:Jawivy) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.selected_)
         {
            return;
         }
         if(this.selected_!=null)
         {
            this.selected_.setSelected(false);
         }
         this.selected_=param1;
         this.selected_.setSelected(true);
         this.towiqe();
         switch(this.selected_.text_)
         {
            case Kefyfa.fynuzy:
               this.dizevaq();
               break;
            case Kefyfa.fovenyrub:
               this.kameze();
               break;
            case Kefyfa.cumemy:
               this.vymyre();
               break;
            case Kefyfa.hur:
               this.diq();
               break;
            case Kefyfa.liceniwob:
               this.bajeqami();
               break;
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.suwy.x=stage.stageWidth/2;
         this.suwy.y=tajure;
         this.julobazim.x=20;
         this.julobazim.y=tajure;
         this.biky.x=stage.stageWidth-20;
         this.biky.y=tajure;
         if(Capabilities.playerType=="Desktop")
         {
            Parameters.data_.fullscreenMode=stage.displayState=="fullScreenInteractive";
            Parameters.save();
         }
         this.setSelected(this.qupamyzuh[0]);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja,false,1);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih,false,1);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja,false);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih,false);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(Capabilities.playerType=="Desktop"&&param1.keyCode==Sojef.ESCAPE)
         {
            Parameters.data_.fullscreenMode=false;
            Parameters.save();
            this.refresh();
         }
         if(param1.keyCode==Parameters.data_.options)
         {
            this.close();
         }
         param1.stopImmediatePropagation();
         return;
      }

      private function close() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         stage.focus=null;
         parent.removeChild(this);
         return;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         return;
      }

      private function towiqe() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Sprite = null;
         for each (_loc1_ in this.zum)
         {
            removeChild(_loc1_);
         }
         this.zum.length=0;
         return;
      }

      private function dizevaq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zenyrejo(new Puha("moveUp",Kefyfa.kovosako,Kefyfa.hezadep));
         this.zenyrejo(new Puha("moveLeft",Kefyfa.ladupa,Kefyfa.cidet));
         this.zenyrejo(new Puha("moveDown",Kefyfa.finoduwa,Kefyfa.jirev));
         this.zenyrejo(new Puha("moveRight",Kefyfa.wobotyj,Kefyfa.honijavy));
         this.zenyrejo(this.hafe());
         this.zenyrejo(new Robi());
         this.zenyrejo(new Puha("rotateLeft",Kefyfa.zomujobyk,Kefyfa.wutyj,!Parameters.data_.allowRotation));
         this.zenyrejo(new Puha("rotateRight",Kefyfa.dej,Kefyfa.lereb,!Parameters.data_.allowRotation));
         this.zenyrejo(new Puha("useSpecial",Kefyfa.hykuli,Kefyfa.pesudima));
         this.zenyrejo(new Puha("autofireToggle",Kefyfa.kusavozuz,Kefyfa.jecipifo));
         this.zenyrejo(new Puha("resetToDefaultCameraAngle",Kefyfa.sucis,Kefyfa.dusyv));
         this.zenyrejo(new Puha("togglePerformanceStats",Kefyfa.duz,Kefyfa.nap));
         this.zenyrejo(new Puha("toggleCentering",Kefyfa.maqusove,Kefyfa.nyf));
         this.zenyrejo(new Puha("interact",Kefyfa.taduni,Kefyfa.caluripy));
         this.zenyrejo(jafy());
         this.zenyrejo(hanykitof());
         this.zenyrejo(raham());
         return;
      }

      private function hafe() : Sycic {
         return new Sycic("allowRotation",rovutapa(),[true,false],Kefyfa.wyj,Kefyfa.pumydi,this.vafomufev);
      }

      private function vafomufev() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Puha = null;
         var _loc1_:* = 0;
         while(_loc1_<this.zum.length)
         {
            _loc2_=this.zum[_loc1_] as Puha;
            if(_loc2_==null)
            {
            }
            else
            {
               if(_loc2_.zesiwutir=="rotateLeft"||_loc2_.zesiwutir=="rotateRight")
               {
                  _loc2_.pyjeluke(!Parameters.data_.allowRotation);
               }
            }
            _loc1_++;
         }
         return;
      }

      private function kameze() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zenyrejo(new Puha("useHealthPotion",Kefyfa.tit,Kefyfa.fig));
         this.zenyrejo(new Puha("useMagicPotion",Kefyfa.pojakypa,Kefyfa.myjopap));
         this.tawiz();
         this.zenyrejo(new Puha("miniMapZoomIn",Kefyfa.wofeser,Kefyfa.vidugol));
         this.zenyrejo(new Puha("miniMapZoomOut",Kefyfa.waqimed,Kefyfa.busicymu));
         this.zenyrejo(new Puha("escapeToNexus",Kefyfa.duzabe,Kefyfa.rajafan));
         this.zenyrejo(new Puha("options",Kefyfa.heqabic,Kefyfa.gyd));
         this.sujemofyk();
         if(this.fodeqa())
         {
            this.zenyrejo(new Puha("toggleFullscreen",Kefyfa.hewamehir,Kefyfa.pywo));
         }
         return;
      }

      public function fodeqa() : Boolean {
         return Capabilities.playerType=="Desktop";
      }

      public function sujemofyk() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = Capabilities.os.split(" ")[0]=="Mac"?"Command":"Ctrl";
         var _loc2_:Sycic = new Sycic("inventorySwap",rovutapa(),[true,false],Kefyfa.tedi,"",null);
         _loc2_.wilezefus(new Zufi().setParams(Kefyfa.jube,{key:_loc1_}));
         this.zenyrejo(_loc2_);
         return;
      }

      public function tawiz() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Puha = null;
         var _loc1_:* = 1;
         while(_loc1_<=8)
         {
            _loc2_=new Puha("useInvSlot"+_loc1_,"","");
            _loc2_.deqehy(new Zufi().setParams(Kefyfa.tawo,{n:_loc1_}));
            _loc2_.wilezefus(new Zufi().setParams(Kefyfa.bum,{n:_loc1_}));
            this.zenyrejo(_loc2_);
            _loc1_++;
         }
         return;
      }

      private function vymyre() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zenyrejo(new Puha(patewomi,Kefyfa.syhoger,Kefyfa.noli));
         this.zenyrejo(new Puha(natywabi,Kefyfa.horig,Kefyfa.pede));
         this.zenyrejo(new Puha(banoq,Kefyfa.myvakegur,Kefyfa.qokuj));
         this.zenyrejo(new Puha(caqefaq,Kefyfa.janety,Kefyfa.tofylo));
         this.zenyrejo(new Sycic("filterLanguage",rovutapa(),[true,false],Kefyfa.zakuj,Kefyfa.caza,null));
         this.zenyrejo(new Puha(zycev,Kefyfa.lyhoror,Kefyfa.niboso));
         this.zenyrejo(new Puha(roqepag,Kefyfa.butuqu,Kefyfa.juze));
         this.zenyrejo(new Sycic("forceChatQuality",rovutapa(),[true,false],Kefyfa.rymyz,Kefyfa.fijivolyl,null));
         this.zenyrejo(new Sycic("hidePlayerChat",rovutapa(),[true,false],Kefyfa.tubin,Kefyfa.vutevefyt,null));
         return;
      }

      private function diq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zenyrejo(new Sycic("defaultCameraAngle",tupy(),[7*Math.PI/4,0],Kefyfa.norogu,Kefyfa.losuvosuk,faqusig));
         this.zenyrejo(new Sycic("centerOnPlayer",rovutapa(),[true,false],Kefyfa.guhavize,Kefyfa.gidediqi,null));
         this.zenyrejo(new Sycic("showQuestPortraits",rovutapa(),[true,false],Kefyfa.nilavu,Kefyfa.jiwy,this.cusenyjo));
         this.zenyrejo(new Sycic("showProtips",rovutapa(),[true,false],Kefyfa.tykarofu,Kefyfa.dovadel,null));
         this.zenyrejo(new Sycic("drawShadows",rovutapa(),[true,false],Kefyfa.vuwalev,Kefyfa.mypynomy,null));
         this.zenyrejo(new Sycic("textBubbles",rovutapa(),[true,false],Kefyfa.jam,Kefyfa.vegubefa,null));
         this.zenyrejo(new Sycic("showTradePopup",rovutapa(),[true,false],Kefyfa.tedehe,Kefyfa.hotu,null));
         this.zenyrejo(new Sycic("showGuildInvitePopup",rovutapa(),[true,false],Kefyfa.wyjeh,Kefyfa.razip,null));
         if(Capabilities.playerType=="Desktop")
         {
            this.zenyrejo(new Sycic("fullscreenMode",rovutapa(),[true,false],Kefyfa.pyfin,Kefyfa.linifa,this.wusas));
         }
         return;
      }

      private function cusenyjo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(this.gs_==null)&&!(this.gs_.map==null)&&!(this.gs_.map.partyOverlay_==null)&&!(this.gs_.map.partyOverlay_.questArrow_==null))
         {
            this.gs_.map.partyOverlay_.questArrow_.refreshToolTip();
         }
         return;
      }

      private function wusas() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         stage.displayState=Parameters.data_.fullscreenMode?"fullScreenInteractive":StageDisplayState.NORMAL;
         return;
      }

      private function bajeqami() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zenyrejo(new Sycic("playMusic",rovutapa(),[true,false],Kefyfa.pozume,Kefyfa.lumypydas,this.colif));
         this.zenyrejo(new Robi());
         this.zenyrejo(new Sycic("playSFX",rovutapa(),[true,false],Kefyfa.mobomuso,Kefyfa.rojer,this.buqigum));
         this.zenyrejo(new Robi());
         this.zenyrejo(new Sycic("playPewPew",rovutapa(),[true,false],Kefyfa.cyvum,Kefyfa.bepyn,null));
         return;
      }

      private function colif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Mude.guwat(Parameters.data_.playMusic);
         return;
      }

      private function buqigum() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Jel.turip(Parameters.data_.playSFX);
         return;
      }

      private function zenyrejo(param1:Kihuvu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var positionOption:Function = null;
         var option:Kihuvu = param1;
         positionOption=new function():void
         {
            option.x=zum.length%2==0?20:415;
            option.y=int(zum.length/2)*44+122;
            return;
         };
         option.textChanged.addOnce(positionOption);
         this.sesir(option);
         return;
      }

      private function sesir(param1:Kihuvu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         param1.addEventListener(Event.CHANGE,this.sunanah);
         this.zum.push(param1);
         return;
      }

      private function sunanah(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.refresh();
         return;
      }

      private function refresh() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Kujofy = null;
         var _loc1_:* = 0;
         while(_loc1_<this.zum.length)
         {
            _loc2_=this.zum[_loc1_] as Kujofy;
            if(_loc2_==null)
            {
            }
            else
            {
               _loc2_.refresh();
            }
            _loc1_++;
         }
         return;
      }
   }
[/CLASS]
}