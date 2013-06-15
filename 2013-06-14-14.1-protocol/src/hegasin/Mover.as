package hegasin
{
   import qypajun.Gaz;
   import fol.Cigofibad;
   import qypajun.Zofuhame;
   import donaqyzas.Zudezyc;


   public class Mover extends Object implements Gaz, Cigofibad
   {
      public function Mover(param1:Class) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.daqofi=[];
         this.bydy=[];
         super();
         this.movyny=param1;
         return;
      }

      private var movyny:Class;

      public function get commandClass() : Class {
         return this.movyny;
      }

      private var daqofi:Array;

      public function get qegimabej() : Array {
         return this.daqofi;
      }

      private var bydy:Array;

      private var _once:Boolean;

      public function get dema() : Array {
         return this.bydy;
      }

      public function tasa(... rest) : Cigofibad {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.daqofi=this.daqofi.concat.apply(null,rest);
         return this;
      }

      public function qomitu(... rest) : Cigofibad {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bydy=this.bydy.concat.apply(null,rest);
         return this;
      }

      public function get wokijyp() : Boolean {
         return this._once;
      }

      public function once(param1:Boolean=true) : Cigofibad {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._once=param1;
         return this;
      }

      private var lyriner:Gaz;

      public function get next() : Gaz {
         return this.lyriner;
      }

      public function set next(param1:Gaz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lyriner=param1;
         return;
      }

      private function dekejoh(param1:String) : void {
         throw new Zofuhame(param1);
      }

      function luzej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
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

      private var bate:Zudezyc;

      private function fopo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bate=new Zudezyc(this.daqofi.slice(),this.bydy.slice(),null,this.movyny);
         return;
      }
   }

}