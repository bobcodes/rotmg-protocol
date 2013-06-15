package pejycaj
{
   import flash.display.Sprite;
   import wenono.Nuri;
   import flash.display.DisplayObjectContainer;
   import haj.Res;
   import bivecenym.Dyqed;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import qykifavol.Hydydyqas;
   import hyjabu.Rubib;
   import nyqojafof.Relaseka;
   import jediwip.Kybidu;
   import flash.text.TextFieldAutoSize;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;


   public class Mudosorug extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mudosorug() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const WIDTH:int = 274;

      public static const HEIGHT:int = 338;

      public static const TITLE:String = "ArenaQueryPanel.title";

      public static const CLOSE:String = "Close.text";

      public static const wyfi:String = "ArenaQueryDialog.info";

      public static const bivymyfyz:String = "Screens.back";

      private const gezu:Nuri = this.fico();

      private const container:DisplayObjectContainer = this.makeContainer();

      private const background:Res = this.wutas();

      private const host:Dyqed = this.dufaz();

      private const title:Guzowoja = this.haq();

      private const fyhy:Tivinu = this.simu();

      public const ridysole:Hydydyqas = new Hydydyqas(this.fyhy,MouseEvent.CLICK);

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
         _loc1_.layout(WIDTH,this.fyhy);
         return;
      }

      private function makeContainer() : DisplayObjectContainer {
         var _loc2_:* = false;
         var _loc3_:* = true;
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

      private function dufaz() : Dyqed {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dyqed = null;
         _loc1_=new Dyqed();
         _loc1_.x=20;
         _loc1_.y=50;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = Relaseka.guta(16777215,18,true);
         _loc1_.setStringBuilder(new Kybidu().setParams(TITLE));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.y=24;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function simu() : Tivinu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tivinu = new Tivinu(16,bivymyfyz,80);
         this.container.addChild(_loc1_);
         this.gezu.push(_loc1_.textChanged);
         _loc1_.y=292;
         return _loc1_;
      }

      private function dozal() : Tivinu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tivinu = null;
         _loc1_=new Tivinu(16,CLOSE,110);
         _loc1_.y=292;
         this.container.addChild(_loc1_);
         this.gezu.push(_loc1_.textChanged);
         return _loc1_;
      }

      public function cozym(param1:BitmapData) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.host.cozym(param1);
         return;
      }
   }

}