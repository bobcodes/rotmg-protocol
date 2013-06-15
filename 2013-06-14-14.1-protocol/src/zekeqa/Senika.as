package zekeqa
{
   import flash.display.Sprite;
   import tyk.Tidys;
   import com.company.assembleegameclient.util.offer.Offer;
   import kylelimib.Cygusupu;
   import tyk.Meh;
   import bemav.Taf;
   import flash.display.BitmapData;
   import hivysif.Guzowoja;
   import wenono.Nuri;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.BitmapUtil;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;


   public class Senika extends Sprite implements Tidys
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Senika(param1:Offer, param2:Cygusupu) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.offer=param1;
         this.config=param2;
         this.buvira();
         this.makeContainer();
         this.suhoki();
         this.pyqetoces();
         this.qoqabul();
         this.wotapuni();
         this.zefajejo();
         this.delobawas();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.ryfoc.complete.add(this.alignUI);
         return;
      }

      private static const fumiqet:int = 7829367;

      private static const koty:int = 5987163;

      private static const kidylicut:int = 4539717;

      public var offer:Offer;

      private var config:Cygusupu;

      private var background:Meh;

      private var container:Sprite;

      private var mikipu:Taf;

      private var velyhiniq:BitmapData;

      private var cibi:Guzowoja;

      private var mudis:Guzowoja;

      private var dehuzut:Guzowoja;

      private var taglineText:Guzowoja;

      private var kami:Boolean;

      private var pyqusu:Boolean;

      private const ryfoc:Nuri = new Nuri();

      public function getValue() : String {
         return this.offer.realmGold_.toString();
      }

      public function rewokeloc(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyqusu=param1;
         this.gugebu();
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kami=param1;
         this.mikipu.setSelected(param1);
         this.gugebu();
         return;
      }

      public function showBonus(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.dehuzut)
         {
            this.dehuzut.visible=param1;
         }
         return;
      }

      private function buvira() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background=new Meh();
         this.background.setSize(520,36);
         this.gugebu();
         addChild(this.background);
         return;
      }

      private function makeContainer() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.container=new Sprite();
         this.container.x=this.container.y=3;
         addChild(this.container);
         return;
      }

      private function suhoki() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mikipu=new Taf();
         this.mikipu.x=3;
         this.container.addChild(this.mikipu);
         return;
      }

      private function pyqetoces() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = null;
         this.velyhiniq=AssetLibrary.tem("lofiObj3",225);
         this.velyhiniq=TextureRedrawer.redraw(this.velyhiniq,50,true,0,0,false);
         this.velyhiniq=BitmapUtil.kodopomid(this.velyhiniq,8,8,this.velyhiniq.width-16,this.velyhiniq.height-16);
         _loc1_=new Bitmap(this.velyhiniq);
         _loc1_.x=this.mikipu.x+35;
         this.container.addChild(_loc1_);
         return;
      }

      private function qoqabul() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cibi=new Guzowoja().setSize(18).setColor(16777215).setBold(true);
         this.cibi.setStringBuilder(new Kybidu().setParams(Vibemod.kykowuqi,{amount:this.offer.realmGold_}));
         this.cibi.filters=[new DropShadowFilter(0,0,0)];
         this.ryfoc.push(this.cibi.textChanged);
         this.container.addChild(this.cibi);
         return;
      }

      private function wotapuni() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mudis=new Guzowoja().setSize(18).setColor(16777215).setBold(true);
         this.mudis.setStringBuilder(this.config.jirigene(this.offer));
         this.mudis.filters=[new DropShadowFilter(0,0,0)];
         this.ryfoc.push(this.mudis.textChanged);
         this.container.addChild(this.mudis);
         return;
      }

      private function zefajejo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.offer.bonus==0)
         {
            return;
         }
         this.dehuzut=new Guzowoja().setSize(18).setColor(16777215).setBold(true);
         this.dehuzut.setStringBuilder(new Kybidu().setParams(Vibemod.futovaroc,{percent:this.offer.bonus}));
         this.dehuzut.filters=[new DropShadowFilter(0,0,0)];
         this.ryfoc.push(this.dehuzut.textChanged);
         this.container.addChild(this.dehuzut);
         return;
      }

      private function delobawas() : void {
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
         this.taglineText=new Guzowoja().setSize(18).setColor(8891485);
         this.taglineText.setStringBuilder(new Kybidu().setParams(this.offer.tagline));
         this.taglineText.filters=[new DropShadowFilter(0,0,0)];
         this.ryfoc.push(this.taglineText.textChanged);
         this.container.addChild(this.taglineText);
         return;
      }

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cibi.x=this.mikipu.x+70;
         this.cibi.y=this.velyhiniq.height/2-this.cibi.height/2;
         this.mudis.x=200;
         this.mudis.y=this.velyhiniq.height/2-this.mudis.height/2;
         if(this.dehuzut)
         {
            this.dehuzut.x=280;
            this.dehuzut.y=this.velyhiniq.height/2-this.dehuzut.height/2;
         }
         this.taglineText.x=400;
         this.taglineText.y=this.velyhiniq.height/2-this.taglineText.height/2;
         return;
      }

      private function gugebu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.kami?fumiqet:this.pyqusu?koty:kidylicut;
         this.background.setColor(_loc1_);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rewokeloc(true);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rewokeloc(false);
         return;
      }
   }

}