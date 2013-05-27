package gib
{
   import flash.display.Sprite;
   import cadawowy.Kacyhoty;
   import com.company.assembleegameclient.util.offer.Offer;
   import nasokuqa.Myky;
   import cadawowy.Vezego;
   import qazoz.Luwehub;
   import flash.display.BitmapData;
   import movimet.Lufub;
   import ruwysepyd.Junefolef;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.BitmapUtil;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;


   public class Refy extends Sprite implements Kacyhoty
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Refy(param1:Offer, param2:Myky) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.offer=param1;
         this.config=param2;
         this.luba();
         this.makeContainer();
         this.vepoqewoj();
         this.mamunic();
         this.nymojiko();
         this.gaco();
         this.myqynaz();
         this.lezowy();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.jiguvovu.complete.add(this.alignUI);
         return;
      }

      private static const pecubehaq:int = 7829367;

      private static const wogo:int = 5987163;

      private static const pujores:int = 4539717;

      public var offer:Offer;

      private var config:Myky;

      private var background:Vezego;

      private var container:Sprite;

      private var hilugev:Luwehub;

      private var non:BitmapData;

      private var hyqetylyr:Lufub;

      private var zuz:Lufub;

      private var pywaduvo:Lufub;

      private var taglineText:Lufub;

      private var murojywyh:Boolean;

      private var nubi:Boolean;

      private const jiguvovu:Junefolef = new Junefolef();

      public function getValue() : String {
         return this.offer.realmGold_.toString();
      }

      public function gajyzucyl(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nubi=param1;
         this.loluzeb();
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.murojywyh=param1;
         this.hilugev.setSelected(param1);
         this.loluzeb();
         return;
      }

      public function showBonus(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.pywaduvo)
         {
            this.pywaduvo.visible=param1;
         }
         return;
      }

      private function luba() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background=new Vezego();
         this.background.setSize(520,36);
         this.loluzeb();
         addChild(this.background);
         return;
      }

      private function makeContainer() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.container=new Sprite();
         this.container.x=this.container.y=3;
         addChild(this.container);
         return;
      }

      private function vepoqewoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hilugev=new Luwehub();
         this.hilugev.x=3;
         this.container.addChild(this.hilugev);
         return;
      }

      private function mamunic() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = null;
         this.non=AssetLibrary.jeqycu("lofiObj3",225);
         this.non=TextureRedrawer.redraw(this.non,50,true,0,0,false);
         this.non=BitmapUtil.wygoci(this.non,8,8,this.non.width-16,this.non.height-16);
         _loc1_=new Bitmap(this.non);
         _loc1_.x=this.hilugev.x+35;
         this.container.addChild(_loc1_);
         return;
      }

      private function nymojiko() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hyqetylyr=new Lufub().setSize(18).setColor(16777215).setBold(true);
         this.hyqetylyr.setStringBuilder(new Sire().setParams(I18nKeys.catu,{amount:this.offer.realmGold_}));
         this.hyqetylyr.filters=[new DropShadowFilter(0,0,0)];
         this.jiguvovu.push(this.hyqetylyr.textChanged);
         this.container.addChild(this.hyqetylyr);
         return;
      }

      private function gaco() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zuz=new Lufub().setSize(18).setColor(16777215).setBold(true);
         this.zuz.setStringBuilder(this.config.cuwuqe(this.offer));
         this.zuz.filters=[new DropShadowFilter(0,0,0)];
         this.jiguvovu.push(this.zuz.textChanged);
         this.container.addChild(this.zuz);
         return;
      }

      private function myqynaz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.offer.bonus==0)
         {
            return;
         }
         this.pywaduvo=new Lufub().setSize(18).setColor(16777215).setBold(true);
         this.pywaduvo.setStringBuilder(new Sire().setParams(I18nKeys.kawajolez,{percent:this.offer.bonus}));
         this.pywaduvo.filters=[new DropShadowFilter(0,0,0)];
         this.jiguvovu.push(this.pywaduvo.textChanged);
         this.container.addChild(this.pywaduvo);
         return;
      }

      private function lezowy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.offer.tagline!=null)
         {
            this.makeTaglineText();
         }
         return;
      }

      private function makeTaglineText() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.taglineText=new Lufub().setSize(18).setColor(8891485);
         this.taglineText.setStringBuilder(new Sire().setParams(this.offer.tagline));
         this.taglineText.filters=[new DropShadowFilter(0,0,0)];
         this.jiguvovu.push(this.taglineText.textChanged);
         this.container.addChild(this.taglineText);
         return;
      }

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hyqetylyr.x=this.hilugev.x+70;
         this.hyqetylyr.y=this.non.height/2-this.hyqetylyr.height/2;
         this.zuz.x=200;
         this.zuz.y=this.non.height/2-this.zuz.height/2;
         if(this.pywaduvo)
         {
            this.pywaduvo.x=280;
            this.pywaduvo.y=this.non.height/2-this.pywaduvo.height/2;
         }
         this.taglineText.x=400;
         this.taglineText.y=this.non.height/2-this.taglineText.height/2;
         return;
      }

      private function loluzeb() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.murojywyh?pecubehaq:this.nubi?wogo:pujores;
         this.background.setColor(_loc1_);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gajyzucyl(true);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gajyzucyl(false);
         return;
      }
   }

}