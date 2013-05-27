package naqo
{
   import flash.display.Sprite;
   import coh.Jumekama;
   import kyco.Nun;
   import flash.display.DisplayObject;
   import coh.Qewitu;
   import bisok.Cejih;
   import zoroc.Bezuco;
   import kabam.rotmg.assets.Tomuja;


   public class Mibis extends Sprite
   {
      public function Mibis() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(this.background);
         addChild(this.penijok);
         return;
      }

      public var kaqotetuh:Jumekama;

      public var cemohoqal:Nun;

      public var tymu:Peheqofup;

      public const background:DisplayObject = new Tomuja.EvolveBackground();

      public const penijok:DisplayObject = new Tomuja.EvolveBackground();

      public var lilyrom:Qewitu;

      public var ducyzy:Vuha;

      private var gijokutad:Cejih;

      public function qelusop(param1:Cejih) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kaqotetuh.vyzesyv=6;
         this.gijokutad=param1;
         this.devic(param1.lilyrom);
         this.qanybig(param1.hucogomy);
         addChild(this.tymu);
         this.tymu.zaqup.addOnce(this.padiquv);
         this.tymu.play();
         return;
      }

      public function behiziqo() : Cejih {
         return this.gijokutad;
      }

      private function qanybig(param1:Bezuco) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ducyzy=this.cemohoqal.getInstance(Vuha);
         this.ducyzy.tavulaju(param1);
         this.ducyzy.mask=this.penijok;
         this.ducyzy.x=this.background.width/2;
         this.ducyzy.y=this.background.height/2;
         return;
      }

      private function devic(param1:Bezuco) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lilyrom=this.kaqotetuh.create(param1,100);
         this.lilyrom.x=(this.background.width-this.lilyrom.width)/2;
         this.lilyrom.y=(this.background.height-this.lilyrom.height)/2;
         addChild(this.lilyrom);
         return;
      }

      private function padiquv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeChild(this.lilyrom);
         addChildAt(this.ducyzy,getChildIndex(this.tymu));
         return;
      }
   }

}