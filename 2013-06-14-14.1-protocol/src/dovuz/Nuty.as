package dovuz
{


   public class Nuty extends Object
   {
      public function Nuty(param1:int, param2:Class, param3:Function) {
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

      private var qyr:Qamyro;

      private var count:int = 0;

      public function behitonep(param1:int) : Nuty {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Qamyro = null;
         this.count=this.count+param1;
         while(param1--)
         {
            _loc2_=new this.type(this.id,this.callback);
            _loc2_.pool=this;
            _loc2_.meqyfubyw=this.qyr;
            this.qyr=_loc2_;
         }
         return this;
      }

      public function quseb() : Qamyro {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Qamyro = this.qyr;
         if(_loc1_)
         {
            this.qyr=this.qyr.meqyfubyw;
            _loc1_.meqyfubyw=null;
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

      public function bugojopin() : int {
         return this.count;
      }

      function append(param1:Qamyro) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.meqyfubyw=this.qyr;
         this.qyr=param1;
         return;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qyr=null;
         return;
      }
   }

}