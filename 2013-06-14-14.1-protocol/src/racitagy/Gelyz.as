package racitagy
{
   import flash.display.Sprite;
   import haj.Res;
   import hivysif.Guzowoja;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.ui.Tivinu;
   import mukyrosu.Qanyduk;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import wenono.Nuri;
   import fypeba.Zikorur;


   public class Gelyz extends Sprite
   {
      public function Gelyz(param1:String, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.kugu=Hun;
         super();
         this.petName=param1;
         this.skinType=param2;
         this.nat.addEventListener(MouseEvent.MOUSE_DOWN,this.biheq);
         return;
      }

      private var kugu:Class;

      private const background:Res = Zikorur.tewim(289,279);

      private const kovo:Guzowoja = Zikorur.guta(16777215,18,true);

      private const hinilid:Guzowoja = Zikorur.guta(16777103,16,true);

      private const cibyhene:DisplayObject = new this.kugu();

      private const nat:Tivinu = new Tivinu(16,"Pets.sendToYard",120);

      public const closed:Qanyduk = new Qanyduk();

      var skinType:int;

      private var niraco:Bitmap;

      private var petName:String;

      private function biheq(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }

      public function init(param1:Bitmap) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.niraco=param1;
         this.zyje();
         this.meruvi();
         this.jifajenuj();
         this.deloporo();
         return;
      }

      private function zyje() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kovo.setStringBuilder(new Kybidu().setParams(Vibemod.bebifot));
         this.hinilid.setStringBuilder(new Kybidu().setParams(this.petName));
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closed.dispatch();
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cibyhene.y=31;
         addChild(this.background);
         addChild(this.kovo);
         addChild(this.hinilid);
         addChild(this.cibyhene);
         addChild(this.nat);
         addChild(this.niraco);
         return;
      }

      private function deloporo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kyri();
         this.niraco.x=(287-this.niraco.width)*0.5;
         this.cibyhene.x=1;
         this.cibyhene.y=32;
         this.niraco.x=this.niraco.x-5;
         this.niraco.y=41;
         return;
      }

      private function kyri() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(stage.stageWidth-this.width)*0.5;
         this.y=(stage.stageHeight-this.height)*0.5;
         return;
      }

      private function meruvi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.kovo.textChanged);
         _loc1_.push(this.hinilid.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         this.nat.textChanged.add(this.huwivu);
         return;
      }

      private function huwivu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nat.x=(287-this.nat.width)*0.5;
         this.nat.y=240;
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kovo.x=(287-this.kovo.width)*0.5;
         this.kovo.y=23;
         this.hinilid.x=(287-this.hinilid.width)*0.5;
         this.hinilid.y=230;
         return;
      }
   }

}