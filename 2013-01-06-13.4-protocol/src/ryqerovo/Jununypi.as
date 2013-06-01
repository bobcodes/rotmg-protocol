package ryqerovo
{
[CLASS1799]   import wufyba.Hifo;
   import fimikibeg.Qebepu;
   import fomykuq.Niw;
   import doganovide.Symyniwe;


   public class Jununypi extends Object implements Hifo, Qebepu
   {
      public function Jununypi(param1:Symyniwe, param2:Class) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.gunewys=[];
         this.fah=[];
         super();
         this._matcher=param1;
         this.rorosuwa=param2;
         return;
      }

      private var qawi:Boolean = false;

      private var conumo:Niw;

      private var _matcher:Symyniwe;

      public function get jipini() : Symyniwe {
         return this._matcher;
      }

      private var rorosuwa:Class;

      public function get majy() : Class {
         return this.rorosuwa;
      }

      private var gunewys:Array;

      public function get kudav() : Array {
         return this.gunewys;
      }

      private var fah:Array;

      public function get mukig() : Array {
         return this.fah;
      }

      public function konalyhe(... rest) : Qebepu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gunewys=this.gunewys.concat.apply(null,rest);
         return this;
      }

      public function bavy(... rest) : Qebepu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fah=this.fah.concat.apply(null,rest);
         return this;
      }

      function bejony() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
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

      private function puqi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.conumo=new Niw(this.gunewys.slice(),this.fah.slice(),this._matcher,this.rorosuwa);
         return;
      }
   }
[/CLASS]
}