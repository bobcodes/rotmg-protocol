package rymuhuduh
{
[CLASS472]   import tysenyzy.Zovisis;
   import vinirudel.Wukyva;
   import nylos.Kyk;
   import guvakipe.Guc;
   import tusidywuq.Vut;
   import qypupet.Sikyvuvus;
   import com.company.assembleegameclient.objects.Player;
   import vinirudel.Zufu;
   import flash.display.DisplayObject;
   import daloraf.Humy;
   import com.company.assembleegameclient.util.Kevozavow;
   import com.company.assembleegameclient.map.Map;
   import jego.Ludiporos;
   import sanijijiz.Cilym;
   import kuzycyw.Mygisyqoc;
   import guvakipe.Decybuvy;


   public class Hykaj extends Zovisis
   {
      public function Hykaj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Beqalag;

      public var fysufapav:Wukyva;

      public var fyz:Kyk;

      public var tutel:Guc;

      public var cugaq:Vut;

      public var qidogy:Sikyvuvus;

      private var lyjycyv:Boolean = false;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fyz.addOnce(this.fej);
         this.view.fanytisyt.add(this.suleb);
         this.view.boqatocab.add(this.fylu);
         this.fyz.add(this.update);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.fanytisyt.remove(this.suleb);
         this.view.boqatocab.remove(this.fylu);
         this.fyz.remove(this.update);
         return;
      }

      private function fej(param1:Player) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Zufu = this.tutel.papuwar[this.view.position];
         var _loc3_:int = param1.getPotionCount(_loc2_.objectId);
         this.view.polaget(_loc3_,_loc2_.vuj(_loc3_),_loc2_.available,_loc2_.objectId);
         return;
      }

      private function update(param1:Player) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Zufu = null;
         var _loc3_:* = 0;
         if((this.view.objectType==Guc.deg||this.view.objectType==Guc.jypaluw)&&!this.lyjycyv)
         {
            _loc2_=this.tutel.ciwuta(this.view.objectType);
            _loc3_=param1.getPotionCount(_loc2_.objectId);
            this.view.polaget(_loc3_,_loc2_.vuj(_loc3_),_loc2_.available);
         }
         return;
      }

      private function suleb(param1:DisplayObject) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Humy = null;
         var _loc2_:Player = this.fysufapav.palaliz.map.player_;
         var _loc3_:* = Kevozavow.pojeni(param1,Humy,Map,Ludiporos);
         if(_loc3_ is Map)
         {
            Cilym.toryfuq.invDrop(_loc2_,Guc.zef(this.view.objectType),this.view.objectType);
         }
         else
         {
            if(_loc3_ is Humy)
            {
               _loc4_=_loc3_ as Humy;
               if(_loc4_.mymezit()==Mygisyqoc.kenyh&&!(_loc4_.kotifi.owner==_loc2_))
               {
                  Cilym.toryfuq.invSwapPotion(_loc2_,_loc2_,Guc.zef(this.view.objectType),this.view.objectType,_loc4_.kotifi.owner,_loc4_.nym,Mygisyqoc.kenyh);
               }
            }
         }
         return;
      }

      private function fylu() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Decybuvy = null;
         var _loc1_:Zufu = this.tutel.papuwar[this.view.position];
         if(_loc1_.available)
         {
            _loc2_=new Decybuvy(_loc1_.objectId,Decybuvy.wymyn);
            this.cugaq.dispatch(_loc2_);
         }
         return;
      }
   }
[/CLASS]
}