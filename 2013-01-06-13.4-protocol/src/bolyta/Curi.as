package bolyta
{
[CLASS1748]   import flash.display.Sprite;
   import fyvanod.Halak;
   import pogefeqeh.Wahovy;
   import flash.display.DisplayObject;
   import qypupet.Vuravipyg;


   public class Curi extends Sprite
   {
      public function Curi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var livutygok:Halak;

      public var viqelo:Wahovy;

      public var wypu:Wisisale;

      public var miky:Wisisale;

      public var hucuposeg:DisplayObject;

      private var petVO:Vuravipyg;

      public function sukymu(param1:Vuravipyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.livutygok.ruq=8;
         this.petVO=param1;
         this.miky=this.gafuwelab();
         this.wypu=this.gafuwelab();
         this.gurejakyr(param1);
         this.roli();
         return;
      }

      public function zujadogym() : Vuravipyg {
         return this.petVO;
      }

      private function gurejakyr(param1:Vuravipyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hucuposeg=this.livutygok.create(param1,120);
         this.hucuposeg.x=-1*this.hucuposeg.width/2;
         this.hucuposeg.y=-1*this.hucuposeg.height/2;
         addChild(this.hucuposeg);
         return;
      }

      private function roli() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.miky.mudug=50;
         this.wypu.mudug=this.miky.mudug*1.5;
         var _loc1_:Number = 0.7;
         this.wypu.width=this.miky.width*_loc1_;
         this.wypu.height=this.miky.height*_loc1_;
         this.wypu.alpha=this.miky.alpha=0.7;
         return;
      }

      private function gafuwelab() : Wisisale {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Wisisale = this.viqelo.getInstance(Wisisale);
         addChild(_loc1_);
         return _loc1_;
      }
   }
[/CLASS]
}