package dopacuhemo
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import dovuz.Vivajyp;
   import flash.net.Socket;
   import zugevygam.Hovogejyt;
   import zugevygam.Byty;
   import dovuz.Vagogi;


   public class Hogivefu extends Object implements Vupyga
   {
      public function Hogivefu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      private var rydalyl:Vivajyp;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rydalyl=new Vivajyp().setInjector(this.difas);
         this.difas.map(Socket);
         this.difas.map(Hovogejyt).pylo(this.rydalyl);
         this.difas.map(Byty).pylo(this.rydalyl);
         this.difas.map(Vagogi).fezy();
         return;
      }
   }

}