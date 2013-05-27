package rajuhuvoja
{
   import vapydy.Huji;
   import vapydy.Siluhul;
   import vapydy.Cederoz;
   import flash.utils.Dictionary;
   import dasygu.Ceseto;
   import bidav.Qawosir;
   import vapydy.Gip;
   import bidav.Cijukuca;


   public class Bavarin extends Object implements Huji, Siluhul, Cederoz
   {
      public function Bavarin(param1:Ceseto, param2:Qawosir) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this._matcher=param1;
         this._handler=param2;
         return;
      }

      private const qydyd:Dictionary = new Dictionary();

      private var _matcher:Ceseto;

      private var _handler:Qawosir;

      public function zusu(param1:Class) : Gip {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.qaf(param1))||(this.zeponohat(param1));
      }

      public function rag(param1:Class) : Cijukuca {
         return this.qydyd[param1];
      }

      public function mibywyh(param1:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cijukuca = this.qydyd[param1];
         delete this.qydyd[[param1]];
         this._handler.qukijyq(_loc2_);
         return;
      }

      public function durabyvy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Cijukuca = null;
         for each (_loc1_ in this.qydyd)
         {
            delete this.qydyd[[_loc1_.quguqo]];
            this._handler.qukijyq(_loc1_);
         }
         return;
      }

      private function zeponohat(param1:Class) : Mif {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Mif = new Mif(this._matcher,param1);
         this._handler.fibol(_loc2_);
         this.qydyd[param1]=_loc2_;
         return _loc2_;
      }

      private function qaf(param1:Class) : Mif {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Mif = this.qydyd[param1];
         if(_loc2_)
         {
            _loc2_.vowopuc();
         }
         return _loc2_;
      }
   }

}