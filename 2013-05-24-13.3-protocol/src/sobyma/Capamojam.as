package sobyma
{
   import komawowag.Kaquhen;
   import kyco.Nun;
   import bidav.Duwuweb;
   import valatom.Bobibu;
   import rajuhuvoja.Qocy;
   import komawowag.Net;
   import bidav.Keho;
   import rajuhuvoja.Suloqoci;
   import rajuhuvoja.Bikila;
   import valatom.Nageqyned;
   import jebaraqeq.Fivyjysej;


   public class Capamojam extends Object implements Kaquhen
   {
      public function Capamojam() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Capamojam);

      private var pub:Nun;

      private var secoki:Duwuweb;

      private var mykyhagew:Bobibu;

      private var nawepe:Qocy;

      public function extend(param1:Net) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pub=param1.cemohoqal;
         this.pub.map(Keho).lyvov(Suloqoci);
         this.pub.map(Duwuweb).lyvov(Bikila);
         param1.fyf.fymer(this.fymer);
         param1.fyf.fagufydy(this.fagufydy);
         param1.fyf.mapuzojo(this.mapuzojo);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function fymer() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.secoki=this.pub.getInstance(Duwuweb);
         this.nawepe=this.pub.getInstance(Qocy);
         if(this.pub.lob(Bobibu))
         {
            this.mykyhagew=this.pub.getInstance(Bobibu);
            this.mykyhagew.dehy(this.secoki as Nageqyned);
         }
         return;
      }

      private function fagufydy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Keho = this.pub.getInstance(Keho);
         _loc1_.fyris();
         if(this.pub.lob(Bobibu))
         {
            this.mykyhagew=this.pub.getInstance(Bobibu);
            this.mykyhagew.woc(this.secoki as Nageqyned);
         }
         return;
      }

      private function mapuzojo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.pub.lob(Duwuweb))
         {
            this.pub.gukin(Duwuweb);
         }
         if(this.pub.lob(Keho))
         {
            this.pub.gukin(Keho);
         }
         return;
      }
   }

}