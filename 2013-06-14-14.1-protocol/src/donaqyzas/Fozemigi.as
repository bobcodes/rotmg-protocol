package donaqyzas
{
   import hunavefeg.Hyne;
   import dyca.Mes;
   import hunavefeg.Ramiri;
   import hunavefeg.Depyrew;
   import buf.Dyn;
   import hunavefeg.Puka;


   public class Fozemigi extends Object implements Hyne
   {
      public function Fozemigi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.setup();
         return;
      }

      private const vybility:Mes = new Mes();

      public function get difas() : Mes {
         return this.vybility;
      }

      public function get cimopob() : uint {
         return this.pip.cimopob;
      }

      public function set cimopob(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pip.cimopob=param1;
         return;
      }

      private var kypiqow:Syqurovij;

      public function get wumeci() : Ramiri {
         return this.kypiqow;
      }

      private const mohabahi:String = Rabymuse.create(Fozemigi);

      private const pip:Zanuv = new Zanuv();

      private const rev:Nutig = new Nutig();

      private var qipisop:Cinyb;

      private var dili:Jeqo;

      private var nyti:Depyrew;

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kypiqow.initialize();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kypiqow.destroy();
         return;
      }

      public function extend(... rest) : Hyne {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.dili.tycomeku(_loc2_);
         }
         return this;
      }

      public function configure(... rest) : Hyne {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.qipisop.gaj(_loc2_);
         }
         return this;
      }

      public function bowetyg(param1:Dyn, param2:Function) : Hyne {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qipisop.bowetyg(param1,param2);
         return this;
      }

      public function jok(param1:Object) : Depyrew {
         return this.pip.jok(param1);
      }

      public function qoze(param1:Puka) : Hyne {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pip.qoze(param1);
         return this;
      }

      public function topelan(... rest) : Hyne {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.rev.topelan(_loc2_);
         }
         return this;
      }

      public function release(... rest) : Hyne {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.rev.release(_loc2_);
         }
         return this;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function setup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vybility.map(Mes).pylo(this.vybility);
         this.vybility.map(Hyne).pylo(this);
         this.nyti=this.pip.jok(this);
         this.kypiqow=new Syqurovij(this);
         this.qipisop=new Cinyb(this);
         this.dili=new Jeqo(this);
         this.kypiqow.tad(this.tad);
         this.kypiqow.pypygug(this.pypygug);
         this.kypiqow.rem(this.rem);
         this.kypiqow.zuso(this.zuso);
         return;
      }

      private function tad() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nyti.info("Initializing...");
         return;
      }

      private function pypygug() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nyti.info("Initialize complete");
         return;
      }

      private function rem() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nyti.info("Destroying...");
         return;
      }

      private function zuso() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rev.flush();
         this.vybility.rahy();
         this.nyti.info("Destroy complete");
         return;
      }
   }

}