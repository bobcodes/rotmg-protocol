package car
{
   import mukyrosu.Qanyduk;
   import wavybyjec.Sucy;


   public class Levoge extends Object
   {
      public function Levoge() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zolevotid=new Qanyduk();
         super();
         return;
      }

      public var numadydyp:int = 0;

      public var zolevotid:Qanyduk;

      private var kydeho:Object;

      private var initialized:Boolean;

      public function qycybewo() : Boolean {
         return this.initialized;
      }

      public function deli(param1:int) : Sucy {
         return this.kydeho[param1];
      }

      public function kusycim(param1:int) : Boolean {
         return param1 in this.kydeho;
      }

      public function lykunaz(param1:Array) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Sucy = null;
         this.kydeho={};
         for each (_loc2_ in param1)
         {
            _loc2_.zolevotid.add(this.qok);
            this.kydeho[_loc2_.packageID]=_loc2_;
         }
         this.initialized=true;
         this.zolevotid.dispatch();
         return;
      }

      private function qok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zolevotid.dispatch();
         return;
      }

      public function wuwiv(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sucy = this.kydeho[param1];
         return (_loc2_)&&(_loc2_.runytimi());
      }

      public function ripazys() : Sucy {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Sucy = null;
         var _loc1_:Sucy = null;
         for each (_loc2_ in this.kydeho)
         {
            if(_loc1_==null||_loc2_.priority<_loc1_.priority)
            {
               _loc1_=_loc2_;
            }
         }
         return _loc2_;
      }

      public function rikah() : Boolean {
         return this.numadydyp==0;
      }

      public function cizovira() : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         if(!(this.kydeho hasNext _loc2_))
         {
            return false;
         }
         _loc1_=nextValue(_loc2_,_loc3_);
         return true;
      }
   }

}