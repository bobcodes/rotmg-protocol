package povopito
{
   import sima.Mubij;
   import sima.GeneralProjectileComparison;
   import sima.Cupodute;
   import pirus.Vimaz;
   import sima.Syhiket;
   import sima.Wovahyki;
   import sima.Hidym;
   import sima.Mef;
   import sima.Mojyv;
   import sima.Sahyrihum;
   import sima.Vevoqitiw;
   import sima.PoisonComparison;
   import sima.Dazubiwyp;
   import sima.Redelewut;
   import sima.Wubakeqyz;
   import sima.Jilipo;
   import sima.Petugaqat;


   public class Vopiju extends Object
   {
      public function Vopiju() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         var _loc1_:GeneralProjectileComparison = new GeneralProjectileComparison();
         var _loc2_:Cupodute = new Cupodute();
         this.hash={};
         this.hash[Vimaz.bygevopij]=_loc1_;
         this.hash[Vimaz.cipyke]=_loc1_;
         this.hash[Vimaz.roget]=_loc1_;
         this.hash[Vimaz.decadefah]=new Syhiket();
         this.hash[Vimaz.gipisonyl]=new Wovahyki();
         this.hash[Vimaz.ponuv]=_loc2_;
         this.hash[Vimaz.sareke]=_loc2_;
         this.hash[Vimaz.qudebuly]=_loc1_;
         this.hash[Vimaz.colalaw]=new Hidym();
         this.hash[Vimaz.jofew]=new Mef();
         this.hash[Vimaz.mologud]=new Mojyv();
         this.hash[Vimaz.varyrivi]=_loc2_;
         this.hash[Vimaz.jahapyqud]=new Sahyrihum();
         this.hash[Vimaz.virega]=new Vevoqitiw();
         this.hash[Vimaz.habepejo]=_loc1_;
         this.hash[Vimaz.pebudilub]=new PoisonComparison();
         this.hash[Vimaz.cowad]=new Dazubiwyp();
         this.hash[Vimaz.gyronahi]=new Redelewut();
         this.hash[Vimaz.raneniwe]=new Wubakeqyz();
         this.hash[Vimaz.tidybiqi]=new Jilipo();
         this.hash[Vimaz.feloj]=new Petugaqat();
         this.hash[Vimaz.vagaf]=_loc1_;
         this.hash[Vimaz.jabuvaf]=_loc1_;
         return;
      }

      private var hash:Object;

      public function haryhahed(param1:XML, param2:XML) : Holamoraq {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:int = int(param1.SlotType);
         var _loc4_:Mubij = this.hash[_loc3_];
         var _loc5_:Holamoraq = new Holamoraq();
         if(_loc4_!=null)
         {
            _loc4_.bynuqome(param1,param2);
            _loc5_.hicawel=_loc4_.foqub;
            _loc5_.gawoc=_loc4_.gawoc;
         }
         return _loc5_;
      }
   }

}