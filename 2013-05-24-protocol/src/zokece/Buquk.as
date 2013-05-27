package zokece
{
   import tulunyno.Hugyqufyq;
   import damul.Qyfa;


   public class Buquk extends Object
   {
      public function Buquk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vehi=new Hugyqufyq();
         super();
         return;
      }

      public var momel:int = 0;

      public var vehi:Hugyqufyq;

      private var zujihataj:Object;

      private var initialized:Boolean;

      public function havuv() : Boolean {
         return this.initialized;
      }

      public function jejisud(param1:int) : Qyfa {
         return this.zujihataj[param1];
      }

      public function dypamo(param1:int) : Boolean {
         return param1 in this.zujihataj;
      }

      public function ziqyji(param1:Array) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Qyfa = null;
         this.zujihataj={};
         for each (_loc2_ in param1)
         {
            _loc2_.vehi.add(this.wor);
            this.zujihataj[_loc2_.packageID]=_loc2_;
         }
         this.initialized=true;
         this.vehi.dispatch();
         return;
      }

      private function wor() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vehi.dispatch();
         return;
      }

      public function hukim(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Qyfa = this.zujihataj[param1];
         return (_loc2_)&&(_loc2_.pyvo());
      }

      public function hihile() : Qyfa {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Qyfa = null;
         var _loc1_:Qyfa = null;
         for each (_loc2_ in this.zujihataj)
         {
            if(_loc1_==null||_loc2_.priority<_loc1_.priority)
            {
               _loc1_=_loc2_;
            }
         }
         return _loc2_;
      }

      public function hatud() : Boolean {
         return this.momel==0;
      }

      public function bojygira() : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Object = null;
         if(!(this.zujihataj hasNext _loc2_))
         {
            return false;
         }
         _loc1_=nextValue(_loc2_,_loc3_);
         return true;
      }
   }

}