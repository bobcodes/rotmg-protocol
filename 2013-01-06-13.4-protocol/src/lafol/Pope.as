package lafol
{
[CLASS980]

   public class Pope extends Object
   {
      public function Pope(param1:int, param2:Class, param3:Function) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.type=param2;
         this.id=param1;
         this.callback=param3;
         return;
      }

      public var type:Class;

      public var callback:Function;

      public var id:int;

      private var tafumapoq:Zufadazi;

      private var count:int = 0;

      public function kuvodot(param1:int) : Pope {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Zufadazi = null;
         this.count=this.count+param1;
         while(param1--)
         {
            _loc2_=new this.type(this.id,this.callback);
            _loc2_.pool=this;
            _loc2_.syluget=this.tafumapoq;
            this.tafumapoq=_loc2_;
         }
         return this;
      }

      public function suqyz() : Zufadazi {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Zufadazi = this.tafumapoq;
         if(_loc1_)
         {
            this.tafumapoq=this.tafumapoq.syluget;
            _loc1_.syluget=null;
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

      public function volykatij() : int {
         return this.count;
      }

      function append(param1:Zufadazi) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.syluget=this.tafumapoq;
         this.tafumapoq=param1;
         return;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tafumapoq=null;
         return;
      }
   }
[/CLASS]
}