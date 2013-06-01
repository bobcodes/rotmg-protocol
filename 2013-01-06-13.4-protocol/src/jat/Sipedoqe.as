package jat
{
[CLASS285]   import flash.display.Sprite;
   import gicuzum.Rulumyh;
   import lehih.Size;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Sipedoqe extends Sprite
   {
      public function Sipedoqe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.list=new Rulumyh();
         super();
         return;
      }

      public var list:Rulumyh;

      private var size:Size;

      private var sica:Sprite;

      private var sagyc:Vector.<DisplayObject>;

      private var kina:Array;

      private var quna:int;

      private var padding:int;

      private var kowyr:Array;

      private var lemo:int;

      public function setSize(param1:Size) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.size=param1;
         this.list.setSize(param1);
         addChild(this.list);
         return;
      }

      public function qege(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.padding=param1;
         this.list.qege(param1);
         return;
      }

      public function setItems(param1:Array) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:DisplayObject = null;
         this.viheloduw();
         for each (_loc2_ in param1)
         {
            this.addItem(_loc2_);
         }
         this.list.setItems(this.sagyc);
         if(!param1.length)
         {
            return;
         }
         var _loc3_:DisplayObject = param1[0];
         this.lemo=this.mahora()/_loc3_.width;
         return;
      }

      public function vucu() : Size {
         return this.size;
      }

      public function qedudel() : Array {
         return this.kina;
      }

      public function getItem(param1:int) : DisplayObject {
         return this.kina[param1];
      }

      private function viheloduw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kowyr=[];
         this.kina=[];
         this.sagyc=new Vector.<DisplayObject>();
         this.quna=0;
         this.dyvufuk();
         return;
      }

      private function addItem(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.position(param1);
         this.sica.addChild(param1);
         this.kina.push(param1);
         this.kowyr[this.kowyr.length-1].push(param1);
         return;
      }

      private function position(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.sav(param1))
         {
            param1.x=0;
            this.dyvufuk();
         }
         else
         {
            this.kejewo(param1);
         }
         this.quna=param1.x+param1.width;
         this.quna=this.quna+this.padding;
         return;
      }

      private function dyvufuk() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sica=new Sprite();
         this.sagyc.push(this.sica);
         this.kowyr.push([]);
         return;
      }

      private function kejewo(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.x=this.quna;
         return;
      }

      private function sav(param1:DisplayObject) : Boolean {
         return this.quna+param1.width>this.mahora();
      }

      private function mahora() : int {
         return this.size.width-Rulumyh.pogo;
      }

      public function fyt() : DisplayObject {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kina.length)
         {
            return this.kina[0];
         }
         return null;
      }

      public function nabod() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Array = null;
         if(this.kowyr.length)
         {
            _loc1_=this.kowyr[0];
            return _loc1_[this.lemo-1];
         }
         return null;
      }

      public function riwif() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = null;
         if(this.kowyr.length>=2)
         {
            _loc1_=this.kowyr[this.kowyr.length-1];
            return _loc1_[0];
         }
         return null;
      }

      public function pevez() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = null;
         if(this.kowyr.length>=2)
         {
            _loc1_=this.kowyr[this.kowyr.length-1];
            return _loc1_[this.lemo-1];
         }
         return null;
      }
   }
[/CLASS]
}