package bolyta
{
[CLASS1547]   import flash.display.Sprite;
   import fyvanod.Halak;
   import pogefeqeh.Wahovy;
   import flash.display.DisplayObject;
   import fyvanod.Sal;
   import sanijijiz.Savututil;
   import qypupet.Vuravipyg;
   import kabam.rotmg.assets.Ceny;


   public class Jyd extends Sprite
   {
      public function Jyd() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(this.background);
         addChild(this.pymes);
         return;
      }

      public var livutygok:Halak;

      public var viqelo:Wahovy;

      public var zypipek:Div;

      public const background:DisplayObject = new Ceny.EvolveBackground();

      public const pymes:DisplayObject = new Ceny.EvolveBackground();

      public var tukelac:Sal;

      public var vezukaf:Curi;

      private var qyrobumaw:Savututil;

      public function hiz(param1:Savututil) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.livutygok.ruq=6;
         this.qyrobumaw=param1;
         this.myfajecag(param1.tukelac);
         this.bely(param1.dymylavup);
         addChild(this.zypipek);
         this.zypipek.mev.addOnce(this.hec);
         this.zypipek.play();
         return;
      }

      public function cogu() : Savututil {
         return this.qyrobumaw;
      }

      private function bely(param1:Vuravipyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vezukaf=this.viqelo.getInstance(Curi);
         this.vezukaf.sukymu(param1);
         this.vezukaf.mask=this.pymes;
         this.vezukaf.x=this.background.width/2;
         this.vezukaf.y=this.background.height/2;
         return;
      }

      private function myfajecag(param1:Vuravipyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tukelac=this.livutygok.create(param1,100);
         this.tukelac.x=(this.background.width-this.tukelac.width)/2;
         this.tukelac.y=(this.background.height-this.tukelac.height)/2;
         addChild(this.tukelac);
         return;
      }

      private function hec() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeChild(this.tukelac);
         addChildAt(this.vezukaf,getChildIndex(this.zypipek));
         return;
      }
   }
[/CLASS]
}