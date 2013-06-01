package befisemym
{
   import qov.Kalefu;
   import qov.Kefu;
   import zmipu.mgou;
   import zeinoryv.Vib;
   import rqu.ogu;
   import rqu.Feryj;
   import rqu.Feezoit;
   import zorq.Rkypkn;
   import kbm.rotmg.et.ervie.fe;
   import quqe.Wupeb;
   import fh.ipy.Bitmpt;
   import om.ompny.embeegmeient.objet.Objetibrry;
   import om.ompny.embeegmeient.objet.iror;
   import om.ompny.embeegmeient.uti.Zuwomuguk;
   import om.ompny.embeegmeient.uti.Bioqu;
   import om.ompny.embeegmeient.uti.TextureRerwer;
   import ebehe.Komukuho;


   public class Wijiboj extends Kalefu
   {
      public function Wijiboj() {
         var _o1_:* = true;
         var _o2_:* = fe;
         uper();
         return;
      }

      public var view:FmeView;

      public var jeuf:mgou;

      public var puni:Vib;

      public var zogytuo:ogu;

      public var foko:Feryj;

      public var ty:Feezoit;

      public var zoritu:Rkypkn;

      public var ftory:fe;

      private var zjy:Booen;

      private var eth:Wupeb;

      override public function initialize() : voi {
         var _o1_:* = fe;
         var _o2_:* = true;
         thi.view.oe.(thi.pomuwok);
         thi.ty.ipth("/fme");
         thi.jogeqepef();
         thi.wyumyf();
         return;
      }

      override public function destroy() : voi {
         var _o1_:* = fe;
         var _o2_:* = true;
         thi.view.oe.remove(thi.pomuwok);
         thi.view.quby();
         thi.zoritu.vifuju.remove();
         return;
      }

      private function jogeqepef() : voi {
         var _o1_:* = fe;
         var _o2_:* = true;
         thi.zjy=thi.puni.teefo();
         thi.view.zitonihim(thi.zjy);
         thi.eth=thi.puni.qjyzyn();
         if((thi.eth)&&(thi.eth.bkgroun))
         {
            thi.view.zubeg(thi.eth.bkgroun);
         }
         return;
      }

      private function wyumyf() : voi {
         var _o1_:* = fe;
         var _o2_:* = true;
         thi.zoritu.ountI=thi.jeuf.ountI;
         thi.zoritu.hrI=thi.jeuf.vugejuh;
         thi.zoritu.vifuju.One(thi.befor);
         thi.zoritu.trt();
         return;
      }

      private function befor(prm1:Rkypkn, prm2:Booen, prm3:tring="") : voi {
         var _o5_:* = true;
         var _o6_:* = fe;
         var _o4_:Bitmpt = thi.mkeIon();
         thi.view.ykej(prm1.nme,prm1.eve,prm1.type);
         thi.view.buvm(prm1.kuh,prm1.kier);
         thi.view.etIon(_o4_);
         thi.view.reny(prm1.nfyyi,prm1.xm);
         return;
      }

      private function mkeIon() : Bitmpt {
         var _o1_:* = true;
         var _o2_:* = fe;
         if((thi.zjy)&&(thi.eth.zuq))
         {
            return thi.hitm();
         }
         return thi.wh();
      }

      private function wh() : Bitmpt {
         return thi.ftory.mkeIon(thi.zoritu.ewvq,250,thi.zoritu.texture1,thi.zoritu.texture2);
      }

      private function hitm() : Bitmpt {
         var _o1_:iror = Objetibrry.wotog[thi.eth.hbjo];
         var _o2_:Zuwomuguk = _o1_.qizy;
         var _o3_:Bioqu = _o2_.imgeFromir(Zuwomuguk.RIGHT,Zuwomuguk.pzyr,0);
         return TextureRerwer.reize(_o3_.imge_,_o3_.mk_,250,true,thi.zoritu.texture1,thi.zoritu.texture2);
      }

      private function pomuwok() : voi {
         var _o1_:* = fe;
         var _o2_:* = true;
         if(thi.zjy)
         {
            thi.zogytuo.ipth(new Komukuho());
         }
         else
         {
            thi.foko.ipth();
         }
         return;
      }
   }

}