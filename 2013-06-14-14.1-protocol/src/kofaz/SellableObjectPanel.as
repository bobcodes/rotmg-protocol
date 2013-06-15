package kofaz
{
   import fytalis.Panel;
   import gafuvy.Pywafejer;
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.ui.RankText;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.GuildUtil;
   import gafuvy.Qyvuw;
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.objects.SellableObject;
   import bemav.Telir;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.objects.Player;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.util.Currency;


   public class SellableObjectPanel extends Panel implements Pywafejer
   {
      public function SellableObjectPanel(param1:GameSprite, param2:SellableObject) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.debamipop=new Qyvuw();
         this.worekijod=new Qanyduk(SellableObject);
         super(param1);
         this.nameText_=new Guzowoja().setSize(16).setColor(16777215).setTextWidth(WIDTH-44);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Kybidu().setParams(Vibemod.repijufa));
         this.nameText_.setWordWrap(true);
         this.nameText_.setMultiLine(true);
         this.nameText_.setAutoSize(TextFieldAutoSize.CENTER);
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.tyj=new Sprite();
         addChild(this.tyj);
         this.bitmap_=new Bitmap(null);
         this.tyj.addChild(this.bitmap_);
         this.deveti=new Telir(Vibemod.wokuvac,16,0,Currency.INVALID);
         this.deveti.addEventListener(MouseEvent.CLICK,this.nehuluhifu);
         addChild(this.deveti);
         this.remanedu(param2);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.debamipop.lubec(this);
         this.debamipop.tooltip=param2.getTooltip();
         return;
      }

      private static function kesulo(param1:int) : Sprite {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var requiredText:Guzowoja = null;
         var rankText:Sprite = null;
         var rankReq:int = param1;
         var rankReqText:Sprite = new Sprite();
         requiredText=new Guzowoja().setSize(16).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
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
            requiredText.setStringBuilder(new Kybidu().setParams(Vibemod.weryg));
            return rankReqText;
      }

      private static function lewypypot(param1:int) : Guzowoja {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Guzowoja = null;
         _loc2_=new Guzowoja().setSize(16).setColor(16711680).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         var _loc3_:String = GuildUtil.hecuj(param1);
         _loc2_.setStringBuilder(new Kybidu().setParams(Vibemod.zyma,{amount:_loc3_}));
         _loc2_.filters=[new DropShadowFilter(0,0,0)];
         return _loc2_;
      }

      public var debamipop:Qyvuw;

      public var worekijod:Qanyduk;

      private var gilyzygag:SellableObject;

      private var nameText_:Guzowoja;

      private var deveti:Telir;

      private var mozim:Sprite;

      private var vukecemen:Guzowoja;

      private var tyj:Sprite;

      private var bitmap_:Bitmap;

      public function remanedu(param1:SellableObject) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==this.gilyzygag)
         {
            return;
         }
         this.gilyzygag=param1;
         this.deveti.setPrice(this.gilyzygag.price_,this.gilyzygag.currency_);
         var _loc2_:String = this.gilyzygag.soldObjectName();
         this.nameText_.setStringBuilder(new Kybidu().setParams(_loc2_));
         this.bitmap_.bitmapData=this.gilyzygag.getIcon();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         this.tyj.x=-4;
         this.tyj.y=-8;
         this.nameText_.x=44;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function nehuluhifu(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.worekijod.dispatch(this.gilyzygag);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.worekijod.dispatch(this.gilyzygag);
         }
         return;
      }

      private const dana:int = 17;

      override public function draw() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Player = gs_.map.player_;
         this.nameText_.y=this.nameText_.height>30?0:12;
         var _loc2_:int = this.gilyzygag.toq;
         if(_loc1_.numStars_<_loc2_)
         {
            if(contains(this.deveti))
            {
               removeChild(this.deveti);
            }
            if(this.mozim==null||!contains(this.mozim))
            {
               this.mozim=kesulo(_loc2_);
               this.mozim.x=WIDTH/2-this.mozim.width/2;
               this.mozim.y=HEIGHT-this.mozim.height/2-20;
               addChild(this.mozim);
            }
         }
         else
         {
            if(_loc1_.guildRank_<this.gilyzygag.lehihafo)
            {
               if(contains(this.deveti))
               {
                  removeChild(this.deveti);
               }
               if(this.vukecemen==null||!contains(this.vukecemen))
               {
                  this.vukecemen=lewypypot(this.gilyzygag.lehihafo);
                  this.vukecemen.x=WIDTH/2-this.vukecemen.width/2;
                  this.vukecemen.y=HEIGHT-this.vukecemen.height/2-20;
                  addChild(this.vukecemen);
               }
            }
            else
            {
               this.deveti.setPrice(this.gilyzygag.price_,this.gilyzygag.currency_);
               this.deveti.setEnabled(gs_.gsc_.outstandingBuy_==null);
               this.deveti.x=WIDTH/2-this.deveti.width/2;
               this.deveti.y=HEIGHT-this.deveti.height/2-this.dana;
               if(!contains(this.deveti))
               {
                  addChild(this.deveti);
               }
               if(!(this.mozim==null)&&(contains(this.mozim)))
               {
                  removeChild(this.mozim);
               }
            }
         }
         return;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.debamipop.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.debamipop.wuducocac();
      }
   }

}