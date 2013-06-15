package dabepizyb
{
   import vyso.Vapuz;
   import gera.Jel;
   import donaqyzas.Zudezyc;
   import dumavap.Kowah;


   public class Qace extends Object implements Vapuz, Jel
   {
      public function Qace(param1:Kowah, param2:Class) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.daqofi=[];
         this.bydy=[];
         super();
         this._matcher=param1;
         this.mavezi=param2;
         return;
      }

      private var lyduvul:Boolean = false;

      private var bate:Zudezyc;

      private var _matcher:Kowah;

      public function get wef() : Kowah {
         return this._matcher;
      }

      private var mavezi:Class;

      public function get lezybyg() : Class {
         return this.mavezi;
      }

      private var daqofi:Array;

      public function get qegimabej() : Array {
         return this.daqofi;
      }

      private var bydy:Array;

      public function get dema() : Array {
         return this.bydy;
      }

      public function tasa(... rest) : Jel {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.daqofi=this.daqofi.concat.apply(null,rest);
         return this;
      }

      public function qomitu(... rest) : Jel {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bydy=this.bydy.concat.apply(null,rest);
         return this;
      }

      function luzej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.bate)
         {
            this.bate.luzej();
         }
         else
         {
            this.fopo();
         }
         this.daqofi=[];
         this.bydy=[];
         return;
      }

      public function fuhe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.bate)
         {
            this.fopo();
         }
         else
         {
            if(!this.bate.nohetuloh)
            {
               this.bate.fuhe(this.daqofi,this.bydy);
            }
         }
         return;
      }

      private function fopo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bate=new Zudezyc(this.daqofi.slice(),this.bydy.slice(),this._matcher,this.mavezi);
         return;
      }
   }

}