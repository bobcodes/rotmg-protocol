package gib
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import cadawowy.Gizafuf;
   import ruwysepyd.Junefolef;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import cadawowy.Kacyhoty;
   import flash.display.DisplayObject;
   import tif.Buhypare;
   import wujahega.Layout;


   public class Zamiparal extends Sprite
   {
      public function Zamiparal(param1:Vector.<String>) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.zoziduqu=param1;
         this.jiguvovu.complete.add(this.judorar);
         this.tyloqyr();
         this.judorar();
         this.vefeg();
         return;
      }

      private var zoziduqu:Vector.<String>;

      private var jut:Vector.<Nagocas>;

      private var group:Gizafuf;

      private const jiguvovu:Junefolef = new Junefolef();

      public function setSelected(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.group.setSelected(param1);
         return;
      }

      public function zega() : String {
         return this.group.zega().getValue();
      }

      private function tyloqyr() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.zoziduqu.length;
         this.jut=new Vector.<Nagocas>(_loc1_,true);
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.jut[_loc2_]=this.wabetaji(this.zoziduqu[_loc2_]);
            _loc2_++;
         }
         return;
      }

      private function wabetaji(param1:String) : Nagocas {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagocas = new Nagocas(param1);
         _loc2_.addEventListener(MouseEvent.CLICK,this.pamucelo);
         this.jiguvovu.push(_loc2_.tom);
         addChild(_loc2_);
         return _loc2_;
      }

      private function pamucelo(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Kacyhoty = param1.currentTarget as Kacyhoty;
         this.group.setSelected(_loc2_.getValue());
         return;
      }

      private function judorar() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<DisplayObject> = this.kovofu();
         var _loc2_:Layout = new Buhypare();
         _loc2_.gynivy(20);
         _loc2_.layout(_loc1_);
         return;
      }

      private function kovofu() : Vector.<DisplayObject> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.jut.length;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.jut[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      private function vefeg() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vector.<Kacyhoty> = this.rycupeze();
         this.group=new Gizafuf(_loc1_);
         this.group.setSelected(this.jut[0].getValue());
         return;
      }

      private function rycupeze() : Vector.<Kacyhoty> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.jut.length;
         var _loc2_:Vector.<Kacyhoty> = new Vector.<Kacyhoty>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.jut[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }
   }

}