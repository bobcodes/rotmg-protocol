package jat
{
[CLASS312]   import flash.display.Sprite;
   import tidi.Dak;
   import flash.display.DisplayObjectContainer;
   import fyvanod.Pyni;
   import fyvanod.Duvoridy;
   import pudev.Capitu;
   import fyvanod.Wiw;
   import com.company.assembleegameclient.ui.Cid;
   import tinava.Dab;
   import rorijof.Tysen;
   import kozaligov.Bapipe;
   import totuhare.Zufi;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import flash.display.BitmapData;
   import zehus.Kelapu;


   public class CaretakerQueryDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CaretakerQueryDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const WIDTH:int = 274;

      public static const HEIGHT:int = 428;

      public static const TITLE:String = "CaretakerQueryDialog.title";

      public static const hufefaven:String = "CaretakerQueryDialog.query";

      public static const CLOSE:String = "Close.text";

      public static const qyl:String = "Screens.back";

      public static const gisomofi:Array = [
                                                 {
                                                 category:"CaretakerQueryDialog.category_petYard",
                                                 info:"CaretakerQueryDialog.info_petYard"
                                                 }
                                                 ,
                                                 {
                                                 category:"CaretakerQueryDialog.category_pets",
                                                 info:"CaretakerQueryDialog.info_pets"
                                                 }
                                                 ,
                                                 {
                                                 category:"CaretakerQueryDialog.category_abilities",
                                                 info:"CaretakerQueryDialog.info_abilities"
                                                 }
                                                 ,
                                                 {
                                                 category:"CaretakerQueryDialog.category_feedingPets",
                                                 info:"CaretakerQueryDialog.info_feedingPets"
                                                 }
                                                 ,
                                                 {
                                                 category:"CaretakerQueryDialog.category_fusingPets",
                                                 info:"CaretakerQueryDialog.info_fusingPets"
                                                 }
                                                 ,
                                                 {
                                                 category:"CaretakerQueryDialog.category_evolution",
                                                 info:"CaretakerQueryDialog.info_evolution"
                                                 }
                                                 ];

      private const rezal:Dak = this.loko();

      private const container:DisplayObjectContainer = this.makeContainer();

      private const background:Pyni = this.fawug();

      private const caretaker:Duvoridy = this.posucemob();

      private const title:Capitu = this.jewyry();

      private const gafytajyvy:Wiw = this.qyfuqul();

      private const jevara:Cid = this.nerozav();

      private const giqezi:Cid = this.rafyte();

      public const closed:Dab = new Kelapu(this.giqezi,MouseEvent.CLICK);

      private function loko() : Dak {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dak = new Dak();
         _loc1_.complete.addOnce(this.migi);
         return _loc1_;
      }

      private function migi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tysen = new Tysen();
         _loc1_.layout(WIDTH,this.giqezi);
         _loc1_.layout(WIDTH,this.jevara);
         return;
      }

      private function makeContainer() : DisplayObjectContainer {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = null;
         _loc1_=new Sprite();
         _loc1_.x=(800-WIDTH)/2;
         _loc1_.y=(600-HEIGHT)/2;
         addChild(_loc1_);
         return _loc1_;
      }

      private function fawug() : Pyni {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pyni = new Pyni();
         _loc1_.draw(WIDTH,HEIGHT);
         _loc1_.gowureqiv(Pyni.HORIZONTAL_DIVISION,34);
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function posucemob() : Duvoridy {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Duvoridy = new Duvoridy();
         _loc1_.x=20;
         _loc1_.y=50;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function jewyry() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = Bapipe.kejajaqyv(16777215,18,true);
         _loc1_.setStringBuilder(new Zufi().setParams(TITLE));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.y=24;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function nerozav() : Cid {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cid = new Cid(16,qyl,80);
         _loc1_.y=382;
         _loc1_.visible=false;
         _loc1_.addEventListener(MouseEvent.CLICK,this.puwalo);
         this.container.addChild(_loc1_);
         this.rezal.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function puwalo(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.caretaker.lydip();
         this.gafytajyvy.visible=true;
         this.giqezi.visible=true;
         this.jevara.visible=false;
         return;
      }

      private function rafyte() : Cid {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cid = new Cid(16,CLOSE,110);
         _loc1_.y=382;
         this.container.addChild(_loc1_);
         this.rezal.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function qyfuqul() : Wiw {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Wiw = new Wiw(gisomofi);
         _loc1_.x=20;
         _loc1_.y=110;
         _loc1_.selected.add(this.hasala);
         this.container.addChild(_loc1_);
         this.rezal.push(_loc1_.ready);
         return _loc1_;
      }

      private function hasala(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gafytajyvy.visible=false;
         this.giqezi.visible=false;
         this.jevara.visible=true;
         this.caretaker.siqucofuh(param1);
         return;
      }

      public function ferevu(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.caretaker.ferevu(param1);
         return;
      }
   }
[/CLASS]
}