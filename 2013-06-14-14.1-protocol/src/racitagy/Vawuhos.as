package racitagy
{
   import flash.display.Sprite;
   import bemav.Pejemewe;
   import typoc.Size;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Vawuhos extends Sprite
   {
      public function Vawuhos() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list=new Pejemewe();
         super();
         return;
      }

      public var list:Pejemewe;

      private var size:Size;

      private var wiqibuso:Sprite;

      private var kyha:Vector.<DisplayObject>;

      private var mumun:Array;

      private var renyre:int;

      private var padding:int;

      private var buqus:Array;

      private var synadal:int;

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         this.list.setSize(param1);
         addChild(this.list);
         return;
      }

      public function wysycoviw(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.padding=param1;
         this.list.wysycoviw(param1);
         return;
      }

      public function setItems(param1:Array) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:DisplayObject = null;
         this.kumaridi();
         for each (_loc2_ in param1)
         {
            this.addItem(_loc2_);
         }
         this.list.setItems(this.kyha);
         if(!param1.length)
         {
            return;
         }
         var _loc3_:DisplayObject = param1[0];
         this.synadal=this.pyqo()/_loc3_.width;
         return;
      }

      public function dahekuq() : Size {
         return this.size;
      }

      public function jiku() : Array {
         return this.mumun;
      }

      public function getItem(param1:int) : DisplayObject {
         return this.mumun[param1];
      }

      private function kumaridi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.buqus=[];
         this.mumun=[];
         this.kyha=new Vector.<DisplayObject>();
         this.renyre=0;
         this.helab();
         return;
      }

      private function addItem(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.position(param1);
         this.wiqibuso.addChild(param1);
         this.mumun.push(param1);
         this.buqus[this.buqus.length-1].push(param1);
         return;
      }

      private function position(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.niqanyb(param1))
         {
            param1.x=0;
            this.helab();
         }
         else
         {
            this.benan(param1);
         }
         this.renyre=param1.x+param1.width;
         this.renyre=this.renyre+this.padding;
         return;
      }

      private function helab() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wiqibuso=new Sprite();
         this.kyha.push(this.wiqibuso);
         this.buqus.push([]);
         return;
      }

      private function benan(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.x=this.renyre;
         return;
      }

      private function niqanyb(param1:DisplayObject) : Boolean {
         return this.renyre+param1.width>this.pyqo();
      }

      private function pyqo() : int {
         return this.size.width-Pejemewe.fewafawih;
      }

      public function vogad() : DisplayObject {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mumun.length)
         {
            return this.mumun[0];
         }
         return null;
      }

      public function kacyd() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = null;
         if(this.buqus.length)
         {
            _loc1_=this.buqus[0];
            return _loc1_[this.synadal-1];
         }
         return null;
      }

      public function dehivun() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = null;
         if(this.buqus.length>=2)
         {
            _loc1_=this.buqus[this.buqus.length-1];
            return _loc1_[0];
         }
         return null;
      }

      public function vebyremon() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Array = null;
         if(this.buqus.length>=2)
         {
            _loc1_=this.buqus[this.buqus.length-1];
            return _loc1_[this.synadal-1];
         }
         return null;
      }
   }

}