package gukite
{
[CLASS1678]   import tinava.Dab;
   import __AS3__.vec.Vector;


   final class Vahyfe extends Object
   {
      function Vahyfe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.cepy={};
         this.vuqem={};
         return;
      }

      private var cepy:Object;

      private var vuqem:Object;

      public function register(param1:String, param2:String, param3:Dab) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.cepy[param1]=param3;
         this.vuqem[param1]=param2;
         return;
      }

      public function tyhumusak() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>(0);
         for (_loc2_ in this.cepy)
         {
            _loc1_.push(_loc2_+" - "+this.vuqem[_loc2_]);
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
         var _loc4_:Dab = this.cepy[_loc3_];
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

      public function kynig(param1:String) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.split(" ");
         return _loc2_.length>0&&!(this.cepy[_loc2_[0]]==null);
      }
   }
[/CLASS]
}