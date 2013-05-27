package rajuhuvoja
{
   import bidav.Cijukuca;
   import vapydy.Gip;
   import jebaraqeq.Peqapo;
   import dasygu.Ceseto;


   public class Mif extends Object implements Cijukuca, Gip
   {
      public function Mif(param1:Ceseto, param2:Class) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.macil=[];
         this.qevyjesak=[];
         super();
         this._matcher=param1;
         this.faciwuwu=param2;
         return;
      }

      private var culymob:Boolean = false;

      private var jegunaf:Peqapo;

      private var _matcher:Ceseto;

      public function get judip() : Ceseto {
         return this._matcher;
      }

      private var faciwuwu:Class;

      public function get quguqo() : Class {
         return this.faciwuwu;
      }

      private var macil:Array;

      public function get jagytep() : Array {
         return this.macil;
      }

      private var qevyjesak:Array;

      public function get deh() : Array {
         return this.qevyjesak;
      }

      public function mitum(... rest) : Gip {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.macil=this.macil.concat.apply(null,rest);
         return this;
      }

      public function degu(... rest) : Gip {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qevyjesak=this.qevyjesak.concat.apply(null,rest);
         return this;
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

      private function mede() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jegunaf=new Peqapo(this.macil.slice(),this.qevyjesak.slice(),this._matcher,this.faciwuwu);
         return;
      }
   }

}