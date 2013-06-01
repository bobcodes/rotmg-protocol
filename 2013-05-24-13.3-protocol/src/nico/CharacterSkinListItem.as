package nico
{
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Shape;
   import movimet.Lufub;
   import qazoz.Luwehub;
   import flash.display.Bitmap;
   import tulunyno.Hugyqufyq;
   import fulaw.Dasin;
   import fulaw.Wuduler;
   import kedohuz.Wizaniq;
   import flash.filters.DropShadowFilter;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import nec.Sire;
   import com.company.assembleegameclient.util.Currency;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Zirewe;
   import flash.geom.ColorTransform;
   import flash.display.Graphics;
   import com.company.util.MoreColorUtil;
   import gyzesuqu.Zojygese;


   public class CharacterSkinListItem extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function CharacterSkinListItem() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state=Wuduler.NULL;
         super();
         return;
      }

      public static const WIDTH:int = 420;

      public static const pyzifok:int = 16;

      public static const HEIGHT:int = 60;

      private static const bejudy:uint = 8092539;

      private static const mytyrerok:uint = 5921370;

      private static const rukobuho:uint = 2631720;

      private const fyfydejigi:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.lyheq);

      private const background:Shape = this.gehepu();

      private const roqyqic:Sprite = this.lakak();

      private const vuzet:Lufub = this.zofehafi();

      private const hysasut:Luwehub = this.posufigaz();

      private const jyc:Bitmap = this.galajeku();

      private const semifyti:Lufub = this.zyvabow();

      private const salosyp:Sprite = this.kapylib();

      private const vaqi:Pagodi = this.buzabe();

      public const buy:Hugyqufyq = new Zojygese(this.salosyp,MouseEvent.CLICK);

      public const mypikody:Hugyqufyq = new Hugyqufyq();

      public const out:Hugyqufyq = new Hugyqufyq();

      public const selected:Hugyqufyq = this.hysasut.seda;

      private var model:Dasin;

      private var state:Wuduler;

      private var murojywyh:Boolean = false;

      private var vup:Bitmap;

      private var buyButton:Wizaniq;

      private var nubi:Boolean;

      private function gehepu() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.tizyf(_loc1_.graphics,WIDTH);
         addChild(_loc1_);
         return _loc1_;
      }

      private function lakak() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.x=8;
         _loc1_.y=4;
         addChild(_loc1_);
         return _loc1_;
      }

      private function zofehafi() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = new Lufub().setSize(18).setColor(16777215).setBold(true);
         _loc1_.x=75;
         _loc1_.y=15;
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }

      private function posufigaz() : Luwehub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Luwehub = null;
         _loc1_=new Luwehub();
         _loc1_.setSelected(false);
         _loc1_.x=WIDTH-_loc1_.width-15;
         _loc1_.y=HEIGHT/2-_loc1_.height/2;
         addChild(_loc1_);
         return _loc1_;
      }

      private function galajeku() : Bitmap {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = new Bitmap();
         _loc1_.scaleX=2;
         _loc1_.scaleY=2;
         _loc1_.visible=false;
         addChild(_loc1_);
         return _loc1_;
      }

      public function lukowu(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jyc.bitmapData=param1;
         this.jyc.x=this.semifyti.x-this.jyc.width-5;
         this.jyc.y=this.semifyti.y-this.jyc.height*0.5;
         return;
      }

      private function zyvabow() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setSize(14).setColor(16777215);
         _loc1_.setVerticalAlign(Lufub.MIDDLE);
         addChild(_loc1_);
         return _loc1_;
      }

      private function kapylib() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.x=WIDTH-pyzifok;
         _loc1_.y=HEIGHT*0.5;
         addChild(_loc1_);
         return _loc1_;
      }

      private function buzabe() : Pagodi {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pagodi = null;
         _loc1_=new Pagodi();
         _loc1_.wofiq.addOnce(this.nywaqu);
         _loc1_.y=-1;
         _loc1_.visible=false;
         addChild(_loc1_);
         return _loc1_;
      }

      public function jal(param1:Wizaniq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buyButton=param1;
         param1.qecysiga.add(this.fevesen);
         this.salosyp.addChild(param1);
         param1.x=-param1.width;
         param1.y=-param1.height*0.5;
         this.salosyp.visible=this.state==Wuduler.PURCHASABLE;
         this.nywaqu();
         return;
      }

      private function fevesen() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buyButton.x=-this.buyButton.width;
         return;
      }

      public function zepipy(param1:Bitmap) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vup=param1;
         return;
      }

      public function wasyvohu() : Dasin {
         return this.model;
      }

      public function kyzosak(param1:Dasin) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model=param1;
         this.toko(this.model);
         addEventListener(MouseEvent.MOUSE_OVER,this.repopal);
         addEventListener(MouseEvent.MOUSE_OUT,this.jah);
         return;
      }

      private function toko(param1:Dasin) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.state=this.model?this.model.fepyzat():Wuduler.NULL;
         this.synusybys();
         this.qyduwofev();
         this.wudup();
         this.nywaqu();
         this.piloni((this.model)&&(this.model.ruqy()));
         return;
      }

      public function fepyzat() : Wuduler {
         return this.state;
      }

      private function synusybys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuzet.setStringBuilder(new Sire().setParams(this.model?this.model.name:""));
         return;
      }

      private function qyduwofev() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dofat();
         this.mejube();
         this.kofytagu();
         this.husegucuc();
         return;
      }

      private function nywaqu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vaqi.visible=((this.model)&&(this.model.limited))&&!(this.state==Wuduler.OWNED)&&!(this.state==Wuduler.PURCHASING);
         this.vaqi.x=(this.state==Wuduler.LOCKED||!this.buyButton?this.jyc.x-5:this.salosyp.x+this.buyButton.x-15)-this.vaqi.width;
         return;
      }

      private function dofat() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = this.state==Wuduler.OWNED;
         var _loc2_:* = this.state==Wuduler.PURCHASABLE;
         var _loc3_:* = this.state==Wuduler.PURCHASING;
         var _loc4_:* = this.state==Wuduler.LOCKED;
         this.hysasut.visible=_loc1_;
         this.jyc.visible=_loc4_;
         this.semifyti.visible=(_loc4_)||(_loc3_);
         return;
      }

      private function kofytagu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state==Wuduler.OWNED)
         {
            this.addEventListeners();
         }
         else
         {
            this.sasy();
         }
         return;
      }

      private function zezas() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.model?this.model.cost:0;
         this.buyButton.setPrice(_loc1_,Currency.fejubu);
         return;
      }

      public function ruqy() : Boolean {
         return this.murojywyh;
      }

      public function piloni(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.murojywyh=(param1)&&this.state==Wuduler.OWNED;
         this.hysasut.setSelected(param1);
         this.mejube();
         return;
      }

      private function wudup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.semifyti.setStringBuilder(this.state==Wuduler.PURCHASING?new Sire().setParams(I18nKeys.nygo):this.taha());
         this.semifyti.x=WIDTH-this.semifyti.width-15;
         this.semifyti.y=HEIGHT/2;
         this.jyc.x=this.semifyti.x-this.jyc.width-5;
         return;
      }

      private function taha() : Zirewe {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Sire = new Sire();
         var _loc2_:String = this.model?this.model.unlockLevel.toString():"";
         return _loc1_.setParams(I18nKeys.heqa,{level:_loc2_});
      }

      private function addEventListeners() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      function sasy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piloni(true);
         return;
      }

      private function repopal(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nubi=true;
         this.mejube();
         this.mypikody.dispatch();
         return;
      }

      private function jah(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nubi=false;
         this.mejube();
         this.out.dispatch();
         return;
      }

      private function mejube() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ColorTransform = this.background.transform.colorTransform;
         _loc1_.color=this.getColor();
         this.background.transform.colorTransform=_loc1_;
         return;
      }

      private function getColor() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state.cunu())
         {
            return rukobuho;
         }
         if((this.murojywyh)||(this.nubi))
         {
            return bejudy;
         }
         return mytyrerok;
      }

      private function husegucuc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         filters=this.state==Wuduler.PURCHASING?[this.fyfydejigi]:[];
         return;
      }

      public function setWidth(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.salosyp.x=param1-pyzifok;
         this.semifyti.x=param1-this.semifyti.width-15;
         this.jyc.x=this.semifyti.x-this.jyc.width-5;
         this.hysasut.x=param1-this.hysasut.width-15;
         this.nywaqu();
         this.tizyf(this.background.graphics,param1);
         return;
      }

      private function tizyf(param1:Graphics, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.clear();
         param1.beginFill(mytyrerok);
         param1.drawRect(0,0,param2,HEIGHT);
         param1.endFill();
         return;
      }
   }

}