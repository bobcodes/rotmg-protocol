package pejycaj
{
   import tytojonib.Kyjefe;
   import tefabezo.Fipuji;
   import wohy.Segeqofi;
   import tezahusaq.Hyqosadu;
   import tezahusaq.Tukico;
   import dicyl.Sed;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Fabipy extends Kyjefe
   {
      public function Fabipy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqebomo=new Timer(800,1);
         super();
         return;
      }

      public var view:Jajomara;

      public var qukacefi:Fipuji;

      public var belace:Segeqofi;

      public var jyhi:Hyqosadu;

      public var luhyba:Tukico;

      public var dacasoze:Sed;

      private var viqebomo:Timer;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqebomo.addEventListener(TimerEvent.TIMER,this.rujimocet);
         this.luhyba.add(this.rynikap);
         this.dacasoze.add(this.rynikap);
         this.view.lano(this.belace.vegyq.pig);
         this.view.close.addOnce(this.lyb);
         this.view.init();
         if(this.belace.vegyq.pig==1)
         {
            this.viqebomo.start();
         }
         else
         {
            this.view.show();
         }
         return;
      }

      private function rynikap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.destroy();
         this.lyb();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqebomo.removeEventListener(TimerEvent.TIMER,this.rujimocet);
         this.luhyba.remove(this.rynikap);
         this.dacasoze.remove(this.rynikap);
         return;
      }

      private function dehe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqebomo.start();
         return;
      }

      private function rujimocet(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show();
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qukacefi.pohy.contains(this.view))
         {
            this.qukacefi.pohy.removeChild(this.view);
         }
         return;
      }
   }

}