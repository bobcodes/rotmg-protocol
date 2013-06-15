package fysy
{
   import flash.display.Sprite;
   import qymoho.Taziw;
   import waryp.Cysaruha;
   import flash.display.Shape;
   import kofaz.Rynomyd;
   import com.company.rotmg.graphics.ScreenGraphic;
   import waryp.Nulejufyl;
   import mukyrosu.Qanyduk;
   import wenono.Nuri;
   import hivaw.Tyke;
   import flash.text.TextFieldAutoSize;
   import hivysif.Guzowoja;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;


   public class Dovo extends Sprite
   {
      public function Dovo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const base:Taziw = this.kivor();

      private const account:Cysaruha = this.hanunede();

      private const voci:Shape = this.wucijahef();

      private const jubeparyr:Rynomyd = this.wicomota();

      private const ficebedok:ScreenGraphic = this.jyg();

      private const munycyrov:Nulejufyl = this.rilynyti();

      private const dosugeku:Nulejufyl = this.simu();

      private const list:Caj = this.hoqiwyh();

      private const wawupu:ClassDetailView = this.qatege();

      public const play:Qanyduk = new Rulavowaz(this.munycyrov,MouseEvent.CLICK);

      public const back:Qanyduk = new Rulavowaz(this.dosugeku,MouseEvent.CLICK);

      public const ryfoc:Nuri = this.ryhoqopy();

      private function kivor() : Taziw {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Taziw = new Taziw();
         addChild(_loc1_);
         return _loc1_;
      }

      private function hanunede() : Cysaruha {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cysaruha = new Cysaruha();
         addChild(_loc1_);
         return _loc1_;
      }

      private function wicomota() : Rynomyd {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Rynomyd = null;
         _loc1_=new Rynomyd();
         _loc1_.x=800;
         _loc1_.y=20;
         addChild(_loc1_);
         return _loc1_;
      }

      private function wucijahef() : Shape {
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

      private function jyg() : ScreenGraphic {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ScreenGraphic = new ScreenGraphic();
         addChild(_loc1_);
         return _loc1_;
      }

      private function rilynyti() : Nulejufyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nulejufyl = null;
         _loc1_=new Nulejufyl(Tyke.ryteluli,36,false);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.setVerticalAlign(Guzowoja.MIDDLE);
         _loc1_.x=400-_loc1_.width/2;
         _loc1_.y=550;
         addChild(_loc1_);
         return _loc1_;
      }

      private function simu() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nulejufyl = new Nulejufyl(Tyke.bivymyfyz,22,false);
         _loc1_.setVerticalAlign(Guzowoja.MIDDLE);
         _loc1_.x=30;
         _loc1_.y=550;
         addChild(_loc1_);
         return _loc1_;
      }

      private function hoqiwyh() : Caj {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Caj = new Caj();
         _loc1_.x=351;
         _loc1_.y=110;
         addChild(_loc1_);
         return _loc1_;
      }

      private function qatege() : ClassDetailView {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ClassDetailView = new ClassDetailView();
         _loc1_.x=5;
         _loc1_.y=110;
         addChild(_loc1_);
         return _loc1_;
      }

      public function vukib(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!param1)
         {
            this.munycyrov.deactivate();
         }
         return;
      }

      private function ryhoqopy() : Nuri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.munycyrov.fow);
         _loc1_.complete.add(this.zycoco);
         return _loc1_;
      }

      private function zycoco() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.munycyrov.x=stage.stageWidth/2;
         return;
      }
   }

}