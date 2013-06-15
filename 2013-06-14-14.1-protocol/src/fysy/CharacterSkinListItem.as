package fysy
{
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import bemav.Taf;
   import flash.display.Bitmap;
   import mukyrosu.Qanyduk;
   import poho.Pom;
   import poho.Bul;
   import zewasu.Codi;
   import flash.filters.DropShadowFilter;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import com.company.assembleegameclient.util.Currency;
   import komi.Vibemod;
   import jediwip.Tunyhazo;
   import flash.geom.ColorTransform;
   import flash.display.Graphics;
   import com.company.util.MoreColorUtil;
   import qykifavol.Rulavowaz;


   public class CharacterSkinListItem extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterSkinListItem() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state=Bul.NULL;
         super();
         return;
      }

      public static const WIDTH:int = 420;

      public static const pybywy:int = 16;

      public static const HEIGHT:int = 60;

      private static const dud:uint = 8092539;

      private static const rotyryrog:uint = 5921370;

      private static const bot:uint = 2631720;

      private const cezugac:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.fuguwo);

      private const background:Shape = this.wutas();

      private const jywysan:Sprite = this.zesukad();

      private const nulopy:Guzowoja = this.wud();

      private const buhanad:Taf = this.suhe();

      private const wuqufiz:Bitmap = this.besipizyr();

      private const jyd:Guzowoja = this.cyvamaso();

      private const funymelen:Sprite = this.zesa();

      private const nur:Bumimany = this.cyhybymi();

      public const buy:Qanyduk = new Rulavowaz(this.funymelen,MouseEvent.CLICK);

      public const nifim:Qanyduk = new Qanyduk();

      public const out:Qanyduk = new Qanyduk();

      public const selected:Qanyduk = this.buhanad.fow;

      private var model:Pom;

      private var state:Bul;

      private var kami:Boolean = false;

      private var jizekicul:Bitmap;

      private var buyButton:Codi;

      private var pyqusu:Boolean;

      private function wutas() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         this.guviqejy(_loc1_.graphics,WIDTH);
         addChild(_loc1_);
         return _loc1_;
      }

      private function zesukad() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.x=8;
         _loc1_.y=4;
         addChild(_loc1_);
         return _loc1_;
      }

      private function wud() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setSize(18).setColor(16777215).setBold(true);
         _loc1_.x=75;
         _loc1_.y=15;
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }

      private function suhe() : Taf {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Taf = null;
         _loc1_=new Taf();
         _loc1_.setSelected(false);
         _loc1_.x=WIDTH-_loc1_.width-15;
         _loc1_.y=HEIGHT/2-_loc1_.height/2;
         addChild(_loc1_);
         return _loc1_;
      }

      private function besipizyr() : Bitmap {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = new Bitmap();
         _loc1_.scaleX=2;
         _loc1_.scaleY=2;
         _loc1_.visible=false;
         addChild(_loc1_);
         return _loc1_;
      }

      public function jico(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wuqufiz.bitmapData=param1;
         this.wuqufiz.x=this.jyd.x-this.wuqufiz.width-5;
         this.wuqufiz.y=this.jyd.y-this.wuqufiz.height*0.5;
         return;
      }

      private function cyvamaso() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = new Guzowoja().setSize(14).setColor(16777215);
         _loc1_.setVerticalAlign(Guzowoja.MIDDLE);
         addChild(_loc1_);
         return _loc1_;
      }

      private function zesa() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.x=WIDTH-pybywy;
         _loc1_.y=HEIGHT*0.5;
         addChild(_loc1_);
         return _loc1_;
      }

      private function cyhybymi() : Bumimany {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bumimany = null;
         _loc1_=new Bumimany();
         _loc1_.pyjaqolow.addOnce(this.hagac);
         _loc1_.y=-1;
         _loc1_.visible=false;
         addChild(_loc1_);
         return _loc1_;
      }

      public function nisopyba(param1:Codi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buyButton=param1;
         param1.zesi.add(this.heqo);
         this.funymelen.addChild(param1);
         param1.x=-param1.width;
         param1.y=-param1.height*0.5;
         this.funymelen.visible=this.state==Bul.PURCHASABLE;
         this.hagac();
         return;
      }

      private function heqo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.buyButton.x=-this.buyButton.width;
         return;
      }

      public function qymido(param1:Bitmap) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jizekicul=param1;
         return;
      }

      public function womude() : Pom {
         return this.model;
      }

      public function qej(param1:Pom) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model=param1;
         this.vynu(this.model);
         addEventListener(MouseEvent.MOUSE_OVER,this.nirohud);
         addEventListener(MouseEvent.MOUSE_OUT,this.raneqamy);
         return;
      }

      private function vynu(param1:Pom) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.state=this.model?this.model.dukat():Bul.NULL;
         this.fyty();
         this.zuwuby();
         this.nubyvag();
         this.hagac();
         this.gowek((this.model)&&(this.model.cosupeso()));
         return;
      }

      public function dukat() : Bul {
         return this.state;
      }

      private function fyty() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nulopy.setStringBuilder(new Kybidu().setParams(this.model?this.model.name:""));
         return;
      }

      private function zuwuby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.huh();
         this.jic();
         this.zofolet();
         this.miraz();
         return;
      }

      private function hagac() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nur.visible=((this.model)&&(this.model.limited))&&!(this.state==Bul.OWNED)&&!(this.state==Bul.PURCHASING);
         this.nur.x=(this.state==Bul.LOCKED||!this.buyButton?this.wuqufiz.x-5:this.funymelen.x+this.buyButton.x-15)-this.nur.width;
         return;
      }

      private function huh() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:* = this.state==Bul.OWNED;
         var _loc2_:* = this.state==Bul.PURCHASABLE;
         var _loc3_:* = this.state==Bul.PURCHASING;
         var _loc4_:* = this.state==Bul.LOCKED;
         this.buhanad.visible=_loc1_;
         this.wuqufiz.visible=_loc4_;
         this.jyd.visible=(_loc4_)||(_loc3_);
         return;
      }

      private function zofolet() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state==Bul.OWNED)
         {
            this.addEventListeners();
         }
         else
         {
            this.jidijekut();
         }
         return;
      }

      private function fuda() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.model?this.model.cost:0;
         this.buyButton.setPrice(_loc1_,Currency.win);
         return;
      }

      public function cosupeso() : Boolean {
         return this.kami;
      }

      public function gowek(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kami=(param1)&&this.state==Bul.OWNED;
         this.buhanad.setSelected(param1);
         this.jic();
         return;
      }

      private function nubyvag() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jyd.setStringBuilder(this.state==Bul.PURCHASING?new Kybidu().setParams(Vibemod.gonub):this.watyfiwy());
         this.jyd.x=WIDTH-this.jyd.width-15;
         this.jyd.y=HEIGHT/2;
         this.wuqufiz.x=this.jyd.x-this.wuqufiz.width-5;
         return;
      }

      private function watyfiwy() : Tunyhazo {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Kybidu = new Kybidu();
         var _loc2_:String = this.model?this.model.unlockLevel.toString():"";
         return _loc1_.setParams(Vibemod.bipo,{level:_loc2_});
      }

      private function addEventListeners() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      function jidijekut() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gowek(true);
         return;
      }

      private function nirohud(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pyqusu=true;
         this.jic();
         this.nifim.dispatch();
         return;
      }

      private function raneqamy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pyqusu=false;
         this.jic();
         this.out.dispatch();
         return;
      }

      private function jic() : void {
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
         if(this.state.cotaq())
         {
            return bot;
         }
         if((this.kami)||(this.pyqusu))
         {
            return dud;
         }
         return rotyryrog;
      }

      private function miraz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         filters=this.state==Bul.PURCHASING?[this.cezugac]:[];
         return;
      }

      public function setWidth(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.funymelen.x=param1-pybywy;
         this.jyd.x=param1-this.jyd.width-15;
         this.wuqufiz.x=this.jyd.x-this.wuqufiz.width-5;
         this.buhanad.x=param1-this.buhanad.width-15;
         this.hagac();
         this.guviqejy(this.background.graphics,param1);
         return;
      }

      private function guviqejy(param1:Graphics, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.clear();
         param1.beginFill(rotyryrog);
         param1.drawRect(0,0,param2,HEIGHT);
         param1.endFill();
         return;
      }
   }

}