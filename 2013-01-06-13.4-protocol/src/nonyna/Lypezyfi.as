package nonyna
{
[CLASS711]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import civop.Qis;
   import tidi.Dak;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import civop.Bymuwujez;
   import flash.display.DisplayObject;
   import kezafezad.Quki;
   import lehih.Layout;


   public class Lypezyfi extends Sprite
   {
      public function Lypezyfi(param1:Vector.<String>) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.liqop=param1;
         this.juwocez.complete.add(this.rapiha);
         this.tuhasebu();
         this.rapiha();
         this.seteqozev();
         return;
      }

      private var liqop:Vector.<String>;

      private var bamudol:Vector.<Lafigok>;

      private var group:Qis;

      private const juwocez:Dak = new Dak();

      public function setSelected(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.group.setSelected(param1);
         return;
      }

      public function docew() : String {
         return this.group.docew().getValue();
      }

      private function tuhasebu() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = this.liqop.length;
         this.bamudol=new Vector.<Lafigok>(_loc1_,true);
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.bamudol[_loc2_]=this.segilo(this.liqop[_loc2_]);
            _loc2_++;
         }
         return;
      }

      private function segilo(param1:String) : Lafigok {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Lafigok = new Lafigok(param1);
         _loc2_.addEventListener(MouseEvent.CLICK,this.wyralovoz);
         this.juwocez.push(_loc2_.qydubyka);
         addChild(_loc2_);
         return _loc2_;
      }

      private function wyralovoz(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bymuwujez = param1.currentTarget as Bymuwujez;
         this.group.setSelected(_loc2_.getValue());
         return;
      }

      private function rapiha() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Vector.<DisplayObject> = this.gukamosa();
         var _loc2_:Layout = new Quki();
         _loc2_.qege(20);
         _loc2_.layout(_loc1_);
         return;
      }

      private function gukamosa() : Vector.<DisplayObject> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.bamudol.length;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.bamudol[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      private function seteqozev() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<Bymuwujez> = this.rutivur();
         this.group=new Qis(_loc1_);
         this.group.setSelected(this.bamudol[0].getValue());
         return;
      }

      private function rutivur() : Vector.<Bymuwujez> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.bamudol.length;
         var _loc2_:Vector.<Bymuwujez> = new Vector.<Bymuwujez>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.bamudol[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }
   }
[/CLASS]
}