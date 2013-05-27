package sivopa
{
   import cuca.Fon;
   import cuca.Zykitu;
   import flash.utils.Dictionary;
   import laho.Lezihej;
   import cuca.Tekanoz;
   import laho.Bolyroty;


   public class Vefegit extends Object implements Fon, Zykitu
   {
      public function Vefegit(param1:Lezihej) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.hybosily=param1;
         return;
      }

      private const qydyd:Dictionary = new Dictionary();

      private var hybosily:Lezihej;

      public function bez(param1:Class) : Tekanoz {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.locked(this.qydyd[param1]))||(this.zeponohat(param1));
      }

      public function pyvofikik(param1:Class) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bolyroty = this.qydyd[param1];
         delete this.qydyd[[param1]];
         return;
      }

      public function takudiqa() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Bolyroty = null;
         for each (_loc1_ in this.qydyd)
         {
            this.hybosily.qukijyq(_loc1_);
            delete this.qydyd[[_loc1_.commandClass]];
         }
         return;
      }

      private function zeponohat(param1:Class) : Qiqafu {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Qiqafu = new Qiqafu(param1);
         this.hybosily.fibol(_loc2_);
         this.qydyd[param1]=_loc2_;
         return _loc2_;
      }

      private function locked(param1:Qiqafu) : Qiqafu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!param1)
         {
            return null;
         }
         param1.vowopuc();
         return param1;
      }
   }

}