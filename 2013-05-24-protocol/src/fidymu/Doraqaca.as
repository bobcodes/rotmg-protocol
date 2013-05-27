package fidymu
{
   import flash.display.Sprite;
   import qazoz.Gopefiro;
   import wujahega.Size;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Doraqaca extends Sprite
   {
      public function Doraqaca() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list=new Gopefiro();
         super();
         return;
      }

      public var list:Gopefiro;

      private var size:Size;

      private var zemejo:Sprite;

      private var zudar:Vector.<DisplayObject>;

      private var dym:Array;

      private var rujok:int;

      private var padding:int;

      private var deruqajyp:Array;

      private var rowajube:int;

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         this.list.setSize(param1);
         addChild(this.list);
         return;
      }

      public function gynivy(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.padding=param1;
         this.list.gynivy(param1);
         return;
      }

      public function setItems(param1:Array) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:DisplayObject = null;
         this.topu();
         for each (_loc2_ in param1)
         {
            this.addItem(_loc2_);
         }
         this.list.setItems(this.zudar);
         if(!param1.length)
         {
            return;
         }
         var _loc3_:DisplayObject = param1[0];
         this.rowajube=this.nikenoz()/_loc3_.width;
         return;
      }

      public function wepilyby() : Size {
         return this.size;
      }

      public function muqagibak() : Array {
         return this.dym;
      }

      public function getItem(param1:int) : DisplayObject {
         return this.dym[param1];
      }

      private function topu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.deruqajyp=[];
         this.dym=[];
         this.zudar=new Vector.<DisplayObject>();
         this.rujok=0;
         this.ziwecy();
         return;
      }

      private function addItem(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.position(param1);
         this.zemejo.addChild(param1);
         this.dym.push(param1);
         this.deruqajyp[this.deruqajyp.length-1].push(param1);
         return;
      }

      private function position(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.mujo(param1))
         {
            param1.x=0;
            this.ziwecy();
         }
         else
         {
            this.wevak(param1);
         }
         this.rujok=param1.x+param1.width;
         this.rujok=this.rujok+this.padding;
         return;
      }

      private function ziwecy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zemejo=new Sprite();
         this.zudar.push(this.zemejo);
         this.deruqajyp.push([]);
         return;
      }

      private function wevak(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.x=this.rujok;
         return;
      }

      private function mujo(param1:DisplayObject) : Boolean {
         return this.rujok+param1.width>this.nikenoz();
      }

      private function nikenoz() : int {
         return this.size.width-Gopefiro.rewafupa;
      }

      public function syza() : DisplayObject {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.dym.length)
         {
            return this.dym[0];
         }
         return null;
      }

      public function dureviq() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = null;
         if(this.deruqajyp.length)
         {
            _loc1_=this.deruqajyp[0];
            return _loc1_[this.rowajube-1];
         }
         return null;
      }

      public function wumovumam() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Array = null;
         if(this.deruqajyp.length>=2)
         {
            _loc1_=this.deruqajyp[this.deruqajyp.length-1];
            return _loc1_[0];
         }
         return null;
      }

      public function vyj() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = null;
         if(this.deruqajyp.length>=2)
         {
            _loc1_=this.deruqajyp[this.deruqajyp.length-1];
            return _loc1_[this.rowajube-1];
         }
         return null;
      }
   }

}