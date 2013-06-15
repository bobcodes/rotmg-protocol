package racitagy
{
   import flash.display.Sprite;
   import wenono.Nuri;
   import flash.display.DisplayObjectContainer;
   import haj.Res;
   import haj.Vory;
   import hivysif.Guzowoja;
   import haj.Feda;
   import com.company.assembleegameclient.ui.Tivinu;
   import mukyrosu.Qanyduk;
   import hyjabu.Rubib;
   import fypeba.Zikorur;
   import jediwip.Kybidu;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import flash.display.BitmapData;
   import qykifavol.Rulavowaz;


   public class CaretakerQueryDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CaretakerQueryDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const WIDTH:int = 274;

      public static const HEIGHT:int = 428;

      public static const TITLE:String = "CaretakerQueryDialog.title";

      public static const wyfi:String = "CaretakerQueryDialog.query";

      public static const CLOSE:String = "Close.text";

      public static const bivymyfyz:String = "Screens.back";

      public static const beryhe:Array = [
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

      private const gezu:Nuri = this.fico();

      private const container:DisplayObjectContainer = this.makeContainer();

      private const background:Res = this.wutas();

      private const caretaker:Vory = this.wizuby();

      private const title:Guzowoja = this.haq();

      private const rotywily:Feda = this.qifosan();

      private const fyhy:Tivinu = this.simu();

      private const gopubotag:Tivinu = this.dozal();

      public const closed:Qanyduk = new Rulavowaz(this.gopubotag,MouseEvent.CLICK);

      private function fico() : Nuri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nuri = new Nuri();
         _loc1_.complete.addOnce(this.tigu);
         return _loc1_;
      }

      private function tigu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Rubib = new Rubib();
         _loc1_.layout(WIDTH,this.gopubotag);
         _loc1_.layout(WIDTH,this.fyhy);
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

      private function wutas() : Res {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Res = new Res();
         _loc1_.draw(WIDTH,HEIGHT);
         _loc1_.jypihu(Res.HORIZONTAL_DIVISION,34);
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function wizuby() : Vory {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vory = new Vory();
         _loc1_.x=20;
         _loc1_.y=50;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = Zikorur.guta(16777215,18,true);
         _loc1_.setStringBuilder(new Kybidu().setParams(TITLE));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.y=24;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function simu() : Tivinu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tivinu = new Tivinu(16,bivymyfyz,80);
         _loc1_.y=382;
         _loc1_.visible=false;
         _loc1_.addEventListener(MouseEvent.CLICK,this.gomeranem);
         this.container.addChild(_loc1_);
         this.gezu.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function gomeranem(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.caretaker.dokowiwy();
         this.rotywily.visible=true;
         this.gopubotag.visible=true;
         this.fyhy.visible=false;
         return;
      }

      private function dozal() : Tivinu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tivinu = new Tivinu(16,CLOSE,110);
         _loc1_.y=382;
         this.container.addChild(_loc1_);
         this.gezu.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function qifosan() : Feda {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Feda = new Feda(beryhe);
         _loc1_.x=20;
         _loc1_.y=110;
         _loc1_.selected.add(this.joh);
         this.container.addChild(_loc1_);
         this.gezu.push(_loc1_.ready);
         return _loc1_;
      }

      private function joh(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rotywily.visible=false;
         this.gopubotag.visible=false;
         this.fyhy.visible=true;
         this.caretaker.wibulotavy(param1);
         return;
      }

      public function fapysiqo(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.caretaker.fapysiqo(param1);
         return;
      }
   }

}