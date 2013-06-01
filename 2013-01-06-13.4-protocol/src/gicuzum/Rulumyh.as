package gicuzum
{
[CLASS786]   import flash.display.Sprite;
   import lehih.Mysop;
   import tinava.Dab;
   import kezafezad.Vinac;
   import kezafezad.Lazahyq;
   import lehih.Size;
   import flash.display.DisplayObject;
   import __AS3__.vec.Vector;


   public class Rulumyh extends Sprite implements Mysop
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rulumyh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.zurawuv();
         this.qejizyvi();
         this.guz();
         return;
      }

      public static const tahegopev:int = 2;

      public static const pogo:int = Zacorafyg.WIDTH+tahegopev;

      public const huweqihi:Dab = new Dab(Boolean);

      private var layout:Vinac;

      private var list:Lazahyq;

      private var scrollbar:Zacorafyg;

      private var isEnabled:Boolean = true;

      private var size:Size;

      public function zekan() : Boolean {
         return this.isEnabled;
      }

      public function ricodelat(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.isEnabled=param1;
         this.scrollbar.ricodelat(param1);
         return;
      }

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         if(this.jure())
         {
            param1=new Size(param1.width-pogo,param1.height);
         }
         this.list.setSize(param1);
         this.zujyk();
         return;
      }

      public function vucu() : Size {
         return this.size;
      }

      public function qege(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.layout.qege(param1);
         this.list.mepipu();
         this.zujyk();
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

      public function wohoguwo(param1:int) : DisplayObject {
         return this.list.wohoguwo(param1);
      }

      public function vure() : int {
         return this.list.vure();
      }

      public function hocagydyq() : int {
         return this.list.sesybiho().height;
      }

      private function zurawuv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.layout=new Vinac();
         return;
      }

      public function jure() : Boolean {
         return this.scrollbar.visible;
      }

      private function qejizyvi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list=new Lazahyq();
         this.list.weco.add(this.zujyk);
         this.list.tadynamo(this.layout);
         addChild(this.list);
         return;
      }

      private function zujyk() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc1_:Size = this.list.vucu();
         _loc2_=_loc1_.height;
         _loc3_=this.list.sesybiho().height;
         _loc4_=_loc3_>_loc2_;
         _loc5_=!(this.scrollbar.visible==_loc4_);
         this.scrollbar.visible=_loc4_;
         return;
      }

      private function roho(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSize(this.size);
         this.huweqihi.dispatch(param1);
         return;
      }

      private function saditiwoh(param1:int, param2:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:int = param1*param1/param2;
         this.scrollbar.setSize(_loc3_,param1);
         this.scrollbar.x=this.list.vucu().width+tahegopev;
         return;
      }

      private function guz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.scrollbar=new Zacorafyg();
         this.scrollbar.gefowasep.add(this.rawikeca);
         this.scrollbar.visible=false;
         addChild(this.scrollbar);
         return;
      }

      private function rawikeca(param1:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.list.sesybiho().height-this.list.vucu().height;
         this.list.dabetedij(_loc2_*param1);
         return;
      }
   }
[/CLASS]
}