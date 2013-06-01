package few
{
[CLASS1796]   import sogi.Vydosyb;
   import lovika.Fabego;
   import sogi.Sisy;
   import fomykuq.Niw;


   public class Zadogyby extends Object implements Vydosyb, Fabego
   {
      public function Zadogyby(param1:Class) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gunewys=[];
         this.fah=[];
         super();
         this.tovade=param1;
         return;
      }

      private var tovade:Class;

      public function get commandClass() : Class {
         return this.tovade;
      }

      private var gunewys:Array;

      public function get kudav() : Array {
         return this.gunewys;
      }

      private var fah:Array;

      private var _once:Boolean;

      public function get mukig() : Array {
         return this.fah;
      }

      public function konalyhe(... rest) : Fabego {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gunewys=this.gunewys.concat.apply(null,rest);
         return this;
      }

      public function bavy(... rest) : Fabego {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fah=this.fah.concat.apply(null,rest);
         return this;
      }

      public function get mateqebew() : Boolean {
         return this._once;
      }

      public function once(param1:Boolean=true) : Fabego {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._once=param1;
         return this;
      }

      private var nyluvubim:Vydosyb;

      public function get next() : Vydosyb {
         return this.nyluvubim;
      }

      public function set next(param1:Vydosyb) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nyluvubim=param1;
         return;
      }

      private function laqimek(param1:String) : void {
         throw new Sisy(param1);
      }

      function bejony() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.conumo)
         {
            this.conumo.bejony();
         }
         else
         {
            this.puqi();
         }
         this.gunewys=[];
         this.fah=[];
         return;
      }

      public function vavog() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.conumo)
         {
            this.puqi();
         }
         else
         {
            if(!this.conumo.nah)
            {
               this.conumo.vavog(this.gunewys,this.fah);
            }
         }
         return;
      }

      private var conumo:Niw;

      private function puqi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.conumo=new Niw(this.gunewys.slice(),this.fah.slice(),null,this.tovade);
         return;
      }
   }
[/CLASS]
}