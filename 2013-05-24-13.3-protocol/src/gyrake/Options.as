package gyrake
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Zirewe;
   import nec.Sire;
   import nec.Nara;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.game.GameSprite;
   import sakugyt.Tiqigawul;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.system.Capabilities;
   import flash.events.KeyboardEvent;
   import com.company.util.Kiv;
   import flash.display.StageDisplayState;
   import vozireni.Sugibowel;
   import vozireni.Nenypeful;
   import movimet.Lufub;
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
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Lufub = null;
         var _loc5_:Jajegec = null;
         this.ven=new Vector.<Jajegec>();
         this.fiqanaw=new Vector.<Sprite>();
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
         _loc2_=new Lufub().setSize(36).setColor(16777215);
         _loc2_.setBold(true);
         _loc2_.setStringBuilder(new Sire().setParams(I18nKeys.gapapine));
         _loc2_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc2_.filters=[new DropShadowFilter(0,0,0)];
         _loc2_.x=800/2-_loc2_.width/2;
         _loc2_.y=8;
         addChild(_loc2_);
         addChild(new ScreenGraphic());
         this.hyky=new Tiqigawul(I18nKeys.qegejubol,36,false);
         this.hyky.setVerticalAlign(Lufub.MIDDLE);
         this.hyky.setAutoSize(TextFieldAutoSize.CENTER);
         this.hyky.addEventListener(MouseEvent.CLICK,this.dega);
         addChild(this.hyky);
         this.vukuruz=new Tiqigawul(I18nKeys.winek,22,false);
         this.vukuruz.setVerticalAlign(Lufub.MIDDLE);
         this.vukuruz.setAutoSize(TextFieldAutoSize.LEFT);
         this.vukuruz.addEventListener(MouseEvent.CLICK,this.syhi);
         addChild(this.vukuruz);
         this.bupir=new Tiqigawul(I18nKeys.nijihej,22,false);
         this.bupir.setVerticalAlign(Lufub.MIDDLE);
         this.bupir.setAutoSize(TextFieldAutoSize.RIGHT);
         this.bupir.addEventListener(MouseEvent.CLICK,this.vano);
         addChild(this.bupir);
         var _loc3_:* = 14;
         var _loc4_:* = 0;
         while(_loc4_<debogo.length)
         {
            _loc5_=new Jajegec(debogo[_loc4_]);
            _loc5_.x=_loc3_;
            _loc5_.y=70;
            addChild(_loc5_);
            _loc5_.addEventListener(MouseEvent.CLICK,this.tezovo);
            this.ven.push(_loc5_);
            _loc3_=_loc3_+108;
            _loc4_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const debogo:Vector.<String> = new Vector.<String>(5);

      public static const libago:int = 550;

      public static const lubot:String = "chatCommand";

      public static const fake:String = "chat";

      public static const syvyr:String = "tell";

      public static const jer:String = "guildChat";

      public static const razev:String = "scrollChatUp";

      public static const sik:String = "scrollChatDown";

      private static function sudyginyr() : Wege {
         return new Wege("contextualPotionBuy",rono(),[true,false],I18nKeys.reva,I18nKeys.maji,null);
      }

      private static function rono() : Vector.<Zirewe> {
         new Vector.<Zirewe>(2)[0]=mupateje(I18nKeys.dykacef);
         new Vector.<Zirewe>(2)[1]=mupateje(I18nKeys.bilywyv);
         return new Vector.<Zirewe>(2);
      }

      private static function mupateje(param1:String) : Sire {
         return new Sire().setParams(param1);
      }

      private static function hanub() : Wege {
         return new Wege("clickForGold",rono(),[true,false],I18nKeys.dupuruci,I18nKeys.fajino,null);
      }

      private static function nutocug() : Wege {
         return new Wege("contextualClick",rono(),[true,false],I18nKeys.siborekap,I18nKeys.bivymyzyq,null);
      }

      private static function zojohifuj() : Vector.<Zirewe> {
         new Vector.<Zirewe>(2)[0]=new Nara("45°");
         new Vector.<Zirewe>(2)[1]=new Nara("0°");
         return new Vector.<Zirewe>(2);
      }

      private static function huha() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         UserConfig.data_.cameraAngle=UserConfig.data_.defaultCameraAngle;
         UserConfig.save();
         return;
      }

      private var gs_:GameSprite;

      private var hyky:Tiqigawul;

      private var vukuruz:Tiqigawul;

      private var bupir:Tiqigawul;

      private var ven:Vector.<Jajegec>;

      private var selected_:Jajegec = null;

      private var fiqanaw:Vector.<Sprite>;

      private function dega(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close();
         return;
      }

      private function syhi(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Games = null;
         var _loc2_:* = 0;
         while(_loc2_<this.fiqanaw.length)
         {
            _loc3_=this.fiqanaw[_loc2_] as Games;
            if(_loc3_==null)
            {
            }
            else
            {
               delete UserConfig.data_[[_loc3_.ruhunydyw]];
            }
            _loc2_++;
         }
         UserConfig.cewi();
         UserConfig.save();
         this.refresh();
         return;
      }

      private function vano(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close();
         this.gs_.closed.dispatch();
         return;
      }

      private function tezovo(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Jajegec = param1.currentTarget as Jajegec;
         this.setSelected(_loc2_);
         return;
      }

      private function setSelected(param1:Jajegec) : void {
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
         this.lys();
         switch(this.selected_.text_)
         {
            case I18nKeys.biqohyhew:
               this.tohy();
               break;
            case I18nKeys.fig:
               this.raliz();
               break;
            case I18nKeys.kota:
               this.nazosupo();
               break;
            case I18nKeys.noj:
               this.lajekida();
               break;
            case I18nKeys.quh:
               this.hetyke();
               break;
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyky.x=stage.stageWidth/2;
         this.hyky.y=libago;
         this.vukuruz.x=20;
         this.vukuruz.y=libago;
         this.bupir.x=stage.stageWidth-20;
         this.bupir.y=libago;
         if(Capabilities.playerType=="Desktop")
         {
            UserConfig.data_.fullscreenMode=stage.displayState=="fullScreenInteractive";
            UserConfig.save();
         }
         this.setSelected(this.ven[0]);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis,false,1);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.seqedu,false,1);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis,false);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.seqedu,false);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(Capabilities.playerType=="Desktop"&&param1.keyCode==Kiv.ESCAPE)
         {
            UserConfig.data_.fullscreenMode=false;
            UserConfig.save();
            this.refresh();
         }
         if(param1.keyCode==UserConfig.data_.options)
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

      private function seqedu(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         return;
      }

      private function lys() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Sprite = null;
         for each (_loc1_ in this.fiqanaw)
         {
            removeChild(_loc1_);
         }
         this.fiqanaw.length=0;
         return;
      }

      private function tohy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hufipysi(new Heceka("moveUp",I18nKeys.famyraqo,I18nKeys.jele));
         this.hufipysi(new Heceka("moveLeft",I18nKeys.mynu,I18nKeys.cafopah));
         this.hufipysi(new Heceka("moveDown",I18nKeys.rikomopa,I18nKeys.zamasy));
         this.hufipysi(new Heceka("moveRight",I18nKeys.babejuco,I18nKeys.luw));
         this.hufipysi(this.sagifem());
         this.hufipysi(new Debora());
         this.hufipysi(new Heceka("rotateLeft",I18nKeys.jopeli,I18nKeys.futiby,!UserConfig.data_.allowRotation));
         this.hufipysi(new Heceka("rotateRight",I18nKeys.pudavykiv,I18nKeys.koqufekyd,!UserConfig.data_.allowRotation));
         this.hufipysi(new Heceka("useSpecial",I18nKeys.miwymevok,I18nKeys.qezuzyjij));
         this.hufipysi(new Heceka("autofireToggle",I18nKeys.juvysujed,I18nKeys.qyri));
         this.hufipysi(new Heceka("resetToDefaultCameraAngle",I18nKeys.sunosi,I18nKeys.zyc));
         this.hufipysi(new Heceka("togglePerformanceStats",I18nKeys.dugeqo,I18nKeys.vuqafisic));
         this.hufipysi(new Heceka("toggleCentering",I18nKeys.cuguqah,I18nKeys.kugony));
         this.hufipysi(new Heceka("interact",I18nKeys.foriw,I18nKeys.kanakyguw));
         this.hufipysi(nutocug());
         this.hufipysi(hanub());
         this.hufipysi(sudyginyr());
         return;
      }

      private function sagifem() : Wege {
         return new Wege("allowRotation",rono(),[true,false],I18nKeys.jimupoz,I18nKeys.qubize,this.cucesiruc);
      }

      private function cucesiruc() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Heceka = null;
         var _loc1_:* = 0;
         while(_loc1_<this.fiqanaw.length)
         {
            _loc2_=this.fiqanaw[_loc1_] as Heceka;
            if(_loc2_==null)
            {
            }
            else
            {
               if(_loc2_.ruhunydyw=="rotateLeft"||_loc2_.ruhunydyw=="rotateRight")
               {
                  _loc2_.tyreqar(!UserConfig.data_.allowRotation);
               }
            }
            _loc1_++;
         }
         return;
      }

      private function raliz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hufipysi(new Heceka("useHealthPotion",I18nKeys.dafotyd,I18nKeys.rawih));
         this.hufipysi(new Heceka("useMagicPotion",I18nKeys.lir,I18nKeys.kyle));
         this.fyqo();
         this.hufipysi(new Heceka("miniMapZoomIn",I18nKeys.fufihaw,I18nKeys.wycow));
         this.hufipysi(new Heceka("miniMapZoomOut",I18nKeys.sare,I18nKeys.vazi));
         this.hufipysi(new Heceka("escapeToNexus",I18nKeys.kyvepo,I18nKeys.zyqeqac));
         this.hufipysi(new Heceka("options",I18nKeys.voz,I18nKeys.henab));
         this.kyron();
         if(this.fodu())
         {
            this.hufipysi(new Heceka("toggleFullscreen",I18nKeys.qipyraqa,I18nKeys.bik));
         }
         return;
      }

      public function fodu() : Boolean {
         return Capabilities.playerType=="Desktop";
      }

      public function kyron() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = Capabilities.os.split(" ")[0]=="Mac"?"Command":"Ctrl";
         var _loc2_:Wege = new Wege("inventorySwap",rono(),[true,false],I18nKeys.luguhyto,"",null);
         _loc2_.jagirozaj(new Sire().setParams(I18nKeys.mivy,{key:_loc1_}));
         this.hufipysi(_loc2_);
         return;
      }

      public function fyqo() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Heceka = null;
         var _loc1_:* = 1;
         while(_loc1_<=8)
         {
            _loc2_=new Heceka("useInvSlot"+_loc1_,"","");
            _loc2_.gyjovy(new Sire().setParams(I18nKeys.nafepot,{n:_loc1_}));
            _loc2_.jagirozaj(new Sire().setParams(I18nKeys.mokoref,{n:_loc1_}));
            this.hufipysi(_loc2_);
            _loc1_++;
         }
         return;
      }

      private function nazosupo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hufipysi(new Heceka(fake,I18nKeys.voda,I18nKeys.nirubo));
         this.hufipysi(new Heceka(lubot,I18nKeys.hopajicop,I18nKeys.bykimat));
         this.hufipysi(new Heceka(syvyr,I18nKeys.sizicu,I18nKeys.tyb));
         this.hufipysi(new Heceka(jer,I18nKeys.wec,I18nKeys.soc));
         this.hufipysi(new Wege("filterLanguage",rono(),[true,false],I18nKeys.nykaro,I18nKeys.pol,null));
         this.hufipysi(new Heceka(razev,I18nKeys.merokevu,I18nKeys.pakeli));
         this.hufipysi(new Heceka(sik,I18nKeys.tel,I18nKeys.jec));
         this.hufipysi(new Wege("forceChatQuality",rono(),[true,false],I18nKeys.doko,I18nKeys.quwywo,null));
         this.hufipysi(new Wege("hidePlayerChat",rono(),[true,false],I18nKeys.pokyvizyv,I18nKeys.miwiwugyf,null));
         return;
      }

      private function lajekida() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hufipysi(new Wege("defaultCameraAngle",zojohifuj(),[7*Math.PI/4,0],I18nKeys.muzehegu,I18nKeys.gicyzeran,huha));
         this.hufipysi(new Wege("centerOnPlayer",rono(),[true,false],I18nKeys.vapopa,I18nKeys.gofehi,null));
         this.hufipysi(new Wege("showQuestPortraits",rono(),[true,false],I18nKeys.puhohohyp,I18nKeys.kip,this.hupysure));
         this.hufipysi(new Wege("showProtips",rono(),[true,false],I18nKeys.zymahyze,I18nKeys.johyjomuk,null));
         this.hufipysi(new Wege("drawShadows",rono(),[true,false],I18nKeys.dequcot,I18nKeys.vetef,null));
         this.hufipysi(new Wege("textBubbles",rono(),[true,false],I18nKeys.wiwag,I18nKeys.nukowuc,null));
         this.hufipysi(new Wege("showTradePopup",rono(),[true,false],I18nKeys.diw,I18nKeys.dopu,null));
         this.hufipysi(new Wege("showGuildInvitePopup",rono(),[true,false],I18nKeys.qutyti,I18nKeys.quf,null));
         if(Capabilities.playerType=="Desktop")
         {
            this.hufipysi(new Wege("fullscreenMode",rono(),[true,false],I18nKeys.husi,I18nKeys.tycicywe,this.wumy));
         }
         return;
      }

      private function hupysure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(this.gs_==null)&&!(this.gs_.map==null)&&!(this.gs_.map.partyOverlay_==null)&&!(this.gs_.map.partyOverlay_.questArrow_==null))
         {
            this.gs_.map.partyOverlay_.questArrow_.refreshToolTip();
         }
         return;
      }

      private function wumy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         stage.displayState=UserConfig.data_.fullscreenMode?"fullScreenInteractive":StageDisplayState.NORMAL;
         return;
      }

      private function hetyke() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hufipysi(new Wege("playMusic",rono(),[true,false],I18nKeys.nefav,I18nKeys.ketynaf,this.sano));
         this.hufipysi(new Debora());
         this.hufipysi(new Wege("playSFX",rono(),[true,false],I18nKeys.hihydar,I18nKeys.focumo,this.negudojy));
         this.hufipysi(new Debora());
         this.hufipysi(new Wege("playPewPew",rono(),[true,false],I18nKeys.milepet,I18nKeys.pemojel,null));
         return;
      }

      private function sano() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Sugibowel.nazykep(UserConfig.data_.playMusic);
         return;
      }

      private function negudojy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Nenypeful.rykozad(UserConfig.data_.playSFX);
         return;
      }

      private function hufipysi(param1:Vaq) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var positionOption:Function = null;
         var option:Vaq = param1;
         positionOption=new function():void
         {
            option.x=fiqanaw.length%2==0?20:415;
            option.y=int(fiqanaw.length/2)*44+122;
            return;
         };
         option.textChanged.addOnce(positionOption);
         this.zusuwe(option);
         return;
      }

      private function zusuwe(param1:Vaq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         param1.addEventListener(Event.CHANGE,this.kosu);
         this.fiqanaw.push(param1);
         return;
      }

      private function kosu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.refresh();
         return;
      }

      private function refresh() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Games = null;
         var _loc1_:* = 0;
         while(_loc1_<this.fiqanaw.length)
         {
            _loc2_=this.fiqanaw[_loc1_] as Games;
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

}