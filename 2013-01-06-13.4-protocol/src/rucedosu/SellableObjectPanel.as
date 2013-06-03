package rucedosu
{
[CLASS548]   import warude.Panel;
   import viky.Wihury;
   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.ui.RankText;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.GuildUtil;
   import viky.Hoselyfov;
   import tinava.Dab;
   import com.company.assembleegameclient.objects.SellableObject;
   import gicuzum.Caty;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import aaa.Parameters;
   import com.company.assembleegameclient.objects.Player;
   import dutes.Zevazogo;
   import dutes.Soz;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.util.Currency;


   public class SellableObjectPanel extends Panel implements Wihury
   {
      public function SellableObjectPanel(param1:GameSprite, param2:SellableObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.tuhucysys=new Hoselyfov();
         this.dafe=new Dab(SellableObject);
         super(param1);
         this.nameText_=new Capitu().setSize(16).setColor(16777215).setTextWidth(WIDTH-44);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Zufi().setParams(Kefyfa.side));
         this.nameText_.setWordWrap(true);
         this.nameText_.setMultiLine(true);
         this.nameText_.setAutoSize(TextFieldAutoSize.CENTER);
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.mad=new Sprite();
         addChild(this.mad);
         this.bitmap_=new Bitmap(null);
         this.mad.addChild(this.bitmap_);
         this.zazibin=new Caty(Kefyfa.dopu,16,0,Currency.INVALID);
         this.zazibin.addEventListener(MouseEvent.CLICK,this.civu);
         addChild(this.zazibin);
         this.covyzob(param2);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.tuhucysys.mosajo(this);
         this.tuhucysys.tooltip=param2.getTooltip();
         return;
      }

      private static function nebi(param1:int) : Sprite {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var requiredText:Capitu = null;
         var rankText:Sprite = null;
         var rankReq:int = param1;
         var rankReqText:Sprite = new Sprite();
         requiredText=new Capitu().setSize(16).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
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
            requiredText.setStringBuilder(new Zufi().setParams(Kefyfa.wobi));
            return rankReqText;
      }

      private static function zop(param1:int) : Capitu {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Capitu = null;
         _loc2_=new Capitu().setSize(16).setColor(16711680).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         var _loc3_:String = GuildUtil.bihuw(param1);
         _loc2_.setStringBuilder(new Zufi().setParams(Kefyfa.dubemu,{amount:_loc3_}));
         _loc2_.filters=[new DropShadowFilter(0,0,0)];
         return _loc2_;
      }

      public var tuhucysys:Hoselyfov;

      public var dafe:Dab;

      private var gibeho:SellableObject;

      private var nameText_:Capitu;

      private var zazibin:Caty;

      private var penewazis:Sprite;

      private var mevuqej:Capitu;

      private var mad:Sprite;

      private var bitmap_:Bitmap;

      public function covyzob(param1:SellableObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.gibeho)
         {
            return;
         }
         this.gibeho=param1;
         this.zazibin.setPrice(this.gibeho.price_,this.gibeho.currency_);
         var _loc2_:String = this.gibeho.soldObjectName();
         this.nameText_.setStringBuilder(new Zufi().setParams(_loc2_));
         this.bitmap_.bitmapData=this.gibeho.getIcon();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         this.mad.x=-4;
         this.mad.y=-8;
         this.nameText_.x=44;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function civu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dafe.dispatch(this.gibeho);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.dafe.dispatch(this.gibeho);
         }
         return;
      }

      private const qonudopa:int = 17;

      override public function draw() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Player = gs_.map.player_;
         this.nameText_.y=this.nameText_.height>30?0:12;
         var _loc2_:int = this.gibeho.wufawojof;
         if(_loc1_.numStars_<_loc2_)
         {
            if(contains(this.zazibin))
            {
               removeChild(this.zazibin);
            }
            if(this.penewazis==null||!contains(this.penewazis))
            {
               this.penewazis=nebi(_loc2_);
               this.penewazis.x=WIDTH/2-this.penewazis.width/2;
               this.penewazis.y=HEIGHT-this.penewazis.height/2-20;
               addChild(this.penewazis);
            }
         }
         else
         {
            if(_loc1_.guildRank_<this.gibeho.kaj)
            {
               if(contains(this.zazibin))
               {
                  removeChild(this.zazibin);
               }
               if(this.mevuqej==null||!contains(this.mevuqej))
               {
                  this.mevuqej=zop(this.gibeho.kaj);
                  this.mevuqej.x=WIDTH/2-this.mevuqej.width/2;
                  this.mevuqej.y=HEIGHT-this.mevuqej.height/2-20;
                  addChild(this.mevuqej);
               }
            }
            else
            {
               this.zazibin.setPrice(this.gibeho.price_,this.gibeho.currency_);
               this.zazibin.setEnabled(gs_.gsc_.outstandingBuy_==null);
               this.zazibin.x=WIDTH/2-this.zazibin.width/2;
               this.zazibin.y=HEIGHT-this.zazibin.height/2-this.qonudopa;
               if(!contains(this.zazibin))
               {
                  addChild(this.zazibin);
               }
               if(!(this.penewazis==null)&&(contains(this.penewazis)))
               {
                  removeChild(this.penewazis);
               }
            }
         }
         return;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }
   }
[/CLASS]
}