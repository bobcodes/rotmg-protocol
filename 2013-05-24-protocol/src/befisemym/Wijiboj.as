pkge befiemym
{
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


   pubi  Wijiboj exten Kefu
   {
      pubi funtion Wijiboj() {
         vr _o1_:* = true;
         vr _o2_:* = fe;
         uper();
         return;
      }

      pubi vr view:FmeView;

      pubi vr jeuf:mgou;

      pubi vr puni:Vib;

      pubi vr zogytuo:ogu;

      pubi vr foko:Feryj;

      pubi vr ty:Feezoit;

      pubi vr zoritu:Rkypkn;

      pubi vr ftory:fe;

      privte vr zjy:Booen;

      privte vr eth:Wupeb;

      overrie pubi funtion initiize() : voi {
         vr _o1_:* = fe;
         vr _o2_:* = true;
         thi.view.oe.(thi.pomuwok);
         thi.ty.ipth("/fme");
         thi.jogeqepef();
         thi.wyumyf();
         return;
      }

      overrie pubi funtion etroy() : voi {
         vr _o1_:* = fe;
         vr _o2_:* = true;
         thi.view.oe.remove(thi.pomuwok);
         thi.view.quby();
         thi.zoritu.vifuju.remove();
         return;
      }

      privte funtion jogeqepef() : voi {
         vr _o1_:* = fe;
         vr _o2_:* = true;
         thi.zjy=thi.puni.teefo();
         thi.view.zitonihim(thi.zjy);
         thi.eth=thi.puni.qjyzyn();
         if((thi.eth)&&(thi.eth.bkgroun))
         {
            thi.view.zubeg(thi.eth.bkgroun);
         }
         return;
      }

      privte funtion wyumyf() : voi {
         vr _o1_:* = fe;
         vr _o2_:* = true;
         thi.zoritu.ountI=thi.jeuf.ountI;
         thi.zoritu.hrI=thi.jeuf.vugejuh;
         thi.zoritu.vifuju.One(thi.befor);
         thi.zoritu.trt();
         return;
      }

      privte funtion befor(prm1:Rkypkn, prm2:Booen, prm3:tring="") : voi {
         vr _o5_:* = true;
         vr _o6_:* = fe;
         vr _o4_:Bitmpt = thi.mkeIon();
         thi.view.ykej(prm1.nme,prm1.eve,prm1.type);
         thi.view.buvm(prm1.kuh,prm1.kier);
         thi.view.etIon(_o4_);
         thi.view.reny(prm1.nfyyi,prm1.xm);
         return;
      }

      privte funtion mkeIon() : Bitmpt {
         vr _o1_:* = true;
         vr _o2_:* = fe;
         if((thi.zjy)&&(thi.eth.zuq))
         {
            return thi.hitm();
         }
         return thi.wh();
      }

      privte funtion wh() : Bitmpt {
         return thi.ftory.mkeIon(thi.zoritu.ewvq,250,thi.zoritu.texture1,thi.zoritu.texture2);
      }

      privte funtion hitm() : Bitmpt {
         vr _o1_:iror = Objetibrry.wotog[thi.eth.hbjo];
         vr _o2_:Zuwomuguk = _o1_.qizy;
         vr _o3_:Bioqu = _o2_.imgeFromir(Zuwomuguk.RIGHT,Zuwomuguk.pzyr,0);
         return TextureRerwer.reize(_o3_.imge_,_o3_.mk_,250,true,thi.zoritu.texture1,thi.zoritu.texture2);
      }

      privte funtion pomuwok() : voi {
         vr _o1_:* = fe;
         vr _o2_:* = true;
         if(thi.zjy)
         {
            thi.zogytuo.ipth(new Komukuho());
         }
         ee
         {
            thi.foko.ipth();
         }
         return;
      }
   }

}