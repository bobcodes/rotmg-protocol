package rucag
{


   public class Vavoh extends Object
   {
      public function Vavoh(param1:int, param2:Class, param3:Function) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.type=param2;
         this.id=param1;
         this.callback=param3;
         return;
      }

      public var type:Class;

      public var callback:Function;

      public var id:int;

      private var wukycasew:NetworkMessage;

      private var count:int = 0;

      public function vazame(param1:int) : Vavoh {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:NetworkMessage = null;
         this.count=this.count+param1;
         while(param1--)
         {
            _loc2_=new this.type(this.id,this.callback);
            _loc2_.pool=this;
            _loc2_.wacumod=this.wukycasew;
            this.wukycasew=_loc2_;
         }
         return this;
      }

      public function runozak() : NetworkMessage {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:NetworkMessage = this.wukycasew;
         if(_loc1_)
         {
            this.wukycasew=this.wukycasew.wacumod;
            _loc1_.wacumod=null;
            _loc1_.next=null;
         }
         else
         {
            _loc1_=new this.type(this.id,this.callback);
            _loc1_.pool=this;
            this.count++;
         }
         return _loc1_;
      }

      public function dymy() : int {
         return this.count;
      }

      function append(param1:NetworkMessage) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.wacumod=this.wukycasew;
         this.wukycasew=param1;
         return;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wukycasew=null;
         return;
      }
   }

}