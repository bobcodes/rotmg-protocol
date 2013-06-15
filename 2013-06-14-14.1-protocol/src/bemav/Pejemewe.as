package bemav
{
   import flash.display.Sprite;
   import typoc.Vymy;
   import mukyrosu.Qanyduk;
   import pokaceseb.Tuk;
   import pokaceseb.Qyfunasuw;
   import typoc.Size;
   import flash.display.DisplayObject;
   import __AS3__.vec.Vector;


   public class Pejemewe extends Sprite implements Vymy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pejemewe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.qidig();
         this.coz();
         this.rudap();
         return;
      }

      public static const kerewetu:int = 2;

      public static const fewafawih:int = Bomuru.WIDTH+kerewetu;

      public const bozari:Qanyduk = new Qanyduk(Boolean);

      private var layout:Tuk;

      private var list:Qyfunasuw;

      private var scrollbar:Bomuru;

      private var isEnabled:Boolean = true;

      private var size:Size;

      public function metybiq() : Boolean {
         return this.isEnabled;
      }

      public function tihuloca(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.isEnabled=param1;
         this.scrollbar.tihuloca(param1);
         return;
      }

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         if(this.qucetan())
         {
            param1=new Size(param1.width-fewafawih,param1.height);
         }
         this.list.setSize(param1);
         this.dytecu();
         return;
      }

      public function dahekuq() : Size {
         return this.size;
      }

      public function wysycoviw(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.layout.wysycoviw(param1);
         this.list.zuza();
         this.dytecu();
         return;
      }

      public function addItem(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.addItem(param1);
         return;
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.list.setItems(param1);
         return;
      }

      public function nyqe(param1:int) : DisplayObject {
         return this.list.nyqe(param1);
      }

      public function tilolyhu() : int {
         return this.list.tilolyhu();
      }

      public function bika() : int {
         return this.list.gujuno().height;
      }

      private function qidig() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.layout=new Tuk();
         return;
      }

      public function qucetan() : Boolean {
         return this.scrollbar.visible;
      }

      private function coz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.list=new Qyfunasuw();
         this.list.qepiw.add(this.dytecu);
         this.list.cegoh(this.layout);
         addChild(this.list);
         return;
      }

      private function dytecu() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc1_:Size = this.list.dahekuq();
         var _loc2_:int = _loc1_.height;
         _loc3_=this.list.gujuno().height;
         _loc4_=_loc3_>_loc2_;
         _loc5_=!(this.scrollbar.visible==_loc4_);
         this.scrollbar.visible=_loc4_;
         return;
      }

      private function leduhira(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSize(this.size);
         this.bozari.dispatch(param1);
         return;
      }

      private function poqasu(param1:int, param2:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = param1*param1/param2;
         this.scrollbar.setSize(_loc3_,param1);
         this.scrollbar.x=this.list.dahekuq().width+kerewetu;
         return;
      }

      private function rudap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.scrollbar=new Bomuru();
         this.scrollbar.lonuryc.add(this.mutekagal);
         this.scrollbar.visible=false;
         addChild(this.scrollbar);
         return;
      }

      private function mutekagal(param1:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.list.gujuno().height-this.list.dahekuq().height;
         this.list.qoquj(_loc2_*param1);
         return;
      }
   }

}