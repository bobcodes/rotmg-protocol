package fulaw
{
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;


   public class Vihekivuc extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vihekivuc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const fogybym:int = 782;

      public const selected:Hugyqufyq = new Hugyqufyq(Jimi);

      private const map:Object = {};

      private const classes:Vector.<Jimi> = new Vector.<Jimi>(0);

      private var count:uint = 0;

      private var fobowo:Jimi;

      public function dymy() : uint {
         return this.count;
      }

      public function tonit(param1:int) : Jimi {
         return this.classes[param1];
      }

      public function lyt(param1:int) : Jimi {
         return this.map[param1]=(this.map[param1])||(this.tehukak());
      }

      private function tehukak() : Jimi {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Jimi = new Jimi();
         _loc1_.selected.add(this.huragyma);
         this.count=this.classes.push(_loc1_);
         return _loc1_;
      }

      private function huragyma(param1:Jimi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.fobowo!=param1)
         {
            this.fobowo=param1;
            this.selected.dispatch(param1);
         }
         return;
      }

      public function zega() : Jimi {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.fobowo)||(this.lyt(fogybym));
      }

      public function geqocigi(param1:int) : Dasin {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Dasin = null;
         var _loc3_:Jimi = null;
         for each (_loc3_ in this.classes)
         {
            _loc2_=_loc3_.socucu.sek(param1);
            if(_loc2_!=_loc3_.socucu.mucosahuh())
            {
               break;
            }
         }
         return _loc2_;
      }
   }

}