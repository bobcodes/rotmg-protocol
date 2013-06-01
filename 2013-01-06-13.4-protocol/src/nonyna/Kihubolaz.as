package nonyna
{
[CLASS710]   import flash.display.Sprite;
   import com.company.assembleegameclient.util.offer.Offers;
   import helepebas.Wewizy;
   import __AS3__.vec.Vector;
   import civop.Qis;
   import com.company.assembleegameclient.util.offer.Offer;
   import flash.events.MouseEvent;
   import civop.Bymuwujez;
   import flash.display.DisplayObject;
   import kezafezad.Vinac;
   import lehih.Layout;


   public class Kihubolaz extends Sprite
   {
      public function Kihubolaz(param1:Offers, param2:Wewizy) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.cok=param1;
         this.config=param2;
         this.byhobo();
         this.qevury();
         this.seteqozev();
         return;
      }

      private var cok:Offers;

      private var config:Wewizy;

      private var gybu:Vector.<Qebawituk>;

      private var group:Qis;

      public function vewiciko() : Qebawituk {
         return this.group.docew() as Qebawituk;
      }

      private function byhobo() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = this.cok.offerList.length;
         this.gybu=new Vector.<Qebawituk>(_loc1_,true);
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.gybu[_loc2_]=this.hyfuweqa(this.cok.offerList[_loc2_]);
            _loc2_++;
         }
         return;
      }

      private function hyfuweqa(param1:Offer) : Qebawituk {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Qebawituk = new Qebawituk(param1,this.config);
         _loc2_.addEventListener(MouseEvent.CLICK,this.wyralovoz);
         addChild(_loc2_);
         return _loc2_;
      }

      private function wyralovoz(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bymuwujez = param1.currentTarget as Bymuwujez;
         this.group.setSelected(_loc2_.getValue());
         return;
      }

      private function qevury() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<DisplayObject> = this.sulaze();
         var _loc2_:Layout = new Vinac();
         _loc2_.qege(5);
         _loc2_.layout(_loc1_);
         return;
      }

      private function sulaze() : Vector.<DisplayObject> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.gybu.length;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.gybu[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      private function seteqozev() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vector.<Bymuwujez> = this.rutivur();
         this.group=new Qis(_loc1_);
         this.group.setSelected(this.gybu[0].getValue());
         return;
      }

      private function rutivur() : Vector.<Bymuwujez> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.gybu.length;
         var _loc2_:Vector.<Bymuwujez> = new Vector.<Bymuwujez>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.gybu[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      public function sujahos(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.gybu.length;
         while(_loc2_--)
         {
            this.gybu[_loc2_].showBonus(param1);
         }
         return;
      }
   }
[/CLASS]
}