package haj
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import fanij.Cun;
   import micac.Josuba;
   import jediwip.Kybidu;
   import fanij.Wymove;
   import fanij.Sesegyfu;
   import fypeba.Zikorur;


   public class Jipehop extends Sprite
   {
      public function Jipehop() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nowyf=new Sprite();
         this.kez=Zikorur.guta(11776947,13,false);
         this.faluv=Zikorur.guta(11776947,15,true);
         this.muquw=Zikorur.guta(11776947,13,false);
         super();
         return;
      }

      public var niraco:Bitmap;

      private var nowyf:Sprite;

      public var kez:Guzowoja;

      private var faluv:Guzowoja;

      private var muquw:Guzowoja;

      private var petVO:Cun;

      public function init(param1:Cun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.petVO=param1;
         this.niraco=param1.vobydozid();
         this.jifajenuj();
         this.qetagu();
         this.lobola();
         this.sal();
         this.nowyf.name=Josuba.nigirof;
         param1.nuzum.add(this.zebemak);
         return;
      }

      private function zebemak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hylufo();
         this.kez.setStringBuilder(new Kybidu().setParams(this.petVO.laj()));
         return;
      }

      private function hylufo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nowyf.removeChild(this.niraco);
         this.niraco=this.petVO.vobydozid();
         this.nowyf.addChild(this.niraco);
         return;
      }

      private function qetagu() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:uint = 0;
         var _loc3_:Kovin = null;
         var _loc2_:uint = 3;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            _loc3_=new Kovin(this.petVO.supufo[_loc1_],171);
            _loc3_.x=3;
            _loc3_.y=72+17*_loc1_;
            this.nowyf.addChild(_loc3_);
            _loc1_++;
         }
         return;
      }

      private function zem() : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = this.petVO.laj()==Wymove.hov.value||this.petVO.laj()==Wymove.vikajy.value;
         if(_loc1_)
         {
            return 2;
         }
         return 3;
      }

      private function sal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.faluv.setStringBuilder(new Kybidu().setParams(this.petVO.getName()));
         this.kez.setStringBuilder(new Kybidu().setParams(this.petVO.laj()));
         this.muquw.setStringBuilder(new Kybidu().setParams(Sesegyfu.qir(this.petVO.piju())));
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nowyf.addChild(this.niraco);
         this.nowyf.addChild(this.faluv);
         this.nowyf.addChild(this.kez);
         this.nowyf.addChild(this.muquw);
         addChild(this.nowyf);
         return;
      }

      private function lobola() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.niraco.x=this.niraco.x-8;
         this.niraco.y=this.niraco.y-1;
         this.nowyf.x=7;
         this.nowyf.y=6;
         this.faluv.x=45;
         this.faluv.y=20;
         this.kez.x=45;
         this.kez.y=33;
         this.muquw.x=45;
         this.muquw.y=47;
         return;
      }
   }

}