package qazoz
{
   import flash.display.Sprite;
   import wujahega.Nub;
   import tulunyno.Hugyqufyq;
   import tif.Hokizeka;
   import tif.Zaputuga;
   import wujahega.Size;
   import flash.display.DisplayObject;
   import __AS3__.vec.Vector;


   public class Gopefiro extends Sprite implements Nub
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gopefiro() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.rej();
         this.bycogo();
         this.kij();
         return;
      }

      public static const bogu:int = 2;

      public static const rewafupa:int = Mibifose.WIDTH+bogu;

      public const luhofy:Hugyqufyq = new Hugyqufyq(Boolean);

      private var layout:Hokizeka;

      private var list:Zaputuga;

      private var scrollbar:Mibifose;

      private var isEnabled:Boolean = true;

      private var size:Size;

      public function susik() : Boolean {
         return this.isEnabled;
      }

      public function refedo(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.isEnabled=param1;
         this.scrollbar.refedo(param1);
         return;
      }

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         if(this.nabesom())
         {
            param1=new Size(param1.width-rewafupa,param1.height);
         }
         this.list.setSize(param1);
         this.gilu();
         return;
      }

      public function wepilyby() : Size {
         return this.size;
      }

      public function gynivy(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.layout.gynivy(param1);
         this.list.gizu();
         this.gilu();
         return;
      }

      public function addItem(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.addItem(param1);
         return;
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.setItems(param1);
         return;
      }

      public function dytipahir(param1:int) : DisplayObject {
         return this.list.dytipahir(param1);
      }

      public function qetodufeq() : int {
         return this.list.qetodufeq();
      }

      public function vuc() : int {
         return this.list.cil().height;
      }

      private function rej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.layout=new Hokizeka();
         return;
      }

      public function nabesom() : Boolean {
         return this.scrollbar.visible;
      }

      private function bycogo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.list=new Zaputuga();
         this.list.dabyfa.add(this.gilu);
         this.list.qih(this.layout);
         addChild(this.list);
         return;
      }

      private function gilu() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc1_:Size = this.list.wepilyby();
         _loc2_=_loc1_.height;
         _loc3_=this.list.cil().height;
         _loc4_=_loc3_>_loc2_;
         _loc5_=!(this.scrollbar.visible==_loc4_);
         this.scrollbar.visible=_loc4_;
         return;
      }

      private function movyvufif(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSize(this.size);
         this.luhofy.dispatch(param1);
         return;
      }

      private function hyveguh(param1:int, param2:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = param1*param1/param2;
         this.scrollbar.setSize(_loc3_,param1);
         this.scrollbar.x=this.list.wepilyby().width+bogu;
         return;
      }

      private function kij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.scrollbar=new Mibifose();
         this.scrollbar.lyneqop.add(this.fosykaruz);
         this.scrollbar.visible=false;
         addChild(this.scrollbar);
         return;
      }

      private function fosykaruz(param1:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.list.cil().height-this.list.wepilyby().height;
         this.list.wiboce(_loc2_*param1);
         return;
      }
   }

}