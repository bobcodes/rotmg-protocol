package zekeqa
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.util.offer.Offers;
   import kylelimib.Cygusupu;
   import __AS3__.vec.Vector;
   import tyk.Bujyqap;
   import com.company.assembleegameclient.util.offer.Offer;
   import flash.events.MouseEvent;
   import tyk.Tidys;
   import flash.display.DisplayObject;
   import pokaceseb.Tuk;
   import typoc.Layout;


   public class Zuv extends Sprite
   {
      public function Zuv(param1:Offers, param2:Cygusupu) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.puputazes=param1;
         this.config=param2;
         this.jotipuk();
         this.komadefu();
         this.wacym();
         return;
      }

      private var puputazes:Offers;

      private var config:Cygusupu;

      private var kimice:Vector.<Senika>;

      private var group:Bujyqap;

      public function cepite() : Senika {
         return this.group.gype() as Senika;
      }

      private function jotipuk() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.puputazes.offerList.length;
         this.kimice=new Vector.<Senika>(_loc1_,true);
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.kimice[_loc2_]=this.caqysygyt(this.puputazes.offerList[_loc2_]);
            _loc2_++;
         }
         return;
      }

      private function caqysygyt(param1:Offer) : Senika {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Senika = new Senika(param1,this.config);
         _loc2_.addEventListener(MouseEvent.CLICK,this.tyhecete);
         addChild(_loc2_);
         return _loc2_;
      }

      private function tyhecete(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Tidys = param1.currentTarget as Tidys;
         this.group.setSelected(_loc2_.getValue());
         return;
      }

      private function komadefu() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<DisplayObject> = this.tasecapa();
         var _loc2_:Layout = new Tuk();
         _loc2_.wysycoviw(5);
         _loc2_.layout(_loc1_);
         return;
      }

      private function tasecapa() : Vector.<DisplayObject> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.kimice.length;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.kimice[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      private function wacym() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vector.<Tidys> = this.lovyv();
         this.group=new Bujyqap(_loc1_);
         this.group.setSelected(this.kimice[0].getValue());
         return;
      }

      private function lovyv() : Vector.<Tidys> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.kimice.length;
         var _loc2_:Vector.<Tidys> = new Vector.<Tidys>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.kimice[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      public function jaqi(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.kimice.length;
         while(_loc2_--)
         {
            this.kimice[_loc2_].showBonus(param1);
         }
         return;
      }
   }

}