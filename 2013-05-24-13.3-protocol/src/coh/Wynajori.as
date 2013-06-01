package coh
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import zoroc.Bezuco;
   import fom.Lihivak;
   import nec.Sire;
   import zoroc.Cikyzigit;
   import zoroc.Joqihi;
   import qucuqesif.Rasoqymi;


   public class Wynajori extends Sprite
   {
      public function Wynajori() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kahoned=new Sprite();
         this.dohadiri=Rasoqymi.tefyko(11776947,13,false);
         this.rij=Rasoqymi.tefyko(11776947,15,true);
         this.copyj=Rasoqymi.tefyko(11776947,13,false);
         super();
         return;
      }

      public var wum:Bitmap;

      private var kahoned:Sprite;

      public var dohadiri:Lufub;

      private var rij:Lufub;

      private var copyj:Lufub;

      private var petVO:Bezuco;

      public function init(param1:Bezuco) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.petVO=param1;
         this.wum=param1.sek();
         this.qohinep();
         this.nan();
         this.hezuc();
         this.ribipucow();
         this.kahoned.name=Lihivak.segogin;
         param1.tygyfizop.add(this.zogow);
         return;
      }

      private function zogow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gurimy();
         this.dohadiri.setStringBuilder(new Sire().setParams(this.petVO.morezo()));
         return;
      }

      private function gurimy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kahoned.removeChild(this.wum);
         this.wum=this.petVO.sek();
         this.kahoned.addChild(this.wum);
         return;
      }

      private function nan() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:uint = 0;
         var _loc3_:Dote = null;
         var _loc2_:uint = 3;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            _loc3_=new Dote(this.petVO.voqy[_loc1_],171);
            _loc3_.x=3;
            _loc3_.y=72+17*_loc1_;
            this.kahoned.addChild(_loc3_);
            _loc1_++;
         }
         return;
      }

      private function tujufaw() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.petVO.morezo()==Cikyzigit.luwilal.value||this.petVO.morezo()==Cikyzigit.tirik.value;
         if(_loc1_)
         {
            return 2;
         }
         return 3;
      }

      private function ribipucow() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rij.setStringBuilder(new Sire().setParams(this.petVO.getName()));
         this.dohadiri.setStringBuilder(new Sire().setParams(this.petVO.morezo()));
         this.copyj.setStringBuilder(new Sire().setParams(Joqihi.savi(this.petVO.vifuzuqyt())));
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kahoned.addChild(this.wum);
         this.kahoned.addChild(this.rij);
         this.kahoned.addChild(this.dohadiri);
         this.kahoned.addChild(this.copyj);
         addChild(this.kahoned);
         return;
      }

      private function hezuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wum.x=this.wum.x-8;
         this.wum.y=this.wum.y-1;
         this.kahoned.x=7;
         this.kahoned.y=6;
         this.rij.x=45;
         this.rij.y=20;
         this.dohadiri.x=45;
         this.dohadiri.y=33;
         this.copyj.x=45;
         this.copyj.y=47;
         return;
      }
   }

}