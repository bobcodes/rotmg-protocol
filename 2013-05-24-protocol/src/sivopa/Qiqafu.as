package sivopa
{
   import laho.Bolyroty;
   import cuca.Tekanoz;
   import laho.Cur;
   import jebaraqeq.Peqapo;


   public class Qiqafu extends Object implements Bolyroty, Tekanoz
   {
      public function Qiqafu(param1:Class) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.macil=[];
         this.qevyjesak=[];
         super();
         this.pomife=param1;
         return;
      }

      private var pomife:Class;

      public function get commandClass() : Class {
         return this.pomife;
      }

      private var macil:Array;

      public function get jagytep() : Array {
         return this.macil;
      }

      private var qevyjesak:Array;

      private var _once:Boolean;

      public function get deh() : Array {
         return this.qevyjesak;
      }

      public function mitum(... rest) : Tekanoz {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.macil=this.macil.concat.apply(null,rest);
         return this;
      }

      public function degu(... rest) : Tekanoz {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qevyjesak=this.qevyjesak.concat.apply(null,rest);
         return this;
      }

      public function get tene() : Boolean {
         return this._once;
      }

      public function once(param1:Boolean=true) : Tekanoz {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._once=param1;
         return this;
      }

      private var wesev:Bolyroty;

      public function get next() : Bolyroty {
         return this.wesev;
      }

      public function set next(param1:Bolyroty) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wesev=param1;
         return;
      }

      private function taline(param1:String) : void {
         throw new Cur(param1);
      }

      function vowopuc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.jegunaf)
         {
            this.jegunaf.vowopuc();
         }
         else
         {
            this.mede();
         }
         this.macil=[];
         this.qevyjesak=[];
         return;
      }

      public function murus() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.jegunaf)
         {
            this.mede();
         }
         else
         {
            if(!this.jegunaf.ryfypa)
            {
               this.jegunaf.murus(this.macil,this.qevyjesak);
            }
         }
         return;
      }

      private var jegunaf:Peqapo;

      private function mede() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jegunaf=new Peqapo(this.macil.slice(),this.qevyjesak.slice(),null,this.pomife);
         return;
      }
   }

}