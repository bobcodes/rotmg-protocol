package vaqob
{
   import com.company.assembleegameclient.objects.Portal;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import tulunyno.Hugyqufyq;
   import ruwysepyd.Junefolef;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.googleanalytics.GA;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.objects.Picowi;
   import nec.Zirewe;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;


   public class PortalPanel extends Panel
   {
      public function PortalPanel(param1:GameSprite, param2:Portal) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.muduv=param2;
         this.nameText_=new Lufub().setSize(18).setColor(16777215).setBold(true).setTextWidth(WIDTH).setHorizontalAlign(TextFormatAlign.CENTER);
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.jiguvovu.push(this.nameText_.textChanged);
         this.kameg=new Dogyqijec(16,I18nKeys.wabase);
         addChild(this.kameg);
         this.jiguvovu.push(this.kameg.textChanged);
         this.hiwyr=new Lufub().setSize(18).setColor(16711680).setHTML(true).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         var _loc3_:String = this.muduv.jyqasowan?I18nKeys.vyb:I18nKeys.hefofazas;
         this.hiwyr.setStringBuilder(new Sire().setParams(_loc3_).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.hiwyr.filters=[new DropShadowFilter(0,0,0)];
         this.hiwyr.textChanged.addOnce(this.alignUI);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.jiguvovu.complete.addOnce(this.alignUI);
         return;
      }

      private const LOCKED:String = "Locked ";

      private const tisyg:RegExp = new RegExp("\\{\"text\":\"(.+)\"}");

      public var muduv:Portal;

      private var nameText_:Lufub;

      private var kameg:Dogyqijec;

      private var hiwyr:Lufub;

      public const meb:Hugyqufyq = new Hugyqufyq();

      private const jiguvovu:Junefolef = new Junefolef();

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nameText_.y=6;
         this.kameg.x=WIDTH/2-this.kameg.width/2;
         this.kameg.y=HEIGHT-this.kameg.height-4;
         this.hiwyr.y=HEIGHT-30;
         this.hiwyr.x=WIDTH/2;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kameg.addEventListener(MouseEvent.CLICK,this.jecaneves);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function jecaneves(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.enterPortal();
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            this.enterPortal();
         }
         return;
      }

      private function enterPortal() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = ObjectLibrary.fajocyd[this.muduv.objectType_];
         if(_loc1_=="Nexus Portal")
         {
            GA.global().trackEvent("enterPortal",_loc1_);
         }
         else
         {
            GA.global().trackEvent("enterPortal",this.muduv.getName());
         }
         doneAction(gs_,Tutorial.duz);
         gs_.gsc_.usePortal(this.muduv.objectId_);
         this.meb.dispatch();
         return;
      }

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sebih();
         if(!this.muduv.jyqasowan&&(this.muduv.hyti)&&(contains(this.hiwyr)))
         {
            removeChild(this.hiwyr);
            addChild(this.kameg);
         }
         else
         {
            if(((this.muduv.jyqasowan)||!this.muduv.hyti)&&(contains(this.kameg)))
            {
               removeChild(this.kameg);
               addChild(this.hiwyr);
            }
         }
         return;
      }

      private function sebih() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = this.getName();
         var _loc2_:Zirewe = new Picowi().makeBuilder(_loc1_);
         this.nameText_.setStringBuilder(_loc2_);
         this.nameText_.x=(WIDTH-this.nameText_.width)*0.5;
         this.nameText_.y=this.nameText_.height>30?0:6;
         return;
      }

      private function getName() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.muduv.getName();
         if((this.muduv.jyqasowan)&&_loc1_.indexOf(this.LOCKED)==0)
         {
            return _loc1_.substr(this.LOCKED.length);
         }
         return this.lysat(_loc1_);
      }

      private function lysat(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.match(this.tisyg);
         return _loc2_?_loc2_[1]:param1;
      }
   }

}