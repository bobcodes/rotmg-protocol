package biqacufo
{
   import vaqob.Panel;
   import tekoh.Gemanyq;
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.ui.RankText;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.GuildUtil;
   import tekoh.Zukot;
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.objects.SellableObject;
   import qazoz.Nyzur;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.objects.Player;
   import raqu.Hujuhy;
   import raqu.Goq;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.util.Currency;


   public class SellableObjectPanel extends Panel implements Gemanyq
   {
      public function SellableObjectPanel(param1:GameSprite, param2:SellableObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.piwawawiw=new Zukot();
         this.jerike=new Hugyqufyq(SellableObject);
         super(param1);
         this.nameText_=new Lufub().setSize(16).setColor(16777215).setTextWidth(WIDTH-44);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Sire().setParams(I18nKeys.vovovik));
         this.nameText_.setWordWrap(true);
         this.nameText_.setMultiLine(true);
         this.nameText_.setAutoSize(TextFieldAutoSize.CENTER);
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.buwigyh=new Sprite();
         addChild(this.buwigyh);
         this.bitmap_=new Bitmap(null);
         this.buwigyh.addChild(this.bitmap_);
         this.davoj=new Nyzur(I18nKeys.muc,16,0,Currency.INVALID);
         this.davoj.addEventListener(MouseEvent.CLICK,this.wytarivic);
         addChild(this.davoj);
         this.wuhofag(param2);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.piwawawiw.kol(this);
         this.piwawawiw.tooltip=param2.getTooltip();
         return;
      }

      private static function balu(param1:int) : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var requiredText:Lufub = null;
         var rankText:Sprite = null;
         var rankReq:int = param1;
         var rankReqText:Sprite = new Sprite();
         requiredText=new Lufub().setSize(16).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         requiredText.filters=[new DropShadowFilter(0,0,0)];
         rankReqText.addChild(requiredText);
         rankText=new RankText(rankReq,false,false);
         rankReqText.addChild(rankText);
         requiredText.textChanged.addOnce(new function():void
         {
            rankText.x=requiredText.width*0.5+4;
            rankText.y=-rankText.height/2;
            return;
            });
            requiredText.setStringBuilder(new Sire().setParams(I18nKeys.mug));
            return rankReqText;
      }

      private static function dew(param1:int) : Lufub {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Lufub = null;
         _loc2_=new Lufub().setSize(16).setColor(16711680).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         var _loc3_:String = GuildUtil.kyrehorek(param1);
         _loc2_.setStringBuilder(new Sire().setParams(I18nKeys.jehet,{amount:_loc3_}));
         _loc2_.filters=[new DropShadowFilter(0,0,0)];
         return _loc2_;
      }

      public var piwawawiw:Zukot;

      public var jerike:Hugyqufyq;

      private var muduv:SellableObject;

      private var nameText_:Lufub;

      private var davoj:Nyzur;

      private var nyvycahof:Sprite;

      private var nuse:Lufub;

      private var buwigyh:Sprite;

      private var bitmap_:Bitmap;

      public function wuhofag(param1:SellableObject) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==this.muduv)
         {
            return;
         }
         this.muduv=param1;
         this.davoj.setPrice(this.muduv.price_,this.muduv.currency_);
         var _loc2_:String = this.muduv.soldObjectName();
         this.nameText_.setStringBuilder(new Sire().setParams(_loc2_));
         this.bitmap_.bitmapData=this.muduv.getIcon();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         this.buwigyh.x=-4;
         this.buwigyh.y=-8;
         this.nameText_.x=44;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function wytarivic(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jerike.dispatch(this.muduv);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            this.jerike.dispatch(this.muduv);
         }
         return;
      }

      private const vobim:int = 17;

      override public function draw() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Player = gs_.map.player_;
         this.nameText_.y=this.nameText_.height>30?0:12;
         var _loc2_:int = this.muduv.rykikor;
         if(_loc1_.numStars_<_loc2_)
         {
            if(contains(this.davoj))
            {
               removeChild(this.davoj);
            }
            if(this.nyvycahof==null||!contains(this.nyvycahof))
            {
               this.nyvycahof=balu(_loc2_);
               this.nyvycahof.x=WIDTH/2-this.nyvycahof.width/2;
               this.nyvycahof.y=HEIGHT-this.nyvycahof.height/2-20;
               addChild(this.nyvycahof);
            }
         }
         else
         {
            if(_loc1_.guildRank_<this.muduv.qaloken)
            {
               if(contains(this.davoj))
               {
                  removeChild(this.davoj);
               }
               if(this.nuse==null||!contains(this.nuse))
               {
                  this.nuse=dew(this.muduv.qaloken);
                  this.nuse.x=WIDTH/2-this.nuse.width/2;
                  this.nuse.y=HEIGHT-this.nuse.height/2-20;
                  addChild(this.nuse);
               }
            }
            else
            {
               this.davoj.setPrice(this.muduv.price_,this.muduv.currency_);
               this.davoj.setEnabled(gs_.gsc_.outstandingBuy_==null);
               this.davoj.x=WIDTH/2-this.davoj.width/2;
               this.davoj.y=HEIGHT-this.davoj.height/2-this.vobim;
               if(!contains(this.davoj))
               {
                  addChild(this.davoj);
               }
               if(!(this.nyvycahof==null)&&(contains(this.nyvycahof)))
               {
                  removeChild(this.nyvycahof);
               }
            }
         }
         return;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.piwawawiw.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.piwawawiw.wab();
      }
   }

}