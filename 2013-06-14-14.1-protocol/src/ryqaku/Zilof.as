package ryqaku
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import vyso.Sehorof;
   import daqun.Qobeta;
   import komi.Donok;
   import hivysif.Woqijofaj;
   import wulihyzo.Lybyr;
   import com.company.ui.Vovoj;
   import hivysif.Jej;
   import hivysif.Pyzykyj;
   import komi.Qog;
   import fuheqid.Walylezav;
   import komi.Fisoqozyt;


   public class Zilof extends Object implements Vupyga
   {
      public function Zilof() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var cew:Qobeta;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Donok).fezy();
         this.daqocotud();
         this.mediatorMap.map(Woqijofaj).lokiduf(Lybyr);
         this.mediatorMap.map(Vovoj).lokiduf(Jej);
         this.difas.map(Pyzykyj);
         return;
      }

      private function daqocotud() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.cew.kel())
         {
            this.difas.map(Qog).qyfi(Walylezav);
         }
         else
         {
            this.difas.map(Qog).wila(Fisoqozyt);
         }
         return;
      }
   }

}