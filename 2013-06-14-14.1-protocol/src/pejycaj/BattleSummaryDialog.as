package pejycaj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import bemav.Sigul;
   import bivecenym.BattleSummaryText;
   import hivysif.Liwyny;
   import sojakil.Tojytijib;
   import komi.Vibemod;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class BattleSummaryDialog extends Sprite
   {
      public function BattleSummaryDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.poseci=Demo;
         this.vef=this.haq();
         this.gopubotag=this.wemisusis();
         super();
         this.hitun(25);
         this.hitun(132);
         this.hitun(252);
         this.vodysizal();
         return;
      }

      private var poseci:Class;

      public const close:Qanyduk = new Qanyduk();

      private const WIDTH:int = 264;

      private const HEIGHT:int = 302;

      private const background:Sigul = this.wutas();

      private const byjigumom = this.gyjo();

      private var vyvaku:BattleSummaryText;

      private var dovu:BattleSummaryText;

      private var vef:Liwyny;

      private var gopubotag:Tojytijib;

      private function wutas() : Sigul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sigul = new Sigul();
         _loc1_.draw(this.WIDTH,this.HEIGHT);
         addChild(_loc1_);
         return _loc1_;
      }

      public function kyri() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         x=(stage.stageWidth-this.WIDTH)*0.5;
         y=(stage.stageHeight-this.HEIGHT)*0.5;
         return;
      }

      public function myky(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.vyvaku)
         {
            removeChild(this.vyvaku);
         }
         this.vyvaku=new BattleSummaryText(Vibemod.wyjyq,param1,param2);
         this.vyvaku.y=60-this.vyvaku.height/2+132;
         this.vyvaku.x=this.WIDTH/4-this.vyvaku.width/2;
         addChild(this.vyvaku);
         return;
      }

      public function moludi(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.dovu)
         {
            removeChild(this.dovu);
         }
         this.dovu=new BattleSummaryText(Vibemod.hyduj,param1,param2);
         this.dovu.y=60-this.dovu.height/2+132;
         this.dovu.x=this.WIDTH/4-this.dovu.width/2+this.WIDTH/2;
         addChild(this.dovu);
         return;
      }

      private function nub(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gopubotag.removeEventListener(MouseEvent.CLICK,this.nub);
         this.close.dispatch();
         return;
      }

      private function vodysizal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.graphics.lineStyle();
         this.background.graphics.beginFill(6710886,1);
         this.background.graphics.drawRect(this.WIDTH/2,132,2,120);
         this.background.graphics.endFill();
         return;
      }

      private function hitun(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.background.graphics.lineStyle();
         this.background.graphics.beginFill(6710886,1);
         this.background.graphics.drawRect(1,param1,this.background.width-2,2);
         this.background.graphics.endFill();
         return;
      }

      private function gyjo() : * {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = new this.poseci();
         _loc1_.y=27;
         _loc1_.x=2;
         addChild(_loc1_);
         return _loc1_;
      }

      private function haq() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = null;
         _loc1_=new Liwyny();
         _loc1_.setSize(18).setBold(true).setColor(11776947);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.mulitutun));
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.x=(this.WIDTH-_loc1_.width)*0.5;
         _loc1_.y=3;
         addChild(_loc1_);
         return _loc1_;
      }

      private function wemisusis() : Tojytijib {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tojytijib = new Tojytijib(16,Vibemod.poso,100);
         _loc1_.addEventListener(MouseEvent.CLICK,this.nub);
         _loc1_.y=this.HEIGHT-_loc1_.height-10;
         _loc1_.x=this.WIDTH/2-_loc1_.width/2;
         addChild(_loc1_);
         return _loc1_;
      }
   }

}