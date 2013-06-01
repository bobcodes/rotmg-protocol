package rosebo
{
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;


   final class Hem extends Object
   {
      function Hem() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.kuqaqyq={};
         this.nogokaci={};
         return;
      }

      private var kuqaqyq:Object;

      private var nogokaci:Object;

      public function register(param1:String, param2:String, param3:Hugyqufyq) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.kuqaqyq[param1]=param3;
         this.nogokaci[param1]=param2;
         return;
      }

      public function nezuv() : Vector.<String> {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>(0);
         for (_loc2_ in this.kuqaqyq)
         {
            _loc1_.push(_loc2_+" - "+this.nogokaci[_loc2_]);
         }
         return _loc1_;
      }

      public function execute(param1:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split(" ");
         if(_loc2_.length==0)
         {
            return;
         }
         var _loc3_:String = _loc2_.shift();
         var _loc4_:Hugyqufyq = this.kuqaqyq[_loc3_];
         if(!_loc4_)
         {
            return;
         }
         if(_loc2_.length>0)
         {
            _loc4_.dispatch.apply(this,_loc2_.join(" ").split(","));
         }
         else
         {
            _loc4_.dispatch.apply(this);
         }
         return;
      }

      public function nomo(param1:String) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.split(" ");
         return _loc2_.length>0&&!(this.kuqaqyq[_loc2_[0]]==null);
      }
   }

}