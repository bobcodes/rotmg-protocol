package biqacufo
{
   import vaqob.Panel;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import qazoz.Nyzur;
   import aaa.rotmg.i18n.I18nKeys;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.util.Currency;
   import nec.Sire;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.ui.RankText;
   import nec.Zirewe;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;


   public class NameChangerPanel extends Panel
   {
      public function NameChangerPanel(param1:GameSprite, param2:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Player = null;
         var _loc4_:String = null;
         this.chooseName=new Hugyqufyq();
         super(param1);
         if(this.nuwawevuv())
         {
            _loc3_=gs_.map.player_;
            this.rap=_loc3_.wiz;
            _loc4_=this.famyzehik();
            if(this.rap)
            {
               this.qan(_loc4_);
            }
            else
            {
               if(_loc3_.numStars_<param2)
               {
                  this.wisohyde(param2);
               }
               else
               {
                  this.wewif();
               }
            }
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      public var chooseName:Hugyqufyq;

      public var rap:Boolean;

      private var zaba:Lufub;

      private var mer:Sprite;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.mer)
         {
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function nuwawevuv() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (gs_.map)&&(gs_.map.player_);
      }

      private function famyzehik() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = null;
         _loc1_=gs_.model.getName();
         this.zaba=new Lufub().setSize(18).setColor(16777215).setTextWidth(WIDTH);
         this.zaba.setBold(true).setWordWrap(true).setMultiLine(true).setHorizontalAlign(TextFormatAlign.CENTER);
         this.zaba.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      private function qan(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zaba.setStringBuilder(this.zofehafi(param1));
         this.zaba.y=0;
         addChild(this.zaba);
         var _loc2_:Nyzur = new Nyzur(I18nKeys.guwi,16,UserConfig.joky,Currency.fejubu);
         _loc2_.qecysiga.addOnce(this.gyma);
         this.mer=_loc2_;
         addChild(this.mer);
         this.addListeners();
         return;
      }

      private function gyma() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mer.x=WIDTH/2-this.mer.width/2;
         this.mer.y=HEIGHT-this.mer.height/2-17;
         return;
      }

      private function wewif() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zaba.setStringBuilder(new Sire().setParams(I18nKeys.jefa));
         this.zaba.y=6;
         addChild(this.zaba);
         var _loc1_:Dogyqijec = new Dogyqijec(16,I18nKeys.gaheke);
         _loc1_.textChanged.addOnce(this.bitafega);
         this.mer=_loc1_;
         addChild(this.mer);
         this.addListeners();
         return;
      }

      private function bitafega() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mer.x=WIDTH/2-this.mer.width/2;
         this.mer.y=HEIGHT-this.mer.height-4;
         return;
      }

      private function addListeners() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mer.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         return;
      }

      private function wisohyde(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Sprite = null;
         var _loc3_:Lufub = null;
         var _loc4_:Sprite = null;
         this.zaba.setStringBuilder(new Sire().setParams(I18nKeys.jefa));
         addChild(this.zaba);
         _loc2_=new Sprite();
         _loc3_=new Lufub().setSize(16).setColor(16777215);
         _loc3_.setBold(true);
         _loc3_.setStringBuilder(new Sire().setParams(I18nKeys.gabuq));
         _loc3_.filters=[new DropShadowFilter(0,0,0)];
         _loc2_.addChild(_loc3_);
         _loc4_=new RankText(param1,false,false);
         _loc4_.x=_loc3_.width+4;
         _loc4_.y=_loc3_.height/2-_loc4_.height/2;
         _loc2_.addChild(_loc4_);
         _loc2_.x=WIDTH/2-_loc2_.width/2;
         _loc2_.y=HEIGHT-_loc2_.height/2-20;
         addChild(_loc2_);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function zofehafi(param1:String) : Zirewe {
         return new Sire().setParams(I18nKeys.guzibokyf,{name:param1});
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            this.monuzesin();
         }
         return;
      }

      private function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.monuzesin();
         return;
      }

      private function monuzesin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.chooseName.dispatch();
         return;
      }

      public function synusybys(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zaba.setStringBuilder(this.zofehafi(param1));
         this.zaba.y=0;
         return;
      }
   }

}