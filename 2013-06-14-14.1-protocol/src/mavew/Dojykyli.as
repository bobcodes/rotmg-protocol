package mavew
{
   import fihur.Qudicy;
   import fihur.GeneralProjectileComparison;
   import fihur.Pinygy;
   import pilage.Tope;
   import fihur.Kumo;
   import fihur.Wufu;
   import fihur.Jova;
   import fihur.Kacopil;
   import fihur.Huzicyrek;
   import fihur.Ryfak;
   import fihur.Hitino;
   import fihur.PoisonComparison;
   import fihur.Nefizalok;
   import fihur.Dugygonek;
   import fihur.Salaq;
   import fihur.Pas;
   import fihur.Herizeju;


   public class Dojykyli extends Object
   {
      public function Dojykyli() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         var _loc1_:GeneralProjectileComparison = new GeneralProjectileComparison();
         var _loc2_:Pinygy = new Pinygy();
         this.hash={};
         this.hash[Tope.kykeb]=_loc1_;
         this.hash[Tope.valasu]=_loc1_;
         this.hash[Tope.dof]=_loc1_;
         this.hash[Tope.nuzebu]=new Kumo();
         this.hash[Tope.juna]=new Wufu();
         this.hash[Tope.nuvep]=_loc2_;
         this.hash[Tope.ceci]=_loc2_;
         this.hash[Tope.pyfisete]=_loc1_;
         this.hash[Tope.bajuqesu]=new Jova();
         this.hash[Tope.nona]=new Kacopil();
         this.hash[Tope.qiw]=new Huzicyrek();
         this.hash[Tope.waca]=_loc2_;
         this.hash[Tope.das]=new Ryfak();
         this.hash[Tope.rolyl]=new Hitino();
         this.hash[Tope.pevyb]=_loc1_;
         this.hash[Tope.juse]=new PoisonComparison();
         this.hash[Tope.gose]=new Nefizalok();
         this.hash[Tope.zuribygi]=new Dugygonek();
         this.hash[Tope.pul]=new Salaq();
         this.hash[Tope.jegysyh]=new Pas();
         this.hash[Tope.rypuwoqid]=new Herizeju();
         this.hash[Tope.vabyjyf]=_loc1_;
         this.hash[Tope.luliqiky]=_loc1_;
         return;
      }

      private var hash:Object;

      public function ActionMapperAbstractopizu(param1:XML, param2:XML) : Wyceja {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = int(param1.SlotType);
         var _loc4_:Qudicy = this.hash[_loc3_];
         var _loc5_:Wyceja = new Wyceja();
         if(_loc4_!=null)
         {
            _loc4_.sokaqobod(param1,param2);
            _loc5_.begiqo=_loc4_.bycavima;
            _loc5_.lor=_loc4_.lor;
         }
         return _loc5_;
      }
   }

}