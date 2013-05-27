package naqo
{
   import flash.display.Sprite;
   import coh.Jumekama;
   import kyco.Nun;
   import flash.display.DisplayObject;
   import zoroc.Bezuco;


   public class Vuha extends Sprite
   {
      public function Vuha() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var kaqotetuh:Jumekama;

      public var cemohoqal:Nun;

      public var zykohu:Bypyceqoq;

      public var cykyhopu:Bypyceqoq;

      public var danyz:DisplayObject;

      private var petVO:Bezuco;

      public function tavulaju(param1:Bezuco) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kaqotetuh.vyzesyv=8;
         this.petVO=param1;
         this.cykyhopu=this.havoz();
         this.zykohu=this.havoz();
         this.mijifozem(param1);
         this.kosunoh();
         return;
      }

      public function guj() : Bezuco {
         return this.petVO;
      }

      private function mijifozem(param1:Bezuco) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.danyz=this.kaqotetuh.create(param1,120);
         this.danyz.x=-1*this.danyz.width/2;
         this.danyz.y=-1*this.danyz.height/2;
         addChild(this.danyz);
         return;
      }

      private function kosunoh() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.cykyhopu.nab=50;
         this.zykohu.nab=this.cykyhopu.nab*1.5;
         var _loc1_:Number = 0.7;
         this.zykohu.width=this.cykyhopu.width*_loc1_;
         this.zykohu.height=this.cykyhopu.height*_loc1_;
         this.zykohu.alpha=this.cykyhopu.alpha=0.7;
         return;
      }

      private function havoz() : Bypyceqoq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bypyceqoq = this.cemohoqal.getInstance(Bypyceqoq);
         addChild(_loc1_);
         return _loc1_;
      }
   }

}