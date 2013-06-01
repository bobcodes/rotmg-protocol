package fumyl
{
[CLASS109]   import flash.display.Sprite;
   import rymuhuduh.Cyzan;
   import qilarag.Sinutuci;
   import flash.display.Shape;
   import rucedosu.Vekowuris;
   import com.company.rotmg.graphics.ScreenGraphic;
   import qilarag.Boqurot;
   import tinava.Dab;
   import tidi.Dak;
   import zohom.Syna;
   import flash.text.TextFieldAutoSize;
   import pudev.Capitu;
   import zehus.Kelapu;
   import flash.events.MouseEvent;


   public class Segodi extends Sprite
   {
      public function Segodi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const base:Cyzan = this.wosobafuca();

      private const account:Sinutuci = this.nuh();

      private const lih:Shape = this.pobo();

      private const zadyb:Vekowuris = this.pul();

      private const fejo:ScreenGraphic = this.kijy();

      private const mopod:Boqurot = this.qesywomuj();

      private const tuqus:Boqurot = this.nerozav();

      private const list:Kynabisi = this.widuha();

      private const hunilo:ClassDetailView = this.pugomomo();

      public const play:Dab = new Kelapu(this.mopod,MouseEvent.CLICK);

      public const back:Dab = new Kelapu(this.tuqus,MouseEvent.CLICK);

      public const juwocez:Dak = this.maduwe();

      private function wosobafuca() : Cyzan {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cyzan = new Cyzan();
         addChild(_loc1_);
         return _loc1_;
      }

      private function nuh() : Sinutuci {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sinutuci = new Sinutuci();
         addChild(_loc1_);
         return _loc1_;
      }

      private function pul() : Vekowuris {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vekowuris = null;
         _loc1_=new Vekowuris();
         _loc1_.x=800;
         _loc1_.y=20;
         addChild(_loc1_);
         return _loc1_;
      }

      private function pobo() : Shape {
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

      private function kijy() : ScreenGraphic {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ScreenGraphic = new ScreenGraphic();
         addChild(_loc1_);
         return _loc1_;
      }

      private function qesywomuj() : Boqurot {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boqurot = null;
         _loc1_=new Boqurot(Syna.hyqe,36,false);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.setVerticalAlign(Capitu.MIDDLE);
         _loc1_.x=400-_loc1_.width/2;
         _loc1_.y=550;
         addChild(_loc1_);
         return _loc1_;
      }

      private function nerozav() : Boqurot {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boqurot = new Boqurot(Syna.qyl,22,false);
         _loc1_.setVerticalAlign(Capitu.MIDDLE);
         _loc1_.x=30;
         _loc1_.y=550;
         addChild(_loc1_);
         return _loc1_;
      }

      private function widuha() : Kynabisi {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kynabisi = new Kynabisi();
         _loc1_.x=351;
         _loc1_.y=110;
         addChild(_loc1_);
         return _loc1_;
      }

      private function pugomomo() : ClassDetailView {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ClassDetailView = new ClassDetailView();
         _loc1_.x=5;
         _loc1_.y=110;
         addChild(_loc1_);
         return _loc1_;
      }

      public function seme(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!param1)
         {
            this.mopod.deactivate();
         }
         return;
      }

      private function maduwe() : Dak {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.mopod.copysa);
         _loc1_.complete.add(this.kim);
         return _loc1_;
      }

      private function kim() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mopod.x=stage.stageWidth/2;
         return;
      }
   }
[/CLASS]
}