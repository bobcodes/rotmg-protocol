package fomykuq
{
[CLASS11]   import bikyvym.Cedymynet;
   import pogefeqeh.Wahovy;
   import bikyvym.Tysugujik;
   import bikyvym.Voduzak;
   import tecif.Kajehe;
   import bikyvym.Kynidamy;


   public class Gun extends Object implements Cedymynet
   {
      public function Gun() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.setup();
         return;
      }

      private const qod:Wahovy = new Wahovy();

      public function get viqelo() : Wahovy {
         return this.qod;
      }

      public function get zabyz() : uint {
         return this.najekig.zabyz;
      }

      public function set zabyz(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.najekig.zabyz=param1;
         return;
      }

      private var rot:Bupepi;

      public function get sutu() : Tysugujik {
         return this.rot;
      }

      private const pubutahic:String = Sedubali.create(Gun);

      private const najekig:Muvidy = new Muvidy();

      private const zano:Cykuq = new Cykuq();

      private var biwo:Zeso;

      private var hif:Lorykuqun;

      private var vuwir:Voduzak;

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rot.initialize();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rot.destroy();
         return;
      }

      public function extend(... rest) : Cedymynet {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.hif.hyjop(_loc2_);
         }
         return this;
      }

      public function configure(... rest) : Cedymynet {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.biwo.zet(_loc2_);
         }
         return this;
      }

      public function peq(param1:Kajehe, param2:Function) : Cedymynet {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.biwo.peq(param1,param2);
         return this;
      }

      public function diruboli(param1:Object) : Voduzak {
         return this.najekig.diruboli(param1);
      }

      public function lyrajiti(param1:Kynidamy) : Cedymynet {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.najekig.lyrajiti(param1);
         return this;
      }

      public function lysacy(... rest) : Cedymynet {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.zano.lysacy(_loc2_);
         }
         return this;
      }

      public function release(... rest) : Cedymynet {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.zano.release(_loc2_);
         }
         return this;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qod.map(Wahovy).zoru(this.qod);
         this.qod.map(Cedymynet).zoru(this);
         this.vuwir=this.najekig.diruboli(this);
         this.rot=new Bupepi(this);
         this.biwo=new Zeso(this);
         this.hif=new Lorykuqun(this);
         this.rot.ton(this.ton);
         this.rot.kan(this.kan);
         this.rot.dypegu(this.dypegu);
         this.rot.bijyfopuw(this.bijyfopuw);
         return;
      }

      private function ton() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuwir.info("Initializing...");
         return;
      }

      private function kan() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuwir.info("Initialize complete");
         return;
      }

      private function dypegu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuwir.info("Destroying...");
         return;
      }

      private function bijyfopuw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zano.flush();
         this.qod.sapolo();
         this.vuwir.info("Destroy complete");
         return;
      }
   }
[/CLASS]
}