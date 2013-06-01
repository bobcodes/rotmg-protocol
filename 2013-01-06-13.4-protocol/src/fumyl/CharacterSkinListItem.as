package fumyl
{
[CLASS113]   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Shape;
   import pudev.Capitu;
   import gicuzum.Qugedy;
   import flash.display.Bitmap;
   import tinava.Dab;
   import tehakab.Copaqufiv;
   import tehakab.Dur;
   import codudij.Ramy;
   import flash.filters.DropShadowFilter;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import com.company.assembleegameclient.util.Currency;
   import haqakel.Kefyfa;
   import totuhare.Qebar;
   import flash.geom.ColorTransform;
   import flash.display.Graphics;
   import com.company.util.MoreColorUtil;
   import zehus.Kelapu;


   public class CharacterSkinListItem extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterSkinListItem() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.state=Dur.NULL;
         super();
         return;
      }

      public static const WIDTH:int = 420;

      public static const bykize:int = 16;

      public static const HEIGHT:int = 60;

      private static const pikudaz:uint = 8092539;

      private static const wyguc:uint = 5921370;

      private static const hekowid:uint = 2631720;

      private const rudawi:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.calysymes);

      private const background:Shape = this.fawug();

      private const caquzaw:Sprite = this.dylu();

      private const luwuz:Capitu = this.renutady();

      private const fibij:Qugedy = this.cijyjoq();

      private const bihefop:Bitmap = this.gyzovy();

      private const bad:Capitu = this.cujuc();

      private const wydugu:Sprite = this.gewin();

      private const sisule:Wizoh = this.motohu();

      public const buy:Dab = new Kelapu(this.wydugu,MouseEvent.CLICK);

      public const jotykug:Dab = new Dab();

      public const out:Dab = new Dab();

      public const selected:Dab = this.fibij.copysa;

      private var model:Copaqufiv;

      private var state:Dur;

      private var gawuly:Boolean = false;

      private var japig:Bitmap;

      private var buyButton:Ramy;

      private var dimopu:Boolean;

      private function fawug() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         this.qafu(_loc1_.graphics,WIDTH);
         addChild(_loc1_);
         return _loc1_;
      }

      private function dylu() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.x=8;
         _loc1_.y=4;
         addChild(_loc1_);
         return _loc1_;
      }

      private function renutady() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(18).setColor(16777215).setBold(true);
         _loc1_.x=75;
         _loc1_.y=15;
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }

      private function cijyjoq() : Qugedy {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Qugedy = null;
         _loc1_=new Qugedy();
         _loc1_.setSelected(false);
         _loc1_.x=WIDTH-_loc1_.width-15;
         _loc1_.y=HEIGHT/2-_loc1_.height/2;
         addChild(_loc1_);
         return _loc1_;
      }

      private function gyzovy() : Bitmap {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = new Bitmap();
         _loc1_.scaleX=2;
         _loc1_.scaleY=2;
         _loc1_.visible=false;
         addChild(_loc1_);
         return _loc1_;
      }

      public function godowu(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bihefop.bitmapData=param1;
         this.bihefop.x=this.bad.x-this.bihefop.width-5;
         this.bihefop.y=this.bad.y-this.bihefop.height*0.5;
         return;
      }

      private function cujuc() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu().setSize(14).setColor(16777215);
         _loc1_.setVerticalAlign(Capitu.MIDDLE);
         addChild(_loc1_);
         return _loc1_;
      }

      private function gewin() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.x=WIDTH-bykize;
         _loc1_.y=HEIGHT*0.5;
         addChild(_loc1_);
         return _loc1_;
      }

      private function motohu() : Wizoh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Wizoh = null;
         _loc1_=new Wizoh();
         _loc1_.robedihej.addOnce(this.syger);
         _loc1_.y=-1;
         _loc1_.visible=false;
         addChild(_loc1_);
         return _loc1_;
      }

      public function fotykes(param1:Ramy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buyButton=param1;
         param1.necilywe.add(this.lyr);
         this.wydugu.addChild(param1);
         param1.x=-param1.width;
         param1.y=-param1.height*0.5;
         this.wydugu.visible=this.state==Dur.PURCHASABLE;
         this.syger();
         return;
      }

      private function lyr() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.buyButton.x=-this.buyButton.width;
         return;
      }

      public function rug(param1:Bitmap) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.japig=param1;
         return;
      }

      public function salapy() : Copaqufiv {
         return this.model;
      }

      public function duzopuly(param1:Copaqufiv) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model=param1;
         this.kemy(this.model);
         addEventListener(MouseEvent.MOUSE_OVER,this.pysumejob);
         addEventListener(MouseEvent.MOUSE_OUT,this.dawatu);
         return;
      }

      private function kemy(param1:Copaqufiv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.state=this.model?this.model.farydowu():Dur.NULL;
         this.wege();
         this.tapomyn();
         this.sytegy();
         this.syger();
         this.ryb((this.model)&&(this.model.bawy()));
         return;
      }

      public function farydowu() : Dur {
         return this.state;
      }

      private function wege() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.luwuz.setStringBuilder(new Zufi().setParams(this.model?this.model.name:""));
         return;
      }

      private function tapomyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gynypepar();
         this.dote();
         this.wehar();
         this.niqaguvek();
         return;
      }

      private function syger() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sisule.visible=((this.model)&&(this.model.limited))&&!(this.state==Dur.OWNED)&&!(this.state==Dur.PURCHASING);
         this.sisule.x=(this.state==Dur.LOCKED||!this.buyButton?this.bihefop.x-5:this.wydugu.x+this.buyButton.x-15)-this.sisule.width;
         return;
      }

      private function gynypepar() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = this.state==Dur.OWNED;
         var _loc2_:* = this.state==Dur.PURCHASABLE;
         var _loc3_:* = this.state==Dur.PURCHASING;
         var _loc4_:* = this.state==Dur.LOCKED;
         this.fibij.visible=_loc1_;
         this.bihefop.visible=_loc4_;
         this.bad.visible=(_loc4_)||(_loc3_);
         return;
      }

      private function wehar() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state==Dur.OWNED)
         {
            this.addEventListeners();
         }
         else
         {
            this.nysaliji();
         }
         return;
      }

      private function fen() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.model?this.model.cost:0;
         this.buyButton.setPrice(_loc1_,Currency.vusap);
         return;
      }

      public function bawy() : Boolean {
         return this.gawuly;
      }

      public function ryb(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gawuly=(param1)&&this.state==Dur.OWNED;
         this.fibij.setSelected(param1);
         this.dote();
         return;
      }

      private function sytegy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bad.setStringBuilder(this.state==Dur.PURCHASING?new Zufi().setParams(Kefyfa.sopudytef):this.nitilug());
         this.bad.x=WIDTH-this.bad.width-15;
         this.bad.y=HEIGHT/2;
         this.bihefop.x=this.bad.x-this.bihefop.width-5;
         return;
      }

      private function nitilug() : Qebar {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Zufi = new Zufi();
         var _loc2_:String = this.model?this.model.unlockLevel.toString():"";
         return _loc1_.setParams(Kefyfa.fozapan,{level:_loc2_});
      }

      private function addEventListeners() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      function nysaliji() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryb(true);
         return;
      }

      private function pysumejob(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dimopu=true;
         this.dote();
         this.jotykug.dispatch();
         return;
      }

      private function dawatu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dimopu=false;
         this.dote();
         this.out.dispatch();
         return;
      }

      private function dote() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ColorTransform = this.background.transform.colorTransform;
         _loc1_.color=this.getColor();
         this.background.transform.colorTransform=_loc1_;
         return;
      }

      private function getColor() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.state.bepadetof())
         {
            return hekowid;
         }
         if((this.gawuly)||(this.dimopu))
         {
            return pikudaz;
         }
         return wyguc;
      }

      private function niqaguvek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         filters=this.state==Dur.PURCHASING?[this.rudawi]:[];
         return;
      }

      public function setWidth(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wydugu.x=param1-bykize;
         this.bad.x=param1-this.bad.width-15;
         this.bihefop.x=this.bad.x-this.bihefop.width-5;
         this.fibij.x=param1-this.fibij.width-15;
         this.syger();
         this.qafu(this.background.graphics,param1);
         return;
      }

      private function qafu(param1:Graphics, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.clear();
         param1.beginFill(wyguc);
         param1.drawRect(0,0,param2,HEIGHT);
         param1.endFill();
         return;
      }
   }
[/CLASS]
}