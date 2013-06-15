package kaw
{
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;


   final class Jomedoku extends Object
   {
      function Jomedoku() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.pocoqa={};
         this.vyda={};
         return;
      }

      private var pocoqa:Object;

      private var vyda:Object;

      public function register(param1:String, param2:String, param3:Qanyduk) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.pocoqa[param1]=param3;
         this.vyda[param1]=param2;
         return;
      }

      public function piwabal() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>(0);
         for (_loc2_ in this.pocoqa)
         {
            _loc1_.push(_loc2_+" - "+this.vyda[_loc2_]);
         }
         return _loc1_;
      }

      public function execute(param1:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = param1.split(" ");
         if(_loc2_.length==0)
         {
            return;
         }
         var _loc3_:String = _loc2_.shift();
         var _loc4_:Qanyduk = this.pocoqa[_loc3_];
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

      public function porem(param1:String) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.split(" ");
         return _loc2_.length>0&&!(this.pocoqa[_loc2_[0]]==null);
      }
   }

}