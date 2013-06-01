package zozimuk
{
[CLASS172]   import tinava.Dab;
   import kuniv.Nogofado;


   public class Zuresasy extends Object
   {
      public function Zuresasy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zyte=new Dab();
         super();
         return;
      }

      public var nogy:int = 0;

      public var zyte:Dab;

      private var miwywy:Object;

      private var initialized:Boolean;

      public function qikit() : Boolean {
         return this.initialized;
      }

      public function napewyz(param1:int) : Nogofado {
         return this.miwywy[param1];
      }

      public function vuwyvij(param1:int) : Boolean {
         return param1 in this.miwywy;
      }

      public function vowofozi(param1:Array) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Nogofado = null;
         this.miwywy={};
         for each (_loc2_ in param1)
         {
            _loc2_.zyte.add(this.wopatazu);
            this.miwywy[_loc2_.packageID]=_loc2_;
         }
         this.initialized=true;
         this.zyte.dispatch();
         return;
      }

      private function wopatazu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zyte.dispatch();
         return;
      }

      public function cifog(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nogofado = this.miwywy[param1];
         return (_loc2_)&&(_loc2_.fuky());
      }

      public function luvyjimyv() : Nogofado {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Nogofado = null;
         var _loc1_:Nogofado = null;
         for each (_loc2_ in this.miwywy)
         {
            if(_loc1_==null||_loc2_.priority<_loc1_.priority)
            {
               _loc1_=_loc2_;
            }
         }
         return _loc2_;
      }

      public function cugeqe() : Boolean {
         return this.nogy==0;
      }

      public function tihuk() : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         if(!(this.miwywy hasNext _loc2_))
         {
            return false;
         }
         _loc1_=nextValue(_loc2_,_loc3_);
         return true;
      }
   }
[/CLASS]
}