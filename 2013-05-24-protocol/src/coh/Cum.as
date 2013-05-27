package coh
{
   import povopito.Ryduwi;
   import flash.display.Sprite;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Luvu;
   import flash.display.Bitmap;
   import zoroc.Bezuco;
   import nec.Sire;
   import zoroc.Joqihi;
   import qucuqesif.Qemo;
   import zoroc.Vugusyqik;
   import zoroc.Cikyzigit;
   import qucuqesif.Rasoqymi;
   import fom.Lihivak;


   public class Cum extends Ryduwi
   {
      public function Cum(param1:Bezuco) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.petVO=param1;
         super(3552822,1,16777215,1,true);
         this.kahoned.name=Lihivak.segogin;
         return;
      }

      private const kahoned:Sprite = new Sprite();

      private const cimisyw:Lufub = Rasoqymi.tefyko(16777215,16,true);

      private const dohadiri:Lufub = Rasoqymi.tefyko(11776947,12,false);

      private const copyj:Lufub = Rasoqymi.tefyko(11776947,12,false);

      private const pulypyky:Luvu = Rasoqymi.comat();

      private var wum:Bitmap;

      private var petVO:Bezuco;

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wum=this.petVO.sek();
         this.qohinep();
         this.nan();
         this.hezuc();
         this.ribipucow();
         return;
      }

      private function ribipucow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cimisyw.setStringBuilder(new Sire().setParams(this.petVO.getName()));
         this.dohadiri.setStringBuilder(new Sire().setParams(this.petVO.morezo()));
         this.copyj.setStringBuilder(new Sire().setParams(Joqihi.savi(this.petVO.vifuzuqyt())));
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kahoned.graphics.beginFill(0,0.0);
         this.kahoned.graphics.drawRect(0,0,Qemo.fipam,Qemo.dis);
         this.kahoned.addChild(this.wum);
         this.kahoned.addChild(this.cimisyw);
         this.kahoned.addChild(this.dohadiri);
         this.kahoned.addChild(this.copyj);
         this.kahoned.addChild(this.pulypyky);
         addChild(this.kahoned);
         return;
      }

      private function nan() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = 0;
         var _loc3_:Vugusyqik = null;
         var _loc4_:Dote = null;
         var _loc2_:uint = 3;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            _loc3_=this.petVO.voqy[_loc1_];
            _loc4_=new Dote(_loc3_,174);
            _loc4_.x=8;
            _loc4_.y=86+17*_loc1_;
            this.kahoned.addChild(_loc4_);
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

      private function hezuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cimisyw.x=55;
         this.cimisyw.y=21;
         this.dohadiri.x=55;
         this.dohadiri.y=35;
         this.copyj.x=55;
         this.copyj.y=48;
         return;
      }
   }

}