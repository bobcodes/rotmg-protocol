package zefyq
{
   import hunavefeg.Vupyga;
   import hunavefeg.Hyne;
   import daqun.Qobeta;
   import dyca.Mes;
   import gokyc.Cyn;
   import vakere.Moba;
   import vakere.AppEngineRequestStats;
   import vakere.Wiga;
   import gokyc.Rud;
   import vakere.Fosuqipev;
   import vakere.Kezap;


   public class Holila extends Object implements Vupyga
   {
      public function Holila() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const kirofo:Boolean = true;

      public var context:Hyne;

      public var setup:Qobeta;

      public var difas:Mes;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vunivahoz();
         if(this.setup.cezoli())
         {
            this.lugi();
         }
         else
         {
            if(this.kirofo)
            {
               this.lytahug();
            }
            else
            {
               this.ludehiwah();
            }
         }
         return;
      }

      private function vunivahoz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Cyn).qyfi(Moba);
         return;
      }

      private function lugi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(AppEngineRequestStats).fezy();
         this.difas.map(Wiga);
         this.difas.map(Rud).qyfi(Fosuqipev);
         return;
      }

      private function lytahug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Wiga);
         this.difas.map(Rud).qyfi(Kezap);
         return;
      }

      private function ludehiwah() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Rud).qyfi(Wiga);
         return;
      }
   }

}