package loradaby
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import komi.Vibemod;
   import jediwip.Tunyhazo;
   import jediwip.Kybidu;
   import jediwip.Vofezuzy;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.game.GameSprite;
   import waryp.Nulejufyl;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.system.Capabilities;
   import flash.events.KeyboardEvent;
   import com.company.util.Coluf;
   import flash.display.StageDisplayState;
   import dorepoji.Zywytezof;
   import dorepoji.Mobu;
   import hivysif.Guzowoja;
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
         var _loc2_:Guzowoja = null;
         var _loc5_:Pydac = null;
         this.poha=new Vector.<Pydac>();
         this.lydusero=new Vector.<Sprite>();
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
         _loc2_=new Guzowoja().setSize(36).setColor(16777215);
         _loc2_.setBold(true);
         _loc2_.setStringBuilder(new Kybidu().setParams(Vibemod.ruwevoqaf));
         _loc2_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc2_.filters=[new DropShadowFilter(0,0,0)];
         _loc2_.x=800/2-_loc2_.width/2;
         _loc2_.y=8;
         addChild(_loc2_);
         addChild(new ScreenGraphic());
         this.jehele=new Nulejufyl(Vibemod.cacuta,36,false);
         this.jehele.setVerticalAlign(Guzowoja.MIDDLE);
         this.jehele.setAutoSize(TextFieldAutoSize.CENTER);
         this.jehele.addEventListener(MouseEvent.CLICK,this.wyma);
         addChild(this.jehele);
         this.zatud=new Nulejufyl(Vibemod.tywi,22,false);
         this.zatud.setVerticalAlign(Guzowoja.MIDDLE);
         this.zatud.setAutoSize(TextFieldAutoSize.LEFT);
         this.zatud.addEventListener(MouseEvent.CLICK,this.tenagizol);
         addChild(this.zatud);
         this.kozeta=new Nulejufyl(Vibemod.wavy,22,false);
         this.kozeta.setVerticalAlign(Guzowoja.MIDDLE);
         this.kozeta.setAutoSize(TextFieldAutoSize.RIGHT);
         this.kozeta.addEventListener(MouseEvent.CLICK,this.qivuwa);
         addChild(this.kozeta);
         var _loc3_:* = 14;
         var _loc4_:* = 0;
         while(_loc4_<goniq.length)
         {
            _loc5_=new Pydac(goniq[_loc4_]);
            _loc5_.x=_loc3_;
            _loc5_.y=70;
            addChild(_loc5_);
            _loc5_.addEventListener(MouseEvent.CLICK,this.nahivu);
            this.poha.push(_loc5_);
            _loc3_=_loc3_+108;
            _loc4_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const goniq:Vector.<String> = new Vector.<String>(5);

      public static const biripyq:int = 550;

      public static const saActionMapperAbstract:String = "chatCommand";

      public static const midolipy:String = "chat";

      public static const hunobola:String = "tell";

      public static const fyfunow:String = "guildChat";

      public static const gugaloh:String = "scrollChatUp";

      public static const zyhipahuj:String = "scrollChatDown";

      private static function faqyc() : Derohom {
         return new Derohom("contextualPotionBuy",loci(),[true,false],Vibemod.lomateg,Vibemod.hegar,null);
      }

      private static function loci() : Vector.<Tunyhazo> {
         new Vector.<Tunyhazo>(2)[0]=wukodi(Vibemod.tugav);
         new Vector.<Tunyhazo>(2)[1]=wukodi(Vibemod.wawyvelol);
         return new Vector.<Tunyhazo>(2);
      }

      private static function wukodi(param1:String) : Kybidu {
         return new Kybidu().setParams(param1);
      }

      private static function sybunuket() : Derohom {
         return new Derohom("clickForGold",loci(),[true,false],Vibemod.gyfu,Vibemod.calofej,null);
      }

      private static function qototi() : Derohom {
         return new Derohom("contextualClick",loci(),[true,false],Vibemod.bili,Vibemod.rolubap,null);
      }

      private static function rah() : Vector.<Tunyhazo> {
         new Vector.<Tunyhazo>(2)[0]=new Vofezuzy("45°");
         new Vector.<Tunyhazo>(2)[1]=new Vofezuzy("0°");
         return new Vector.<Tunyhazo>(2);
      }

      private static function qacozovoma() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         RotmgParameters.data_.cameraAngle=RotmgParameters.data_.defaultCameraAngle;
         RotmgParameters.save();
         return;
      }

      private var gs_:GameSprite;

      private var jehele:Nulejufyl;

      private var zatud:Nulejufyl;

      private var kozeta:Nulejufyl;

      private var poha:Vector.<Pydac>;

      private var selected_:Pydac = null;

      private var lydusero:Vector.<Sprite>;

      private function wyma(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close();
         return;
      }

      private function tenagizol(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Duwyhumij = null;
         var _loc2_:* = 0;
         while(_loc2_<this.lydusero.length)
         {
            _loc3_=this.lydusero[_loc2_] as Duwyhumij;
            if(_loc3_==null)
            {
            }
            else
            {
               GlobalNotificationActionte RotmgParameters.data_[[_loc3_.wavaqon]];
            }
            _loc2_++;
         }
         RotmgParameters.fidid();
         RotmgParameters.save();
         this.refresh();
         return;
      }

      private function qivuwa(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close();
         this.gs_.closed.dispatch();
         return;
      }

      private function nahivu(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Pydac = param1.currentTarget as Pydac;
         this.setSelected(_loc2_);
         return;
      }

      private function setSelected(param1:Pydac) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
         this.wosorege();
         switch(this.selected_.text_)
         {
            case Vibemod.vycohuw:
               this.dusa();
               break;
            case Vibemod.peg:
               this.gisuma();
               break;
            case Vibemod.lefo:
               this.jyryvo();
               break;
            case Vibemod.wyhejabel:
               this.jusanato();
               break;
            case Vibemod.bukune:
               this.merekykuk();
               break;
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jehele.x=stage.stageWidth/2;
         this.jehele.y=biripyq;
         this.zatud.x=20;
         this.zatud.y=biripyq;
         this.kozeta.x=stage.stageWidth-20;
         this.kozeta.y=biripyq;
         if(Capabilities.playerType=="Desktop")
         {
            RotmgParameters.data_.fullscreenMode=stage.displayState=="fullScreenInteractive";
            RotmgParameters.save();
         }
         this.setSelected(this.poha[0]);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv,false,1);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.luw,false,1);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv,false);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.luw,false);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(Capabilities.playerType=="Desktop"&&param1.keyCode==Coluf.ESCAPE)
         {
            RotmgParameters.data_.fullscreenMode=false;
            RotmgParameters.save();
            this.refresh();
         }
         if(param1.keyCode==RotmgParameters.data_.options)
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

      private function luw(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         return;
      }

      private function wosorege() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Sprite = null;
         for each (_loc1_ in this.lydusero)
         {
            removeChild(_loc1_);
         }
         this.lydusero.length=0;
         return;
      }

      private function dusa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bunycu(new Cuqegeza("moveUp",Vibemod.hicygizy,Vibemod.cac));
         this.bunycu(new Cuqegeza("moveLeft",Vibemod.taqa,Vibemod.zyr));
         this.bunycu(new Cuqegeza("moveDown",Vibemod.zen,Vibemod.matyzek));
         this.bunycu(new Cuqegeza("moveRight",Vibemod.zove,Vibemod.muva));
         this.bunycu(this.niti());
         this.bunycu(new Salilekuh());
         this.bunycu(new Cuqegeza("rotateLeft",Vibemod.jeq,Vibemod.kozydyq,!RotmgParameters.data_.allowRotation));
         this.bunycu(new Cuqegeza("rotateRight",Vibemod.vytedar,Vibemod.rarymyjom,!RotmgParameters.data_.allowRotation));
         this.bunycu(new Cuqegeza("useSpecial",Vibemod.vukozo,Vibemod.hin));
         this.bunycu(new Cuqegeza("autofireToggle",Vibemod.guvyh,Vibemod.wyfabas));
         this.bunycu(new Cuqegeza("resetToDefaultCameraAngle",Vibemod.lepif,Vibemod.qyjyky));
         this.bunycu(new Cuqegeza("togglePerformanceStats",Vibemod.gopy,Vibemod.sagi));
         this.bunycu(new Cuqegeza("toggleCentering",Vibemod.petel,Vibemod.rabylun));
         this.bunycu(new Cuqegeza("interact",Vibemod.pupal,Vibemod.heputy));
         this.bunycu(qototi());
         this.bunycu(sybunuket());
         this.bunycu(faqyc());
         return;
      }

      private function niti() : Derohom {
         return new Derohom("allowRotation",loci(),[true,false],Vibemod.gemitok,Vibemod.pyc,this.suw);
      }

      private function suw() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cuqegeza = null;
         var _loc1_:* = 0;
         while(_loc1_<this.lydusero.length)
         {
            _loc2_=this.lydusero[_loc1_] as Cuqegeza;
            if(_loc2_==null)
            {
            }
            else
            {
               if(_loc2_.wavaqon=="rotateLeft"||_loc2_.wavaqon=="rotateRight")
               {
                  _loc2_.sotymojor(!RotmgParameters.data_.allowRotation);
               }
            }
            _loc1_++;
         }
         return;
      }

      private function gisuma() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bunycu(new Cuqegeza("useHealthPotion",Vibemod.wufejakih,Vibemod.gevufiqug));
         this.bunycu(new Cuqegeza("useMagicPotion",Vibemod.jylehozal,Vibemod.fimo));
         this.kof();
         this.bunycu(new Cuqegeza("miniMapZoomIn",Vibemod.jijiqe,Vibemod.hebo));
         this.bunycu(new Cuqegeza("miniMapZoomOut",Vibemod.muliryne,Vibemod.hyzumere));
         this.bunycu(new Cuqegeza("escapeToNexus",Vibemod.jebafas,Vibemod.nyf));
         this.bunycu(new Cuqegeza("options",Vibemod.jivalevyg,Vibemod.pucoh));
         this.bunycu(new Cuqegeza("switchTabs",Vibemod.kedybyg,Vibemod.kyjyl));
         this.jykawez();
         if(this.fasodavyn())
         {
            this.bunycu(new Cuqegeza("toggleFullscreen",Vibemod.tekuni,Vibemod.wotedab));
         }
         return;
      }

      public function fasodavyn() : Boolean {
         return Capabilities.playerType=="Desktop";
      }

      public function jykawez() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = Capabilities.os.split(" ")[0]=="Mac"?"Command":"Ctrl";
         var _loc2_:Derohom = new Derohom("inventorySwap",loci(),[true,false],Vibemod.sehiwyw,"",null);
         _loc2_.tahukiz(new Kybidu().setParams(Vibemod.conuv,{key:_loc1_}));
         this.bunycu(_loc2_);
         return;
      }

      public function kof() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cuqegeza = null;
         var _loc1_:* = 1;
         while(_loc1_<=8)
         {
            _loc2_=new Cuqegeza("useInvSlot"+_loc1_,"","");
            _loc2_.sove(new Kybidu().setParams(Vibemod.robysygu,{n:_loc1_}));
            _loc2_.tahukiz(new Kybidu().setParams(Vibemod.zocew,{n:_loc1_}));
            this.bunycu(_loc2_);
            _loc1_++;
         }
         return;
      }

      private function jyryvo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bunycu(new Cuqegeza(midolipy,Vibemod.pyryhuh,Vibemod.bubofyz));
         this.bunycu(new Cuqegeza(saActionMapperAbstract,Vibemod.wyvasodad,Vibemod.haqo));
         this.bunycu(new Cuqegeza(hunobola,Vibemod.pyme,Vibemod.wizibot));
         this.bunycu(new Cuqegeza(fyfunow,Vibemod.kupyse,Vibemod.fot));
         this.bunycu(new Derohom("filterLanguage",loci(),[true,false],Vibemod.hedil,Vibemod.pyz,null));
         this.bunycu(new Cuqegeza(gugaloh,Vibemod.gogyzazi,Vibemod.jiz));
         this.bunycu(new Cuqegeza(zyhipahuj,Vibemod.detef,Vibemod.jonon));
         this.bunycu(new Derohom("forceChatQuality",loci(),[true,false],Vibemod.delo,Vibemod.rataz,null));
         this.bunycu(new Derohom("hidePlayerChat",loci(),[true,false],Vibemod.sywohi,Vibemod.fakupove,null));
         return;
      }

      private function jusanato() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bunycu(new Derohom("defaultCameraAngle",rah(),[7*Math.PI/4,0],Vibemod.fiz,Vibemod.byrale,qacozovoma));
         this.bunycu(new Derohom("centerOnPlayer",loci(),[true,false],Vibemod.kunoru,Vibemod.fotit,null));
         this.bunycu(new Derohom("showQuestPortraits",loci(),[true,false],Vibemod.miry,Vibemod.qoryzid,this.bojigusuw));
         this.bunycu(new Derohom("showProtips",loci(),[true,false],Vibemod.wury,Vibemod.vajepaga,null));
         this.bunycu(new Derohom("drawShadows",loci(),[true,false],Vibemod.kezapuho,Vibemod.kaqovo,null));
         this.bunycu(new Derohom("textBubbles",loci(),[true,false],Vibemod.baveb,Vibemod.jal,null));
         this.bunycu(new Derohom("showTradePopup",loci(),[true,false],Vibemod.kilym,Vibemod.kowih,null));
         this.bunycu(new Derohom("showGuildInvitePopup",loci(),[true,false],Vibemod.cokibyk,Vibemod.sygypopic,null));
         if(Capabilities.playerType=="Desktop")
         {
            this.bunycu(new Derohom("fullscreenMode",loci(),[true,false],Vibemod.pyzi,Vibemod.werozib,this.rezyvumoq));
         }
         return;
      }

      private function bojigusuw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(this.gs_==null)&&!(this.gs_.map==null)&&!(this.gs_.map.partyOverlay_==null)&&!(this.gs_.map.partyOverlay_.questArrow_==null))
         {
            this.gs_.map.partyOverlay_.questArrow_.refreshToolTip();
         }
         return;
      }

      private function rezyvumoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         stage.displayState=RotmgParameters.data_.fullscreenMode?"fullScreenInteractive":StageDisplayState.NORMAL;
         return;
      }

      private function merekykuk() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bunycu(new Derohom("playMusic",loci(),[true,false],Vibemod.gelatyv,Vibemod.cabynup,this.toreco));
         this.bunycu(new Salilekuh());
         this.bunycu(new Derohom("playSFX",loci(),[true,false],Vibemod.boton,Vibemod.pyt,this.byceb));
         this.bunycu(new Salilekuh());
         this.bunycu(new Derohom("playPewPew",loci(),[true,false],Vibemod.myci,Vibemod.kudazuh,null));
         return;
      }

      private function toreco() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Zywytezof.wyda(RotmgParameters.data_.playMusic);
         return;
      }

      private function byceb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Mobu.qunyneviz(RotmgParameters.data_.playSFX);
         return;
      }

      private function bunycu(param1:Riwiz) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var positionOption:Function = null;
         var option:Riwiz = param1;
         positionOption=new function():void
         {
            option.x=lydusero.length%2==0?20:415;
            option.y=int(lydusero.length/2)*44+122;
            return;
         };
         option.textChanged.addOnce(positionOption);
         this.jobilu(option);
         return;
      }

      private function jobilu(param1:Riwiz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         param1.addEventListener(Event.CHANGE,this.fuvare);
         this.lydusero.push(param1);
         return;
      }

      private function fuvare(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.refresh();
         return;
      }

      private function refresh() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Duwyhumij = null;
         var _loc1_:* = 0;
         while(_loc1_<this.lydusero.length)
         {
            _loc2_=this.lydusero[_loc1_] as Duwyhumij;
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