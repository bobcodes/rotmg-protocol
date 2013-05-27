package nico
{
   import flash.display.Sprite;
   import vahejo.Tetywybil;
   import sakugyt.Mecunenim;
   import flash.display.Shape;
   import biqacufo.Kofapije;
   import com.company.rotmg.graphics.ScreenGraphic;
   import sakugyt.Tiqigawul;
   import tulunyno.Hugyqufyq;
   import ruwysepyd.Junefolef;
   import tys.Fumityger;
   import flash.text.TextFieldAutoSize;
   import movimet.Lufub;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;


   public class Mivivibif extends Sprite
   {
      public function Mivivibif() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const base:Tetywybil = this.nobypu();

      private const account:Mecunenim = this.kohafo();

      private const ruqos:Shape = this.tegu();

      private const qilerites:Kofapije = this.cidiful();

      private const bywudo:ScreenGraphic = this.sygutuv();

      private const domo:Tiqigawul = this.fykuletit();

      private const leh:Tiqigawul = this.sesu();

      private const list:Cugeti = this.bokaqigoc();

      private const laseqeg:ClassDetailView = this.zebatih();

      public const play:Hugyqufyq = new Zojygese(this.domo,MouseEvent.CLICK);

      public const back:Hugyqufyq = new Zojygese(this.leh,MouseEvent.CLICK);

      public const jiguvovu:Junefolef = this.hejusogi();

      private function nobypu() : Tetywybil {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tetywybil = new Tetywybil();
         addChild(_loc1_);
         return _loc1_;
      }

      private function kohafo() : Mecunenim {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Mecunenim = new Mecunenim();
         addChild(_loc1_);
         return _loc1_;
      }

      private function cidiful() : Kofapije {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kofapije = null;
         _loc1_=new Kofapije();
         _loc1_.x=800;
         _loc1_.y=20;
         addChild(_loc1_);
         return _loc1_;
      }

      private function tegu() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.clear();
         _loc1_.graphics.lineStyle(2,5526612);
         _loc1_.graphics.moveTo(0,105);
         _loc1_.graphics.lineTo(800,105);
         _loc1_.graphics.moveTo(346,105);
         _loc1_.graphics.lineTo(346,526);
         addChild(_loc1_);
         return _loc1_;
      }

      private function sygutuv() : ScreenGraphic {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ScreenGraphic = new ScreenGraphic();
         addChild(_loc1_);
         return _loc1_;
      }

      private function fykuletit() : Tiqigawul {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tiqigawul = null;
         _loc1_=new Tiqigawul(Fumityger.wage,36,false);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.setVerticalAlign(Lufub.MIDDLE);
         _loc1_.x=400-_loc1_.width/2;
         _loc1_.y=550;
         addChild(_loc1_);
         return _loc1_;
      }

      private function sesu() : Tiqigawul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tiqigawul = new Tiqigawul(Fumityger.luc,22,false);
         _loc1_.setVerticalAlign(Lufub.MIDDLE);
         _loc1_.x=30;
         _loc1_.y=550;
         addChild(_loc1_);
         return _loc1_;
      }

      private function bokaqigoc() : Cugeti {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cugeti = new Cugeti();
         _loc1_.x=351;
         _loc1_.y=110;
         addChild(_loc1_);
         return _loc1_;
      }

      private function zebatih() : ClassDetailView {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ClassDetailView = new ClassDetailView();
         _loc1_.x=5;
         _loc1_.y=110;
         addChild(_loc1_);
         return _loc1_;
      }

      public function wynetuda(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!param1)
         {
            this.domo.deactivate();
         }
         return;
      }

      private function hejusogi() : Junefolef {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.domo.seda);
         _loc1_.complete.add(this.vymi);
         return _loc1_;
      }

      private function vymi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.domo.x=stage.stageWidth/2;
         return;
      }
   }

}