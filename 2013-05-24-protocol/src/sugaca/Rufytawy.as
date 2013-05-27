package sugaca
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import rucag.Civiwo;
   import flash.net.Socket;
   import jypuq.Fyzukeha;
   import jypuq.Pyzokipu;
   import aaa.rotmg.net.RotMGNetworkHandler;


   public class Rufytawy extends Object implements Silikyta
   {
      public function Rufytawy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cemohoqal:Nun;

      private var hekyzuli:Civiwo;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hekyzuli=new Civiwo().setInjector(this.cemohoqal);
         this.cemohoqal.map(Socket);
         this.cemohoqal.map(Fyzukeha).cufypy(this.hekyzuli);
         this.cemohoqal.map(Pyzokipu).cufypy(this.hekyzuli);
         this.cemohoqal.map(RotMGNetworkHandler).pybe();
         return;
      }
   }

}