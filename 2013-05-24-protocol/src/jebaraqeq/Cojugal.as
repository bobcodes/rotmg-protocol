package jebaraqeq
{
   import komawowag.Net;
   import kyco.Nun;
   import komawowag.Tojilove;
   import komawowag.Becepog;
   import cuba.Waha;
   import komawowag.Bep;


   public class Cojugal extends Object implements Net
   {
      public function Cojugal() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.setup();
         return;
      }

      private const pub:Nun = new Nun();

      public function get cemohoqal() : Nun {
         return this.pub;
      }

      public function get hite() : uint {
         return this.wytoz.hite;
      }

      public function set hite(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wytoz.hite=param1;
         return;
      }

      private var sezuze:Rifyhyla;

      public function get fyf() : Tojilove {
         return this.sezuze;
      }

      private const rafegimak:String = Fivyjysej.create(Cojugal);

      private const wytoz:Pybe = new Pybe();

      private const mipela:Mus = new Mus();

      private var fuzivi:Wyhytu;

      private var qeru:Bunerazo;

      private var hycekuj:Becepog;

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sezuze.initialize();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sezuze.destroy();
         return;
      }

      public function extend(... rest) : Net {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.qeru.giqijabuf(_loc2_);
         }
         return this;
      }

      public function configure(... rest) : Net {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.fuzivi.nufynu(_loc2_);
         }
         return this;
      }

      public function syqesoliz(param1:Waha, param2:Function) : Net {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.fuzivi.syqesoliz(param1,param2);
         return this;
      }

      public function peroq(param1:Object) : Becepog {
         return this.wytoz.peroq(param1);
      }

      public function rutudamy(param1:Bep) : Net {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wytoz.rutudamy(param1);
         return this;
      }

      public function jatesyryh(... rest) : Net {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.mipela.jatesyryh(_loc2_);
         }
         return this;
      }

      public function release(... rest) : Net {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for each (_loc2_ in rest)
         {
            this.mipela.release(_loc2_);
         }
         return this;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pub.map(Nun).cufypy(this.pub);
         this.pub.map(Net).cufypy(this);
         this.hycekuj=this.wytoz.peroq(this);
         this.sezuze=new Rifyhyla(this);
         this.fuzivi=new Wyhytu(this);
         this.qeru=new Bunerazo(this);
         this.sezuze.fymer(this.fymer);
         this.sezuze.rewyji(this.rewyji);
         this.sezuze.fagufydy(this.fagufydy);
         this.sezuze.kanewyve(this.kanewyve);
         return;
      }

      private function fymer() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hycekuj.info("Initializing...");
         return;
      }

      private function rewyji() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hycekuj.info("Initialize complete");
         return;
      }

      private function fagufydy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hycekuj.info("Destroying...");
         return;
      }

      private function kanewyve() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mipela.flush();
         this.pub.kezitijan();
         this.hycekuj.info("Destroy complete");
         return;
      }
   }

}