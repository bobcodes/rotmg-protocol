package gib
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.util.offer.Offers;
   import nasokuqa.Myky;
   import __AS3__.vec.Vector;
   import cadawowy.Gizafuf;
   import com.company.assembleegameclient.util.offer.Offer;
   import flash.events.MouseEvent;
   import cadawowy.Kacyhoty;
   import flash.display.DisplayObject;
   import tif.Hokizeka;
   import wujahega.Layout;


   public class Cipyta extends Sprite
   {
      public function Cipyta(param1:Offers, param2:Myky) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.mynuroqyl=param1;
         this.config=param2;
         this.mofadoho();
         this.biqidil();
         this.vefeg();
         return;
      }

      private var mynuroqyl:Offers;

      private var config:Myky;

      private var setomuzu:Vector.<Refy>;

      private var group:Gizafuf;

      public function rakuqy() : Refy {
         return this.group.zega() as Refy;
      }

      private function mofadoho() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.mynuroqyl.offerList.length;
         this.setomuzu=new Vector.<Refy>(_loc1_,true);
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.setomuzu[_loc2_]=this.jidyved(this.mynuroqyl.offerList[_loc2_]);
            _loc2_++;
         }
         return;
      }

      private function jidyved(param1:Offer) : Refy {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Refy = new Refy(param1,this.config);
         _loc2_.addEventListener(MouseEvent.CLICK,this.pamucelo);
         addChild(_loc2_);
         return _loc2_;
      }

      private function pamucelo(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Kacyhoty = param1.currentTarget as Kacyhoty;
         this.group.setSelected(_loc2_.getValue());
         return;
      }

      private function biqidil() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<DisplayObject> = this.johy();
         var _loc2_:Layout = new Hokizeka();
         _loc2_.gynivy(5);
         _loc2_.layout(_loc1_);
         return;
      }

      private function johy() : Vector.<DisplayObject> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.setomuzu.length;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.setomuzu[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      private function vefeg() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<Kacyhoty> = this.rycupeze();
         this.group=new Gizafuf(_loc1_);
         this.group.setSelected(this.setomuzu[0].getValue());
         return;
      }

      private function rycupeze() : Vector.<Kacyhoty> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.setomuzu.length;
         var _loc2_:Vector.<Kacyhoty> = new Vector.<Kacyhoty>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.setomuzu[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      public function nutawic(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.setomuzu.length;
         while(_loc2_--)
         {
            this.setomuzu[_loc2_].showBonus(param1);
         }
         return;
      }
   }

}