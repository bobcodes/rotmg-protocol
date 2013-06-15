package haj
{
   import mavew.Qyryl;
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import flash.display.Bitmap;
   import fanij.Cun;
   import jediwip.Kybidu;
   import fanij.Sesegyfu;
   import fypeba.Rikuko;
   import fanij.Kyruha;
   import fanij.Wymove;
   import fypeba.Zikorur;
   import micac.Josuba;


   public class Cihoni extends Qyryl
   {
      public function Cihoni(param1:Cun) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.petVO=param1;
         super(3552822,1,16777215,1,true);
         this.nowyf.name=Josuba.nigirof;
         return;
      }

      private const nowyf:Sprite = new Sprite();

      private const gehovip:Guzowoja = Zikorur.guta(16777215,16,true);

      private const kez:Guzowoja = Zikorur.guta(11776947,12,false);

      private const muquw:Guzowoja = Zikorur.guta(11776947,12,false);

      private const lokuhov:Gymajyzu = Zikorur.wewal();

      private var niraco:Bitmap;

      private var petVO:Cun;

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.niraco=this.petVO.vobydozid();
         this.jifajenuj();
         this.qetagu();
         this.lobola();
         this.sal();
         return;
      }

      private function sal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gehovip.setStringBuilder(new Kybidu().setParams(this.petVO.getName()));
         this.kez.setStringBuilder(new Kybidu().setParams(this.petVO.laj()));
         this.muquw.setStringBuilder(new Kybidu().setParams(Sesegyfu.qir(this.petVO.piju())));
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nowyf.graphics.beginFill(0,0.0);
         this.nowyf.graphics.drawRect(0,0,Rikuko.bupak,Rikuko.lybyqevut);
         this.nowyf.addChild(this.niraco);
         this.nowyf.addChild(this.gehovip);
         this.nowyf.addChild(this.kez);
         this.nowyf.addChild(this.muquw);
         this.nowyf.addChild(this.lokuhov);
         addChild(this.nowyf);
         return;
      }

      private function qetagu() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = 0;
         var _loc3_:Kyruha = null;
         var _loc4_:Kovin = null;
         var _loc2_:uint = 3;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            _loc3_=this.petVO.supufo[_loc1_];
            _loc4_=new Kovin(_loc3_,174);
            _loc4_.x=8;
            _loc4_.y=86+17*_loc1_;
            this.nowyf.addChild(_loc4_);
            _loc1_++;
         }
         return;
      }

      private function zem() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.petVO.laj()==Wymove.hov.value||this.petVO.laj()==Wymove.vikajy.value;
         if(_loc1_)
         {
            return 2;
         }
         return 3;
      }

      private function lobola() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gehovip.x=55;
         this.gehovip.y=21;
         this.kez.x=55;
         this.kez.y=35;
         this.muquw.x=55;
         this.muquw.y=48;
         return;
      }
   }

}