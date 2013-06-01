package nonyna
{
[CLASS1373]   import flash.display.Sprite;
   import civop.Bymuwujez;
   import com.company.assembleegameclient.util.offer.Offer;
   import helepebas.Wewizy;
   import civop.Depucytek;
   import gicuzum.Qugedy;
   import flash.display.BitmapData;
   import pudev.Capitu;
   import tidi.Dak;
   import flash.display.Bitmap;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.BitmapUtil;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;


   public class Qebawituk extends Sprite implements Bymuwujez
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qebawituk(param1:Offer, param2:Wewizy) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.offer=param1;
         this.config=param2;
         this.defozi();
         this.makeContainer();
         this.wisabu();
         this.bunun();
         this.lorywe();
         this.tezatepo();
         this.sisu();
         this.nuj();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.juwocez.complete.add(this.alignUI);
         return;
      }

      private static const wot:int = 7829367;

      private static const wukec:int = 5987163;

      private static const migy:int = 4539717;

      public var offer:Offer;

      private var config:Wewizy;

      private var background:Depucytek;

      private var container:Sprite;

      private var sak:Qugedy;

      private var zeci:BitmapData;

      private var mohirefo:Capitu;

      private var gedo:Capitu;

      private var zezynum:Capitu;

      private var taglineText:Capitu;

      private var gawuly:Boolean;

      private var dimopu:Boolean;

      private const juwocez:Dak = new Dak();

      public function getValue() : String {
         return this.offer.realmGold_.toString();
      }

      public function qokyfuza(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dimopu=param1;
         this.rar();
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gawuly=param1;
         this.sak.setSelected(param1);
         this.rar();
         return;
      }

      public function showBonus(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.zezynum)
         {
            this.zezynum.visible=param1;
         }
         return;
      }

      private function defozi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=new Depucytek();
         this.background.setSize(520,36);
         this.rar();
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

      private function wisabu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sak=new Qugedy();
         this.sak.x=3;
         this.container.addChild(this.sak);
         return;
      }

      private function bunun() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = null;
         this.zeci=AssetLibrary.zovy("lofiObj3",225);
         this.zeci=TextureRedrawer.redraw(this.zeci,50,true,0,0,false);
         this.zeci=BitmapUtil.wukofy(this.zeci,8,8,this.zeci.width-16,this.zeci.height-16);
         _loc1_=new Bitmap(this.zeci);
         _loc1_.x=this.sak.x+35;
         this.container.addChild(_loc1_);
         return;
      }

      private function lorywe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mohirefo=new Capitu().setSize(18).setColor(16777215).setBold(true);
         this.mohirefo.setStringBuilder(new Zufi().setParams(Kefyfa.lyl,{amount:this.offer.realmGold_}));
         this.mohirefo.filters=[new DropShadowFilter(0,0,0)];
         this.juwocez.push(this.mohirefo.textChanged);
         this.container.addChild(this.mohirefo);
         return;
      }

      private function tezatepo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gedo=new Capitu().setSize(18).setColor(16777215).setBold(true);
         this.gedo.setStringBuilder(this.config.lalemog(this.offer));
         this.gedo.filters=[new DropShadowFilter(0,0,0)];
         this.juwocez.push(this.gedo.textChanged);
         this.container.addChild(this.gedo);
         return;
      }

      private function sisu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.offer.bonus==0)
         {
            return;
         }
         this.zezynum=new Capitu().setSize(18).setColor(16777215).setBold(true);
         this.zezynum.setStringBuilder(new Zufi().setParams(Kefyfa.rijula,{percent:this.offer.bonus}));
         this.zezynum.filters=[new DropShadowFilter(0,0,0)];
         this.juwocez.push(this.zezynum.textChanged);
         this.container.addChild(this.zezynum);
         return;
      }

      private function nuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.offer.tagline!=null)
         {
            this.makeTaglineText();
         }
         return;
      }

      private function makeTaglineText() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.taglineText=new Capitu().setSize(18).setColor(8891485);
         this.taglineText.setStringBuilder(new Zufi().setParams(this.offer.tagline));
         this.taglineText.filters=[new DropShadowFilter(0,0,0)];
         this.juwocez.push(this.taglineText.textChanged);
         this.container.addChild(this.taglineText);
         return;
      }

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mohirefo.x=this.sak.x+70;
         this.mohirefo.y=this.zeci.height/2-this.mohirefo.height/2;
         this.gedo.x=200;
         this.gedo.y=this.zeci.height/2-this.gedo.height/2;
         if(this.zezynum)
         {
            this.zezynum.x=280;
            this.zezynum.y=this.zeci.height/2-this.zezynum.height/2;
         }
         this.taglineText.x=400;
         this.taglineText.y=this.zeci.height/2-this.taglineText.height/2;
         return;
      }

      private function rar() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.gawuly?wot:this.dimopu?wukec:migy;
         this.background.setColor(_loc1_);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qokyfuza(true);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qokyfuza(false);
         return;
      }
   }
[/CLASS]
}